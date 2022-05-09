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

	// Matrix for the Model position
	glm::mat4 _position;

	// Matrix for the Model rotation
	glm::mat4 _rotation;

public:
	Triangle(void);
	~Triangle(void);

	bool Init(pvr::Shell* shell, pvr::EglContext& context, const char* textureFilename);
	void Update(float yAxisRotation);
	void Render(const glm::mat4& view, const glm::mat4& projection, const glm::vec3& lightDirection, const glm::vec4& lightColour);
	void SetPosition(float x, float y, float z);
};

