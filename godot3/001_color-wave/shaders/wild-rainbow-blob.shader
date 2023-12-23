shader_type spatial;

uniform float wave_height = 0.2;
uniform sampler2D example_texture : hint_albedo;

void vertex() {
	VERTEX.y += sin(TIME * 5.0 + VERTEX.x * 10.0) * wave_height;
}

void fragment() {
	vec3 color;
	color.r = (sin(TIME * 6.0 + VERTEX.x * 10.0) + 1.0) * 0.5;
	color.g = (sin(TIME * 7.0 + VERTEX.x * 10.0) + 1.0) * 0.5;
	color.b = (sin(TIME * 8.0 + VERTEX.x * 10.0) + 1.0) * 0.5;
	ALBEDO = color;
}
