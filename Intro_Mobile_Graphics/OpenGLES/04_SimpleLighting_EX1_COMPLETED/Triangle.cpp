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
	NORMAL_ARRAY,
	eNumAttribs 
};
const char* TriangleAttribNames[] = {
	"aVertex", "aTexCoord", "aNormal"
};
const uint16_t TriangleAttribIndices[] = { 0, 1, 2 };


// Shader uniforms
enum EUniform {
	eMVPMatrix,
	eMVITMatrix,
	eLightDirection,
	eNumUniforms
};
const char* TriangleUniformNames[] = {
	"uMVPMatrix", "uMVITMatrix", "uLightDirection" 
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


Triangle::Triangle(void) : _vbo(0), _vertexStride(0), _texture(0), _rotation(glm::mat4(1.0)), _position(glm::mat4(1.0)) {}

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
	GLfloat afVertices[] = {
								// Vertex 1
								-0.4f, -0.4f, 0.0f, // Position 1
								0.0f, 0.0f, // Texture coordinate 1
								0.0f, 0.0f, 1.0f, // Normal 1
								// Vertex 2
								0.4f, -0.4f, 0.0f, // Position 2
								1.0f, 0.0f, // Texture coordinate 2
								0.0f, 0.0f, 1.0f, // Normal 2
								// Vertex 3
								0.0f, 0.4f, 0.0f, // Position 3
								0.5f, 1.0f, // Texture coordinate 3
								0.0f, 0.0f, 1.0f, // Normal 3
	};

	// Create VBO for the triangle from our data
	// Gen VBO
	gl::GenBuffers(1, &_vbo);

	// Bind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, _vbo);

	// Calculate size of stride (position + texture coordinate + normal = 3 + 2 + 3)
	_vertexStride = 8 * sizeof(GLfloat); // 3 floats for the pos, 2 for the UVs, 3 for normals

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
	_triangleShaderProgram.uiId = pvr::utils::createShaderProgram(*shell, VertexShaderFile, FragmentShaderFile, TriangleAttribNames, TriangleAttribIndices, eNumAttribs, 0, 0);

	// Store the location of uniforms for later use
	for (int i = 0; i < eNumUniforms; ++i)
	{
		_triangleShaderProgram.auiLoc[i] = gl::GetUniformLocation(_triangleShaderProgram.uiId, TriangleUniformNames[i]);
	}

	return true;
}

void Triangle::Update(float yAxisRotation)
{ 
	_rotation *= glm::rotate(yAxisRotation, glm::vec3(0, -1, 0));
}

void Triangle::Render(const glm::mat4& view, const glm::mat4& projection, const glm::vec3& lightDirection)
{
	// Use the loaded shader program
	gl::UseProgram(_triangleShaderProgram.uiId);

	// Calculate the Model matrix
	glm::mat4 model = _position * _rotation;
	
	// Calculate the Model View Projection matrix
	glm::mat4 modelViewProjection = projection * view * model;
	gl::UniformMatrix4fv(_triangleShaderProgram.auiLoc[eMVPMatrix], 1, GL_FALSE, glm::value_ptr(modelViewProjection));

	// Calculate the Inverse Transpose of the Model View matrix
	glm::mat3 modelViewIT = glm::inverseTranspose(view * model);
	gl::UniformMatrix3fv(_triangleShaderProgram.auiLoc[eMVITMatrix], 1, GL_FALSE, glm::value_ptr(modelViewIT));

	// Send the directional light direction to the shader
	// Create the light direction based on the View matrix
	glm::vec3 viewLightDirection = glm::normalize(glm::vec3((view * glm::vec4(lightDirection, 0))));
	gl::Uniform3fv(_triangleShaderProgram.auiLoc[eLightDirection], 1, glm::value_ptr(viewLightDirection));

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
	// Enable the custom normal attribute at index NORMAL_ARRAY
	gl::EnableVertexAttribArray(NORMAL_ARRAY);
	// Points to the normal data
	gl::VertexAttribPointer(NORMAL_ARRAY, 3, GL_FLOAT, GL_FALSE, _vertexStride, (void*)(sizeof(GLfloat) * 5));

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
	_position = glm::translate(glm::vec3(x, y, z)); 
}

