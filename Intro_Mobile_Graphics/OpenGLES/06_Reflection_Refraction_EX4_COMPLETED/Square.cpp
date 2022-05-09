#include "Square.h"

/******************************************************************************
 shader attributes and uniforms
******************************************************************************/
// Vertex attributes
// We define an enum for the attribute position and an array of strings that
// correspond to the attribute names in the shader. These can be used by PVRTools

enum EVertexAttrib {
	VERTEX_ARRAY, TEXCOORD_ARRAY, eNumAttribs };
const char* SquareAttribNames[] = {
	"aVertex", "aTexCoord" };
const uint16_t SquareAttribIndices[] = { 0, 1 };

// Shader uniforms
enum EUniform {
	eMPMatrix, eNumUniforms };
const char* SquareUniformNames[] = {
	"uMPMatrix" };

// Group shader programs and their uniform locations together
struct
{
	GLuint uiId;
	GLuint auiLoc[eNumUniforms];
}
_squareShaderProgram;


/******************************************************************************
 Content file names
******************************************************************************/

// Source shaders
const char FragmentShaderFile[] = "FragShaderBackground.fsh";
const char VertexShaderFile[]   = "VertShaderBackground.vsh";

/******************************************************************************/


Square::Square(void) : _vbo(0), _vertexStride(0), _texture(0), _position(glm::mat4(1.0)) {}

Square::~Square(void)
{
	// Release Vertex buffer object.
	if (_vbo) gl::DeleteBuffers(1, &_vbo);
	// Frees the texture
	if (_texture) gl::DeleteTextures(1, &_texture);

	// Frees the OpenGL handles for the shader program
	gl::DeleteProgram(_squareShaderProgram.uiId);
}

bool Square::Init(pvr::Shell* shell, pvr::EglContext& context, const char* textureFilename)
{
	// Create VBO for the Square from our data

	// Interleaved vertex data
	GLfloat afVertices[] = { // Vertex 1
							-50.0f, -50.0f, 0.0f,	// Position 1
							 0.0f, 0.0f,			// Texture coodinate 1
							 // Vertex 2
							 50.0f, -50.0f, 0.0f,	// Position 2
							 1.0f, 0.0f,			// Texture coodinate 2
							 // Vertex 3
							 50.0f,  50.0f, 0.0f,	// Position 3
							 1.0f, 1.0f,			// Texture coodinate 3
							 // Vertex 4
							-50.0f,  50.0f, 0.0f,	// Position 4
							 0.0f, 1.0f,			// Texture coodinate 4
						   };

	// Gen VBO
	gl::GenBuffers(1, &_vbo);

	// Bind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, _vbo);

	// Calculate size of stride (position + texture coordinate = 3 + 2)
	_vertexStride = 5 * sizeof(GLfloat); // 3 floats for the pos, 2 for the UVs

	// Set the buffer's data
	gl::BufferData(GL_ARRAY_BUFFER, 4 * _vertexStride, afVertices, GL_STATIC_DRAW);

	// Unbind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, 0);

	// Load the 2D texture using PVR Utils
	_texture = pvr::utils::textureUpload(*shell, textureFilename, context->getApiVersion() == pvr::Api::OpenGLES2);
	gl::BindTexture(GL_TEXTURE_2D, _texture);
	gl::TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
	gl::TexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

	// We use PVR Utils to create the shader program for us
	_squareShaderProgram.uiId = pvr::utils::createShaderProgram(*shell, VertexShaderFile, FragmentShaderFile, SquareAttribNames, SquareAttribIndices, eNumAttribs, 0, 0);

	// Store the location of uniforms for later use
	for (int i = 0; i < eNumUniforms; ++i) { _squareShaderProgram.auiLoc[i] = gl::GetUniformLocation(_squareShaderProgram.uiId, SquareUniformNames[i]); }

	return true;
}

void Square::Render(const glm::mat4& projection)
{
	// Use the loaded shader program
	gl::UseProgram(_squareShaderProgram.uiId);

	glm::mat4 modelProjection = projection * _position;
	gl::UniformMatrix4fv(_squareShaderProgram.auiLoc[eMPMatrix], 1, GL_FALSE, glm::value_ptr(modelProjection));

	// Binds the loaded texture
	gl::ActiveTexture(GL_TEXTURE0);
	gl::BindTexture(GL_TEXTURE_2D, _texture);
	// Set the sampler uniforms to corresponding texture units
	gl::Uniform1i(gl::GetUniformLocation(_squareShaderProgram.uiId, "sTexture"), 0);

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


	/*
	 Draws a non-indexed array from the pointers previously given.
	 This function allows the use of other primitive types : triangle strips, lines, ...
	 For indexed geometry, use the function glDrawElements() with an index list.
	*/
	gl::DrawArrays(GL_TRIANGLE_FAN, 0, 4);

	// Unbind the VBO
	gl::BindBuffer(GL_ARRAY_BUFFER, 0);
}

void Square::SetPosition(float x, float y, float z) { _position = glm::translate(glm::vec3(x, y, z)); }
