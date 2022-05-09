#include "Triangle.h" 

// Index to bind the attributes to vertex shaders
const uint32_t VertexArray = 0;


Triangle::Triangle(void) : _vbo(0)
{
}


Triangle::~Triangle(void)
{
	// Release Vertex buffer object.
	if (_vbo)
		gl::DeleteBuffers(1, &_vbo);
}

void Triangle::Init(void)
{
	// Vertex data
	 GLfloat afVertices[] = { -0.4f, -0.4f, 0.0f, 0.4f, -0.4f, 0.0f, 0.0f, 0.4f, 0.0f };

	// Gen VBO
	 gl::GenBuffers(1, &_vbo);

	// Bind the VBO
	 gl::BindBuffer(GL_ARRAY_BUFFER, _vbo);

	// Set the buffer's data
	 gl::BufferData(GL_ARRAY_BUFFER, 3 * (3 * sizeof(GLfloat)) /* 3 Vertices of 3 floats in size */, afVertices, GL_STATIC_DRAW);

	// Unbind the VBO
	 gl::BindBuffer(GL_ARRAY_BUFFER, 0);
}

void Triangle::Render(void)
{
		// Bind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, _vbo);

	// Enable the custom vertex attribute at index VERTEX_ARRAY.
	// We previously binded that index to the variable in our shader "vec4 MyVertex;"
	gl::EnableVertexAttribArray(VertexArray);

	// Points to the data for this vertex attribute
	gl::VertexAttribPointer(VertexArray, 3, GL_FLOAT, GL_FALSE, 0, 0);

	// Draws a non-indexed triangle array from the pointers previously given.
	// This function allows the use of other primitive types : triangle strips, lines, ...
	// For indexed geometry, use the function glDrawElements() with an index list.
	gl::DrawArrays(GL_TRIANGLES, 0, 3);

	// Unbind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, 0);
}