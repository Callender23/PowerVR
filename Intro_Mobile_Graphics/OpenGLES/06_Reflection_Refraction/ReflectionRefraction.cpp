
#include "PVRShell/PVRShell.h"
#include "PVRShell/Shell.h"
#include "Triangle.h"
#include "Square.h"

// PVR texture files
const char TextureCubemapFile[]    = "Cubemap.pvr";
const char TextureFile[]           = "Star-4bpp.pvr";
const char TextureBackgroundFile[] = "Background.pvr";

/*!****************************************************************************
 Class implementing the PVRShell functions.
******************************************************************************/
class ReflectionRefraction : public pvr::Shell
{
	pvr::EglContext _context;

	// UIRenderer used to display text
	pvr::ui::UIRenderer _uiRenderer;

	// Last key pressed - used for devices without keyboard attached
	pvr::SimplifiedInput _lastKeyAction;

	// Triangles
	Triangle _triangle1;

	// Square
	Square _background;

	// Vector for camera position
	glm::vec3 _cameraPosition;
	// Camera rotation about the Y-axis
	float _cameraRotation;

	// Matrix for the Projection Matrix
	glm::mat4 _projection;
	// Matrix for the View Matrix
	glm::mat4 _view;

	// Vector for light position
	glm::vec3 _lightPosition;
	// Vector for light colour
	glm::vec4 _lightColour;

private:
	virtual void eventMappedInput(pvr::SimplifiedInput action);

public:
	virtual pvr::Result initApplication();
	virtual pvr::Result initView();
	virtual pvr::Result releaseView();
	virtual pvr::Result quitApplication();
	virtual pvr::Result renderFrame();
};

void ReflectionRefraction::eventMappedInput(pvr::SimplifiedInput action)
{
	// Store action to be picked up by next renderFrame()
	// Can only store last single key action.
	// multiple key presses are not supported.
	// This is used for devices without keyboard attached.
	_lastKeyAction = action;
}

pvr::Result ReflectionRefraction::initApplication()
{
    _triangle1.SetPosition(0, 0, -0.5);
	_background.SetPosition(0.0, 0.0, -50.0);

	// This is used for devices without keyboard attached.
	_lastKeyAction = pvr::SimplifiedInput::NONE;

	return pvr::Result::Success;
}

pvr::Result ReflectionRefraction::quitApplication() {
	return pvr::Result::Success;
}

pvr::Result ReflectionRefraction::initView()
{
	// Create a new OpenGL ES graphics context
	_context = pvr::createEglContext();
	_context->init(getWindow(), getDisplay(), getDisplayAttributes());

	// Setup the text to be rendered
	_uiRenderer.init(getWidth(), getHeight(), isFullScreen(), (_context->getApiVersion() == pvr::Api::OpenGLES2) || (getBackBufferColorspace() == pvr::ColorSpace::sRGB));
	_uiRenderer.getDefaultTitle()->setText("OpenGL ES Reflection");
	_uiRenderer.getDefaultTitle()->commitUpdates();

	// Sets the clear color
	gl::ClearColor(0.6f, 0.8f, 1.0f, 1.0f);

	if (!_triangle1.Init(this, _context, TextureFile, TextureCubemapFile))
	{
		throw pvr::InvalidDataError(" ERROR: Triangle failed in Init()");
		return pvr::Result::UnknownError;
	}

	if (!_background.Init(this, _context, TextureBackgroundFile))
	{
		throw pvr::InvalidDataError(" ERROR: Square (background) failed in Init()");
		return pvr::Result::UnknownError;
	}

	// Set the initial camera position to the origin and angle about the Y-axis to 0 (no rotation)
	_cameraPosition = glm::vec3(0.0f, 0.0f, 0.5f);
	_cameraRotation = 0.0f;

	/*
	Creates the Projection matrix using the PVR math tool.
	The tool returns the matrix using glm which is a cross-platform library
	used for handling Matrices and Vector mathematics
	*/
	_projection = pvr::math::perspective(pvr::Api::OpenGLES2, 45, static_cast<float>(this->getWidth()) / static_cast<float>(this->getHeight()), 0.1, 100, 0);

	// Define the position of the light
	_lightPosition = glm::vec3(0.0f, 0.0f, 1.0f);
	// Define the colour of the light
	_lightColour = glm::vec4(1.0f, 1.0f, 1.0f, 0.0f);

	// Enable culling
	//gl::Enable(GL_CULL_FACE);

	return pvr::Result::Success;
}

pvr::Result ReflectionRefraction::releaseView() {
	return pvr::Result::Success;
}

pvr::Result ReflectionRefraction::renderFrame()
{
	// Use the keyboard cursor keys to rotate the object
	if (pvr::Shell::isKeyPressed(pvr::Keys::Right) || _lastKeyAction == pvr::SimplifiedInput::Right)
	{
		_triangle1.Update(-0.001f);
	}
	if (pvr::Shell::isKeyPressed(pvr::Keys::Left) || _lastKeyAction == pvr::SimplifiedInput::Left)
	{
		_triangle1.Update(+0.001f);
	}
	// This is used for devices without keyboard attached.
	_lastKeyAction = pvr::SimplifiedInput::NONE; 

	// Clears the color and depth buffer
	gl::Clear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	/*
	Draw the background - we pass the Projection matrix.
	We are using the background image as a static backdrop and so we do not need to rotate it etc.
	*/
	_background.Render(_projection);

	/*
	Creates the View matrix based on the camera's position and orientation.
	Notice that we actual move and rotate the world by the opposite amounts so that the
	camera can actual stay at the origin whilst the world transforms
	*/
	_view = glm::rotate(-_cameraRotation, glm::vec3(0, -1, 0)) * glm::translate(-_cameraPosition);

	/*
		Draw a triangle - we pass the View and Projection matrices and the light position and colour to the triangle
	*/
	_triangle1.Render(_view, _projection, _lightPosition, _lightColour);

	// Display some text
	//_uiRenderer.beginRendering();
	//_uiRenderer.getDefaultTitle()->render();
	//_uiRenderer.endRendering();

	_context->swapBuffers();

	return pvr::Result::Success;
}

/// <summary>This function must be implemented by the user of the shell. The user should return its pvr::Shell object defining the behaviour of the application.</summary>
/// <returns>Return a unique ptr to the demo supplied by the user.</returns>
std::unique_ptr<pvr::Shell> pvr::newDemo() { return std::unique_ptr<pvr::Shell>(new ReflectionRefraction()); }
