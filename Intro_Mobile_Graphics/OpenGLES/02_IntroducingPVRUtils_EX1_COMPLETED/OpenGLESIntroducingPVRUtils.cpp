
#include "PVRShell/PVRShell.h"
#include "Triangle.h"


/*!****************************************************************************
 Class implementing the PVRShell functions.
******************************************************************************/
class OpenGLESIntroducingPVRUtils : public pvr::Shell
{
	pvr::EglContext _context;

	// UIRenderer used to display text
	pvr::ui::UIRenderer _uiRenderer;

	// Triangle
	Triangle _triangle, _triangle2, _triangle3;

public:
	virtual pvr::Result initApplication();
	virtual pvr::Result initView();
	virtual pvr::Result releaseView();
	virtual pvr::Result quitApplication();
	virtual pvr::Result renderFrame();
};

pvr::Result OpenGLESIntroducingPVRUtils::initApplication()
{
	_triangle.SetPosition(  0, 0, -1);
	_triangle2.SetPosition(-1, 0, -1);
	_triangle3.SetPosition(+1, 0, -1);


	return pvr::Result::Success;
}

pvr::Result OpenGLESIntroducingPVRUtils::quitApplication()
{
	return pvr::Result::Success;
}

pvr::Result OpenGLESIntroducingPVRUtils::initView()
{
	// Create a new OpenGL ES graphics context
	_context = pvr::createEglContext();
	_context->init(getWindow(), getDisplay(), getDisplayAttributes());

	// Setup the text to be rendered
	_uiRenderer.init(getWidth(), getHeight(), isFullScreen(), (_context->getApiVersion() == pvr::Api::OpenGLES2) || (getBackBufferColorspace() == pvr::ColorSpace::sRGB));
	_uiRenderer.getDefaultTitle()->setText("IntroducingPVRUtils");
	_uiRenderer.getDefaultTitle()->commitUpdates();

	// Sets the clear color
	gl::ClearColor(0.6f, 0.8f, 1.0f, 1.0f);

	if (!_triangle.Init(this, _context))
	{
		throw pvr::InvalidDataError(" ERROR: Triangle failed in Init()");
		return pvr::Result::UnknownError;
	}
	if (!_triangle2.Init(this, _context))
	{
		throw pvr::InvalidDataError(" ERROR: Triangle 2 failed in Init()");
		return pvr::Result::UnknownError;
	}
	if (!_triangle3.Init(this, _context))
	{
		throw pvr::InvalidDataError(" ERROR: Triangle 3 failed in Init()");
		return pvr::Result::UnknownError;
	}


	// Enable culling
	gl::Enable(GL_CULL_FACE);
	return pvr::Result::Success;
}

pvr::Result OpenGLESIntroducingPVRUtils::releaseView()
{
	return pvr::Result::Success;
}

pvr::Result OpenGLESIntroducingPVRUtils::renderFrame()
{
	// Clears the color and depth buffer
	gl::Clear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	/*
		Creates the Projection matrix using the PVR math tool.
		The tool returns the matrix using glm which is a cross-platform library
		used for handling Matrices and Vector mathematics
	*/
	glm::mat4 projection = pvr::math::perspective(pvr::Api::OpenGLES2, 45, static_cast<float>(this->getWidth()) / static_cast<float>(this->getHeight()), 0.1, 100, 0);

	/*
		Draw a triangle - we pass the Projection matrix to the triangle
	*/
	_triangle.Render(projection);
	_triangle2.Render(projection);
	_triangle3.Render(projection);

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
{
	return std::unique_ptr<pvr::Shell>(new OpenGLESIntroducingPVRUtils());
}
