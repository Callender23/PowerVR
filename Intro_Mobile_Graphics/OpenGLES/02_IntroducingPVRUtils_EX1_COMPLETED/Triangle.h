#pragma once
#include "PVRShell/PVRShell.h" 
#include "PVRUtils/PVRUtilsGles.h"

class Triangle
{
private:
	// VBO handle
	uint32_t _vbo;

	// Texture handle
	uint32_t _texture;

	// Stride size of a vertex (position + texture coordinate)
	unsigned int _vertexStride;

	// Position
	float _x, _y, _z;

public:
	Triangle(void);
	~Triangle(void);

	bool Init(pvr::Shell* shell, pvr::EglContext& context);
	void Render(glm::mat4 mVP);
	void SetPosition(float x, float y, float z);
};

