#pragma once
#include "PVRShell/PVRShell.h"
#include "PVRUtils/PVRUtilsGles.h"

class Square
{
private:
	// VBO handle
	uint32_t _vbo;

	// Texture handle
	uint32_t _texture;

	// Stride size of a vertex (position + texture coordinate)
	unsigned int _vertexStride;

	// Matrix for the Model position
	glm::mat4 _position;

public:
	Square(void);
	~Square(void);

	bool Init(pvr::Shell* shell, pvr::EglContext& context, const char* textureFilename);
	void Render(const glm::mat4& projection);
	void SetPosition(float x, float y, float z);
};

