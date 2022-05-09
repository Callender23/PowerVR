uniform sampler2D     sTexture;
uniform mediump vec4  uLightColour;

varying mediump vec2  vTexCoord;
varying mediump float vLightBrightness;

void main()
{
	gl_FragColor = texture2D(sTexture, vTexCoord) * uLightColour * vLightBrightness;
}