#pragma once

//#include "PVRShell/PVRShell.h"
#include "EglContext.h"

//#if defined(__APPLE__) && defined (TARGET_OS_IPHONE)
//#import <OpenGLES/ES2/gl.h>
//#import <OpenGLES/ES2/glext.h>
//#else
//#include <GLES2/gl2.h>
//#endif

class Triangle
{
private:
	// VBO handle
	uint32_t _vbo;

public:
	Triangle(void);
	~Triangle(void);

	void Init(void);
	void Render(void);
};

