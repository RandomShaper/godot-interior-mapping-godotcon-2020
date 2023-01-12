tool
extends Spatial

onready var mesh_instance = $mesh_instance

export var size = Vector3(2.0, 4.0, 2.0) setget set_size
export(ShaderMaterial) var material setget set_material

func _ready():
	set_size(size)
	set_material(material)

func set_size(p_size):
	size = p_size
	if !mesh_instance:
		return
	mesh_instance.mesh.size = p_size
	mesh_instance.translation.y = p_size.y * 0.5

func set_material(p_material):
	material = p_material
	if !mesh_instance:
		return
	mesh_instance.mesh.surface_set_material(0, p_material)
