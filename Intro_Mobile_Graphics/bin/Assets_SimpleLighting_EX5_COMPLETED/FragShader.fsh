uniform sampler2D     sTexture;

varying mediump vec2  vTexCoord;
varying mediump float vLightBrightness;

void main()
{
	mediump vec4 lightColour = vec4(0.0, 1.0, 0.0, 1.0);
	gl_FragColor = texture2D(sTexture, vTexCoord) * lightColour * vLightBrightness;
}