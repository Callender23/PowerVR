
#include "PVRShell/PVRShell.h"
#include "PVRShell/Shell.h" 
#include "Triangle.h"

// PVR texture files
const char TextureFile[]  = "Image.pvr";
const char TextureFile2[] = "Star-4bpp.pvr";



/*!****************************************************************************
 Class implementing the PVRShell functions.
******************************************************************************/
class OpenGLESSimpleLighting : public pvr::Shell
{
	pvr::EglContext _context;

	// UIRenderer used to display text
	pvr::ui::UIRenderer _uiRenderer;

	// Last key pressed - used for devices without keyboard attached
	pvr::SimplifiedInput _lastKeyAction;

	// Triangles
	Triangle _triangle1, _triangle2;

	// Vector for camera position
	glm::vec3 _cameraPosition;
	// Camera rotation about the Y-axis
	float _cameraRotation;

	// Matrix for the Projection Matrix
	glm::mat4 _projection;
	// Matrix for the View Matrix
	glm::mat4 _view;

	// Vector for light direction
	glm::vec3 _lightDirection;
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

void OpenGLESSimpleLighting::eventMappedInput(pvr::SimplifiedInput action) 
{
	// Store action to be picked up by next renderFrame()
	// Can only store last single key action.
	// multiple key presses are not supported.
	// This is used for devices without keyboard attached.
	_lastKeyAction = action;
}

pvr::Result OpenGLESSimpleLighting::initApplication()
{
	_triangle1.SetPosition(-0.5, 0, 0);
	_triangle2.SetPosition( 0.5, 0, 0);

	// This is used for devices without keyboard attached.
	_lastKeyAction = pvr::SimplifiedInput::NONE;

	return pvr::Result::Success;
}

pvr::Result OpenGLESSimpleLighting::quitApplication() {
	return pvr::Result::Success;
}

pvr::Result OpenGLESSimpleLighting::initView()
{
	// Create a new OpenGL ES graphics context
	_context = pvr::createEglContext();
	_context->init(getWindow(), getDisplay(), getDisplayAttributes());

	// Setup the text to be rendered
	_uiRenderer.init(getWidth(), getHeight(), isFullScreen(), (_context->getApiVersion() == pvr::Api::OpenGLES2) || (getBackBufferColorspace() == pvr::ColorSpace::sRGB));
	_uiRenderer.getDefaultTitle()->setText("OpenGL ES Simple Lighting");
	_uiRenderer.getDefaultTitle()->commitUpdates();

	// Sets the clear color
	gl::ClearColor(0.6f, 0.8f, 1.0f, 1.0f);

	if (!_triangle1.Init(this, _context, TextureFile))
	{
		throw pvr::InvalidDataError(" ERROR: Triangle failed in Init()");
		return pvr::Result::UnknownError;
	}
	if (!_triangle2.Init(this, _context, TextureFile2))
	{
		throw pvr::InvalidDataError(" ERROR: Triangle 2 failed in Init()");
		return pvr::Result::UnknownError;
	}

	// Set the initial camera position to the origin and angle about the Y-axis to 0 (no rotation)
	_cameraPosition = glm::vec3(0.0f, 0.0f, 2.0f);
	_cameraRotation = 0.0f;

	/*
	Creates the Projection matrix using the PVR math tool.
	The tool returns the matrix using glm which is a cross-platform library
	used for handling Matrices and Vector mathematics
	*/
	_projection = pvr::math::perspective(pvr::Api::OpenGLES2, 45, static_cast<float>(this->getWidth()) / static_cast<float>(this->getHeight()), 0.1, 100, 0);

	// Define the direction of the directional light
	_lightDirection = glm::vec3(0.0f, 0.0f, -1.0f);
	// Define the colour of the directional light
	_lightColour = glm::vec4(1.0f, 0.0f, 0.0f, 0.0f);

	// Enable culling
	//gl::Enable(GL_CULL_FACE);

	return pvr::Result::Success;
}

pvr::Result OpenGLESSimpleLighting::releaseView() {
	return pvr::Result::Success;
}

pvr::Result OpenGLESSimpleLighting::renderFrame()
{
	if (pvr::Shell::isKeyPressed(pvr::Keys::Right) || _lastKeyAction == pvr::SimplifiedInput::Right)
	{
		_cameraRotation += 0.002f; 
	}
	if (pvr::Shell::isKeyPressed(pvr::Keys::Left) || _lastKeyAction == pvr::SimplifiedInput::Left)
	{
		_cameraRotation -= 0.002f;
	}
	if (pvr::Shell::isKeyPressed(pvr::Keys::Up) || _lastKeyAction == pvr::SimplifiedInput::Up)
	{ 
		glm::vec3 direction = glm::vec3(glm::sin(_cameraRotation), 0, -glm::cos(_cameraRotation));
		_cameraPosition += 0.002f * direction; 
	}
	if (pvr::Shell::isKeyPressed(pvr::Keys::Down) || _lastKeyAction == pvr::SimplifiedInput::Down)
	{
		glm::vec3 direction = glm::vec3(glm::sin(_cameraRotation), 0, -glm::cos(_cameraRotation));
		_cameraPosition -= 0.002f * direction;
	}
	// This is used for devices without keyboard attached.
	_lastKeyAction = pvr::SimplifiedInput::NONE; 

	_triangle1.Update( 0.001f);
	_triangle2.Update(-0.003f);

	// Clears the color and depth buffer
	gl::Clear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	/*
	Creates the View matrix based on the camera's position and orientation.
	Notice that we actual move and rotate the world by the opposite amounts so that the
	camera can actual stay at the origin whilst the world transforms
	*/
	_view = glm::rotate(-_cameraRotation, glm::vec3(0, -1, 0)) * glm::translate(-_cameraPosition);

	/*
		Draw a triangle - we pass the View Projection matrix and the light direction to the triangle
	*/
	_triangle1.Render(_view, _projection, _lightDirection, _lightColour);
	_triangle2.Render(_view, _projection, _lightDirection, _lightColour);

	// Display some text
	_uiRenderer.beginRendering();
	_uiRenderer.getDefaultTitle()->render();
	_uiRenderer.endRendering();

	_context->swapBuffers();

	return pvr::Result::Success;
}

/// <summary>This function must be implemented by the user of the shell. The user should return its pvr::Shell object defining the behaviour of the application.</summary>
/// <returns>Return a unique ptr to the demo supplied by the user.</returns>
std::unique_ptr<pvr::Shell> pvr::newDemo()
{ return std::unique_ptr<pvr::Shell>(new OpenGLESSimpleLighting()); }
