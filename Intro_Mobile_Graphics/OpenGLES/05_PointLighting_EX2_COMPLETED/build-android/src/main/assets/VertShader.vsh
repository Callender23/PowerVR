attribute highp   vec4 aVertex;
attribute mediump vec2 aTexCoord;
attribute mediump vec3 aNormal;

uniform mediump mat4   uMVPMatrix;
uniform mediump mat3   uMITMatrix;
uniform mediump vec3   uLightDirection;

varying mediump vec2   vTexCoord;
varying mediump float  vLightBrightness;

void main()
{
	gl_Position = uMVPMatrix * aVertex;
	vTexCoord = aTexCoord;

	mediump vec3 transNormal = uMITMatrix * aNormal;
	vLightBrightness = max( dot(transNormal, uLightDirection), 0.0 );
}
