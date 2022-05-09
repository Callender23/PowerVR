#pragma once
#include "EglContext.h"

class Triangle
{
private:
	// VBO handle
	uint32_t _vbo;
	float _x, _y, _z;

public:
	Triangle(void);
	~Triangle(void);

	void Init(void);
	void Render(void);
	void SetPosition(float x, float y, float z);
};

