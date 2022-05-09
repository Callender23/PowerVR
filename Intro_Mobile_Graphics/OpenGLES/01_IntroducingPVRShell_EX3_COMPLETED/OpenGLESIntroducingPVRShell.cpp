/*!*********************************************************************************************************************
\File         OpenGLESIntroducingPVRShell.cpp
\Title        Introduces PVRShell
\Author       PowerVR by Imagination, Developer Technology Team
\Copyright    Copyright (c) Imagination Technologies Limited.
\brief        Shows how to use the PowerVR framework for initialization. This framework allows platform abstraction so applications
			  using it will work on any PowerVR enabled device.
***********************************************************************************************************************/

/*
* The PowerVR Shell
* ===========================

The PowerVR shell handles all OS specific initialisation code, and is
extremely convenient for writing portable applications. It also has
several built in command line features, which allow you to specify
attributes like the backbuffer size, vsync and antialiasing modes.

The code is constructed around a "PVRShell" superclass. You must define
your app using a class which inherits from this, which should implement
the following five methods, (which at execution time are essentially
called in the order in which they are listed):

initApplication:  This is called before any API initialisation has
taken place, and can be used to set up any application data which does
not require API calls, for example object positions, or arrays containing
vertex data, before they are uploaded.

initView: This is called after the API has initialized, and can be
used to do any remaining initialisation which requires API functionality.
In this app, it is used to upload the vertex data.

renderFrame:  This is called repeatedly to draw the geometry. Returning
false from this function instructs the app to enter the quit sequence:

releaseView:  This function is called before the API is released, and
is used to release any API resources. In this app, it releases the
vertex buffer.

quitApplication:  This is called last of all, after the API has been
released, and can be used to free any leftover user allocated memory.

The shell framework starts the application by calling a "NewDemo" function,
which must return an instance of the PVRShell class you defined. We will
now use the shell to create a "Hello triangle" app, similar to the previous
one.

*/
#include "PVRShell/PVRShell.h"
#include "EglContext.h"
#include "Triangle.h"

// Index to bind the attributes to vertex shaders
const uint32_t VertexArray = 0;

/*!*********************************************************************************************************************
 To use the shell, you have to inherit a class from PVRShell
 and implement the five virtual functions which describe how your application initializes, runs and releases the resources.
***********************************************************************************************************************/
class OpenGLESIntroducingPVRShell : public pvr::Shell
{
	EglContext _context;
	// The vertex and fragment shader OpenGL handles
	uint32_t _vertexShader, _fragShader;

	// The program object containing the 2 shader objects
	uint32_t _program;

	// Triangle
	Triangle _triangle;
	Triangle _triangle2;

public:
	// following function must be override
	virtual pvr::Result initApplication();
	virtual pvr::Result initView();
	virtual pvr::Result renderFrame();
	virtual pvr::Result releaseView();
	virtual pvr::Result quitApplication();
};

/*!*********************************************************************************************************************
\return Return Result::Success if no error occurred
\brief  Code in initApplication() will be called by pvr::Shell once per run, before the rendering context is created.
	Used to initialize variables that are not dependent on it (e.g. external modules, loading meshes, etc.)
	If the rendering context is lost, initApplication() will not be called again.
***********************************************************************************************************************/
pvr::Result OpenGLESIntroducingPVRShell::initApplication()
{
	_triangle.SetPosition(-0.5f, 0.0f, 0.0f);
	_triangle2.SetPosition(0.5f, 0.0f, 0.0f);

	setBackBufferColorspace(pvr::ColorSpace::lRGB);
	// Here we are setting the value to lRGB for simplicity: We are working directly with sRGB values in our textures
	// and passing them through.
	// Note, the default for PVRShell is sRGB: when doing anything but the most simplistic effects, you will need to
	// work with linear values in the shaders and then either perform gamma correction in the shader, or (if supported)
	// use an sRGB framebuffer (which performs this correction automatically).
	return pvr::Result::Success;
}

