attribute highp   vec3 aVertex;
attribute mediump vec2 aTexCoord;
attribute mediump vec3 aNormal;

uniform mediump mat4   uMVPMatrix;
uniform mediump mat4   uMVMatrix;
uniform mediump mat3   uMVITMatrix;
uniform mediump vec3   uLightPosition;

varying mediump vec2   vTexCoord;
varying mediump float  vLightBrightness;

void main()
{
	gl_Position = uMVPMatrix * vec4(aVertex, 1.0);
	vTexCoord = aTexCoord;

	mediump vec3 transPos = vec3(uMVMatrix * vec4(aVertex, 1.0));
	mediump vec3 transNormal = normalize(uMVITMatrix * aNormal);
	mediump vec3 lightDirection = normalize(uLightPosition - transPos);
	vLightBrightness = max(dot(transNormal, lightDirection), 0.0);
}