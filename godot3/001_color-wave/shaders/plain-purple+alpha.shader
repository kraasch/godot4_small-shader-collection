shader_type spatial;

void fragment() {
	vec3 red;	red.r=1.0;	red.g=0.0;	red.b=0.0;
	vec3 blu;	blu.r=0.0;	blu.g=0.0;	blu.b=1.0;
	ALBEDO = red;
	ROUGHNESS = 0.1;
	METALLIC = 1.0;
	ALPHA = 0.5;
	EMISSION = blu;
}
