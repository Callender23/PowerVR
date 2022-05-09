attribute highp   vec3 aVertex;
attribute mediump vec2 aTexCoord;

uniform mediump mat4   uMPMatrix;

varying highp   vec2   vTexCoord;


void main()
{
	gl_Position = uMPMatrix * vec4(aVertex, 1.0);
	vTexCoord = aTexCoord;
}
