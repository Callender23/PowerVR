uniform sampler2D    sTexture;
uniform mediump vec3 uLightPosition;
uniform mediump vec4 uLightColour;

varying mediump vec2 vTexCoord;
varying highp   vec3 vNormal;
varying highp   vec3 vTransPosition;

const highp float  cShininess = 16.0;

void main()
{
	// Diffuse
	mediump vec3 lightDirection = normalize(uLightPosition - vTransPosition);
	highp float  lightBrightness = max( dot(vNormal, lightDirection), 0.0);
	mediump vec4 diffuseLight = uLightColour * lightBrightness;
	
	// Specular
	mediump vec4 specularLight;
	if (lightBrightness > 0.0)
	{
		highp vec3 eyeDirection = normalize(-vTransPosition);
		highp vec3 halfVector = normalize(lightDirection + eyeDirection);
		highp float NdotH = max(dot(vNormal, halfVector), 0.0);		
		highp float specular = pow(NdotH, cShininess);
		specularLight = specular * uLightColour;
	}	
	else
	{
		specularLight = vec4(0.0);
	}

    gl_FragColor = (texture2D(sTexture, vTexCoord) * diffuseLight) + specularLight;
}
