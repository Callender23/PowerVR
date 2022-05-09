#include "Triangle.h"

/******************************************************************************
 shader attributes and uniforms
******************************************************************************/
// Vertex attributes
// We define an enum for the attribute position and an array of strings that
// correspond to the attribute names in the shader. These can be used by the PVR Utils.

enum EVertexAttrib {
	VERTEX_ARRAY,
	TEXCOORD_ARRAY,
	eNumAttribs 
};
const char* TriangleAttribNames[] = {
	"inVertex", "inTexCoord" 
};

// Shader uniforms
enum EUniform {
	eMVPMatrix,
	eNumUniforms 
};
const char* TriangleUniformNames[] = {
	"MVPMatrix" 
};


// Group shader programs and their uniform locations together
struct
{
	GLuint uiId;
	GLuint auiLoc[eNumUniforms];
}
_triangleShaderProgram;


/******************************************************************************
 Content file names
******************************************************************************/

// Source shaders
const char FragmentShaderFile[]	= "FragShader.fsh";
const char VertexShaderFile[]	= "VertShader.vsh";


/******************************************************************************/


Triangle::Triangle(void) : _vbo(0), _vertexStride(0), _texture(0), _x(0), _y(0), _z(0)
{
}

Triangle::~Triangle(void)
{
	// Release Vertex buffer object.
	if(_vbo) gl::DeleteBuffers(1, &_vbo);
	// Frees the texture
	if(_texture) gl::DeleteTextures(1, &_texture);

	// Frees the OpenGL handles for the shader program
	gl::DeleteProgram(_triangleShaderProgram.uiId);
}

bool Triangle::Init(pvr::Shell* shell, pvr::EglContext& context, const char* textureFilename)
{
	// Interleaved vertex data
	GLfloat afVertices[] = { // Vertex 1
							-0.4f+_x, -0.4f+_y, -2.0f+_z,	// Position 1
							 0.0f, 0.0f,					// Texture coodinate 1
							 // Vertex 2
							 0.4f+_x, -0.4f+_y, -2.0f+_z,	// Position 2
							 1.0f, 0.0f,					// Texture coodinate 2
							 // Vertex 3
							 0.0f+_x,  0.4f+_y, -2.0f+_z,	// Position 3
							 0.5f, 1.0f,					// Texture coodinate 3
							 };

	// Create VBO for the triangle from our data
	// Gen VBO
	gl::GenBuffers(1, &_vbo);

	// Bind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, _vbo);

	// Calculate size of stride (position + texture coordinate = 3 + 2)
	_vertexStride = 5 * sizeof(GLfloat); // 3 floats for the pos, 2 for the UVs

	// Set the buffer's data
	gl::BufferData(GL_ARRAY_BUFFER, 3 * _vertexStride, afVertices, GL_STATIC_DRAW);

	// Unbind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, 0);

	// Load the diffuse texture map using PVR Utils
	_texture = pvr::utils::textureUpload(*shell, textureFilename, context->getApiVersion() == pvr::Api::OpenGLES2);
	gl::BindTexture(GL_TEXTURE_2D, _texture);
	gl::TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	gl::TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	// We use PVR Utils to create the shader program for us
	static const char* attribs[] = { "inVertex", "inTexCoord" };
	static const uint16_t attribIndices[] = { 0, 1 };
	_triangleShaderProgram.uiId = pvr::utils::createShaderProgram(*shell, VertexShaderFile, FragmentShaderFile, attribs, attribIndices, 2, 0, 0);

	// Store the location of uniforms for later use
	for (int i = 0; i < eNumUniforms; ++i)
	{
		_triangleShaderProgram.auiLoc[i] = gl::GetUniformLocation(_triangleShaderProgram.uiId, TriangleUniformNames[i]);
	}

	return true;
}

void Triangle::Render(glm::mat4 mVP)
{
	// Use the loaded shader program
	gl::UseProgram(_triangleShaderProgram.uiId);

	// Pass the View Matrix to the shader.
	// Since we are not translating the triangle we do not need a Model Matrix.
	gl::UniformMatrix4fv(_triangleShaderProgram.auiLoc[eMVPMatrix], 1, GL_FALSE, glm::value_ptr(mVP));

	// Binds the loaded texture
	gl::BindTexture(GL_TEXTURE_2D, _texture);

	// Bind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, _vbo);

	/*
		Enable the custom vertex attribute at index VERTEX_ARRAY.
		We previously binded that index to the variable in our shader "vec4 myVertex;"
	*/
	gl::EnableVertexAttribArray(VERTEX_ARRAY);
	// Points to the position data
	gl::VertexAttribPointer(VERTEX_ARRAY, 3, GL_FLOAT, GL_FALSE, _vertexStride, 0);
	// Enable the custom vertex attribute at index TEXCOORD_ARRAY
	gl::EnableVertexAttribArray(TEXCOORD_ARRAY);
	// Points to the texture coordinate data
	gl::VertexAttribPointer(TEXCOORD_ARRAY, 2, GL_FLOAT, GL_FALSE, _vertexStride, (void*)(sizeof(GLfloat) * 3));

	/*
		 Draws a non-indexed triangle array from the pointers previously given.
		 This function allows the use of other primitive types : triangle strips, lines, ...
		 For indexed geometry, use the function glDrawElements() with an index list.
	*/
	gl::DrawArrays(GL_TRIANGLES, 0, 3);

	// Unbind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, 0);
}

void Triangle::SetPosition(float x, float y, float z)
{
	 _x = x;
	 _y = y;
	 _z = z;
}

