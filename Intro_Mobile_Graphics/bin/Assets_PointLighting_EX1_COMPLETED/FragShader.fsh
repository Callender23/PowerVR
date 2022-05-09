uniform sampler2D    sTexture;

varying mediump vec2 vTexCoord;
varying mediump vec4 vDiffuseLight;

void main()
{
    gl_FragColor = texture2D(sTexture, vTexCoord) * vDiffuseLight;
}
