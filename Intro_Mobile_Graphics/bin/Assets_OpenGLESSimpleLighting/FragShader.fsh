uniform sampler2D     sTexture;

varying mediump vec2  vTexCoord;
varying mediump float vLightBrightness;

void main()
{
    gl_FragColor = texture2D(sTexture, vTexCoord) * vLightBrightness;
}
