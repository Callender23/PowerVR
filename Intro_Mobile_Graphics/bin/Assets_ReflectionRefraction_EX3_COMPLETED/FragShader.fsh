uniform sampler2D    sTexture;
uniform samplerCube  sCubeMap;
uniform mediump vec3 uLightPosition;
uniform mediump vec4 uLightColour;

varying mediump vec2 vTexCoord;
varying mediump vec3 vNormal;
varying mediump vec3 vTransPosition;
varying mediump vec3 vReflectDir;
varying mediump vec3 vRefractDir;        // NEW

const mediump float  cShininess = 64.0;

void main()
{
	// Diffuse
	mediump vec3 lightDirection = normalize(uLightPosition - vTransPosition);
	mediump float  lightBrightness = max( dot(vNormal, lightDirection), 0.0);
	mediump vec4 diffuseLight = uLightColour * lightBrightness;
	
	// Specular
	mediump vec4 specularLight;
	if (lightBrightness > 0.0)
	{
		mediump vec3 eyeDirection = normalize(-vTransPosition);
		mediump vec3 halfVector = normalize(lightDirection + eyeDirection);
		mediump float NdotH = max(dot(vNormal, halfVector), 0.0);		
		mediump float specular = pow(NdotH, cShininess);
		specularLight = specular * uLightColour;
	}	
	else
	{
		specularLight = vec4(0.0);
	}

    gl_FragColor = ((textureCube(sCubeMap, vReflectDir)+textureCube(sCubeMap, vRefractDir)) * diffuseLight) + specularLight;   // Changed
}
