shader_type spatial;

void vertex() {
	VERTEX.y += sin(TIME * 2.0);
}

void fragment() {
	vec3 color;
	color.r = (sin(TIME * 5.0) + 1.0) * 0.5;
	color.g = 0.0;
	color.b = 0.0;
	ALBEDO = color;
}