/*!*********************************************************************************************************************
\return Return Result::Success if no error occurred
\brief  Code in quitApplication() will be called by pvr::Shell once per run, just before exiting the program.
		If the rendering context is lost, QuitApplication() will not be called.
***********************************************************************************************************************/
pvr::Result OpenGLESIntroducingPVRShell::quitApplication()
{
	return pvr::Result::Success;
}

/*!*********************************************************************************************************************
\return Return Result::Success if no error occured
\brief  Code in initView() will be called by pvr::Shell upon initialization or after a change in the rendering context.
	Used to initialize variables that are dependant on the rendering context (e.g. textures, vertex buffers, etc.)
***********************************************************************************************************************/
pvr::Result OpenGLESIntroducingPVRShell::initView()
{
	// Initialize the PowerVR OpenGL bindings. Must be called before using any of the gl:: commands.
	_context.init(getWindow(), getDisplay(), getDisplayAttributes());

	// Fragment and vertex shaders code
	const char* pszFragShader = "\
		void main (void)\
		{\
			gl_FragColor = vec4(1.0, 1.0, 0.66  ,1.0);\
		}";

	const char* pszVertShader = "\
		attribute highp vec4	myVertex;\
		uniform mediump mat4	myPMVMatrix;\
		void main(void)\
		{\
			gl_Position = myPMVMatrix * myVertex;\
		}";

	// Create the fragment shader object
	_fragShader = gl::CreateShader(GL_FRAGMENT_SHADER);

	// Load the source code into it
	gl::ShaderSource(_fragShader, 1, (const char**)&pszFragShader, NULL);

	// Compile the source code
	gl::CompileShader(_fragShader);

	// Check if compilation succeeded
	int32_t bShaderCompiled;
	gl::GetShaderiv(_fragShader, GL_COMPILE_STATUS, &bShaderCompiled);
	if (!bShaderCompiled)
	{
		// An error happened, first retrieve the length of the log message
		int infoLogLength, numCharsWritten;
		gl::GetShaderiv(_fragShader, GL_INFO_LOG_LENGTH, &infoLogLength);

		// Allocate enough space for the message and retrieve it
		std::vector<char> infoLog;
		infoLog.resize(infoLogLength);
		gl::GetShaderInfoLog(_fragShader, infoLogLength, &numCharsWritten, infoLog.data());

		//  Displays the message in a dialog box when the application quits
		//  using the shell PVRShellSet function with first parameter prefExitMessage.
		std::string message("Failed to compile fragment shader: ");
		message += infoLog.data();
		this->setExitMessage(message.c_str());
		return pvr::Result::UnknownError;
	}

	// Loads the vertex shader in the same way
	_vertexShader = gl::CreateShader(GL_VERTEX_SHADER);
	gl::ShaderSource(_vertexShader, 1, (const char**)&pszVertShader, NULL);
	gl::CompileShader(_vertexShader);
	gl::GetShaderiv(_vertexShader, GL_COMPILE_STATUS, &bShaderCompiled);
	if (!bShaderCompiled)
	{
		int infoLogLength, numCharsWritten;
		gl::GetShaderiv(_vertexShader, GL_INFO_LOG_LENGTH, &infoLogLength);

		std::vector<char> infoLog;
		infoLog.resize(infoLogLength);
		gl::GetShaderInfoLog(_vertexShader, infoLogLength, &numCharsWritten, infoLog.data());

		std::string message("Failed to compile vertex shader: ");
		message += infoLog.data();
		this->setExitMessage(message.c_str());
		return pvr::Result::UnknownError;
	}

	// Create the shader program
	_program = gl::CreateProgram();

	// Attach the fragment and vertex shaders to it
	gl::AttachShader(_program, _fragShader);
	gl::AttachShader(_program, _vertexShader);

	// Bind the custom vertex attribute "myVertex" to location VERTEX_ARRAY
	gl::BindAttribLocation(_program, VertexArray, "myVertex");

	// Link the program
	gl::LinkProgram(_program);

	// Check if linking succeeded in the same way we checked for compilation success
	int32_t bLinked;
	gl::GetProgramiv(_program, GL_LINK_STATUS, &bLinked);
	if (!bLinked)
	{
		int infoLogLength, numCharsWritten;
		gl::GetProgramiv(_program, GL_INFO_LOG_LENGTH, &infoLogLength);
		std::vector<char> infoLog;
		infoLog.resize(infoLogLength);
		gl::GetProgramInfoLog(_program, infoLogLength, &numCharsWritten, infoLog.data());

		std::string message("Failed to link program: ");
		message += infoLog.data();
		this->setExitMessage(message.c_str());
		return pvr::Result::UnknownError;
	}

	// Actually use the created program
	gl::UseProgram(_program);

	// Sets the clear color
	gl::ClearColor(0.0f, 0.4f, 0.7f, 1.0f);

	// Create VBO for the triangle from our data
	_triangle.Init();
	_triangle2.Init();

	// Enable culling
	gl::Enable(GL_CULL_FACE);
	return pvr::Result::Success;
}

