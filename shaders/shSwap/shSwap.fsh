//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 normColour = texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 newColour = vec4(vec3(0.7) - normColour.rgb, normColour.a);
	
	gl_FragColor = v_vColour * newColour;
}
