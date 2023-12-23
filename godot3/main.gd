extends Spatial

onready var shader : ShaderMaterial = $MeshInstance.get_surface_material(0)

func _process(delta):
	if (Input.is_action_just_pressed("click")):
#		shader.set_shader_param("wave_height", rand_range(0,1))
		shader.set_shader_param("head_color", Vector3(rand_range(0,1), rand_range(0,1), rand_range(0,1)))
		shader.set_shader_param("face_color", Vector3(rand_range(0,1), rand_range(0,1), rand_range(0,1)))