/*!*********************************************************************************************************************
\return Return Result::Success if no error occurred
\brief  Code in releaseView() will be called by pvr::Shell when the application quits or before a change in the rendering context.
***********************************************************************************************************************/
pvr::Result OpenGLESIntroducingPVRShell::releaseView()
{
	// Frees the OpenGL handles for the program and the 2 shaders
	if (_program)
		gl::DeleteProgram(_program);
	if (_vertexShader)
		gl::DeleteShader(_vertexShader);
	if (_fragShader)
		gl::DeleteShader(_fragShader);

	_context.release();

	return pvr::Result::Success;
}

/*!*********************************************************************************************************************
\return Return Result::Success if no error occurred
\brief  Main rendering loop function of the program. The shell will call this function every frame.
***********************************************************************************************************************/
pvr::Result OpenGLESIntroducingPVRShell::renderFrame()
{
	// Matrix used for projection model view
	float afIdentity[] = { 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 };

	//  Clears the color buffer. glClear() can also be used to clear the depth or stencil buffer
	//  (GL_DEPTH_BUFFER_BIT or GL_STENCIL_BUFFER_BIT)
	gl::Clear(GL_COLOR_BUFFER_BIT);

	//  Bind the projection model view matrix (PMVMatrix) to
	//  the associated uniform variable in the shader
	// First gets the location of that variable in the shader using its name
	int i32Location = gl::GetUniformLocation(_program, "myPMVMatrix");

	// Then passes the matrix to that variable
	gl::UniformMatrix4fv(i32Location, 1, GL_FALSE, afIdentity);


	// Render the triangle
	_triangle.Render();
	_triangle2.Render();


	if (_context.isApiSupported(pvr::Api::OpenGLES3))
	{
		GLenum invalidateAttachments[2];
		invalidateAttachments[0] = GL_DEPTH;
		invalidateAttachments[1] = GL_STENCIL;

		gl::InvalidateFramebuffer(GL_FRAMEBUFFER, 2, &invalidateAttachments[0]);
	}
	else if (gl::isGlExtensionSupported("GL_EXT_discard_framebuffer"))
	{
		GLenum invalidateAttachments[2];
		invalidateAttachments[0] = GL_DEPTH_EXT;
		invalidateAttachments[1] = GL_STENCIL_EXT;

		gl::ext::DiscardFramebufferEXT(GL_FRAMEBUFFER, 2, &invalidateAttachments[0]);
	}

	_context.swapBuffers();
	return pvr::Result::Success;
}

/// <summary>This function must be implemented by the user of the shell. The user should return its pvr::Shell object defining the behaviour of the application.</summary>
/// <returns>Return a unique ptr to the demo supplied by the user.</returns>
std::unique_ptr<pvr::Shell> pvr::newDemo()
{
	return std::unique_ptr<pvr::Shell>(new OpenGLESIntroducingPVRShell());
}