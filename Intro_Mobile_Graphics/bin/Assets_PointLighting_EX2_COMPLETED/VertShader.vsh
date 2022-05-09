attribute highp   vec3 aVertex;
attribute mediump vec2 aTexCoord;
attribute mediump vec3 aNormal;

uniform mediump mat4   uMVPMatrix;
uniform mediump mat4   uMVMatrix;
uniform mediump mat3   uMVITMatrix;
uniform mediump vec3   uLightPosition;
uniform mediump vec4   uLightColour;

varying mediump vec2   vTexCoord;
varying mediump vec4   vDiffuseLight;
varying mediump vec4   vSpecularLight;

const highp float  cShininess = 16.0;

void main()
{
	gl_Position = uMVPMatrix * vec4(aVertex, 1.0);
	vTexCoord = aTexCoord;

	mediump vec3 transPos = vec3(uMVMatrix * vec4(aVertex, 1.0));
	mediump vec3 transNormal = normalize(uMVITMatrix * aNormal);
	
	// Diffuse
	mediump vec3 lightDirection = normalize(uLightPosition - transPos);
	float lightBrightness = max( dot(transNormal, lightDirection), 0.0);
	vDiffuseLight = uLightColour * lightBrightness;
	
	// Specular
	if (lightBrightness > 0.0)
	{
		vec3 eyeDirection = normalize(-transPos);
		highp vec3 halfVector = normalize(lightDirection + eyeDirection);
		highp float NdotH = max(dot(transNormal, halfVector), 0.0);		
		highp float specular = pow(NdotH, cShininess);
		vSpecularLight = specular * uLightColour;
	}	
	else
	{
		vSpecularLight = vec4(0.0);
	}
}