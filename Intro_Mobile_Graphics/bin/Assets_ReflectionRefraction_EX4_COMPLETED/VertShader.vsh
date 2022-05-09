attribute highp   vec3 aVertex;
attribute mediump vec2 aTexCoord;
attribute mediump vec3 aNormal;

uniform mediump   mat4   uMVPMatrix;
uniform mediump   mat4   uMVMatrix;
uniform mediump   mat3   uMVITMatrix;

varying mediump   vec2   vTexCoord;
varying mediump   vec3   vNormal;
varying mediump   vec3   vTransPosition;
varying mediump   vec3   vReflectDir;
varying mediump   vec3   vRefractDir;      // NEW

void main()
{
	gl_Position = uMVPMatrix * vec4(aVertex, 1.0);
	vTexCoord = aTexCoord;

	vTransPosition = vec3(uMVMatrix * vec4(aVertex, 1.0));
	vNormal = normalize(uMVITMatrix * aNormal);
	vReflectDir = reflect(vTransPosition, vNormal);
	vRefractDir = refract(vTransPosition, vNormal, 0.658); // NEW - ratio = 1.00/1.52 = 0.658 (from air to glass)
}