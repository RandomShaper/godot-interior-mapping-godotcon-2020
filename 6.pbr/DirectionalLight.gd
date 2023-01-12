tool
extends DirectionalLight

func _process(delta):
	rotate_x(delta * 1.0)
	rotate_y(delta * 2.0)
