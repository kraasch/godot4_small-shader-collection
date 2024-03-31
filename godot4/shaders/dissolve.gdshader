shader_type spatial;
render_mode cull_disabled;

/*

https://github.com/gdquest-demos/godot-shaders

https://godotshaders.com/shader/3d-burn-dissolve/

https://docs.godotengine.org/en/stable/tutorials/shaders/shader_reference/shading_language.html

*/

uniform vec4 albedo : source_color = vec4(1.0);
uniform sampler2D texture_albedo : source_color;

uniform vec4 emission_color : source_color = vec4(1.0);
uniform float emission_amount;

uniform sampler2D dissolve_texture;
uniform float burn_size : hint_range(0,2);
uniform float dissolve_amount : hint_range(0,1);


void fragment() {
	vec4 albedo_tex = texture(texture_albedo,UV);
	ALBEDO = albedo.rgb * albedo_tex.rgb;
	
	float sample = texture(dissolve_texture, UV).r;
	float emission_value = 1.0 - smoothstep(dissolve_amount, dissolve_amount + burn_size, sample);
	EMISSION = vec3(emission_value * emission_amount * emission_color.rgb);
	ALPHA = smoothstep(dissolve_amount - burn_size, dissolve_amount, sample);
}