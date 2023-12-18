extends ColorRect
class_name Doodad


func _ready() -> void:
	color = Color(
		randf_range(0.0, 1.0),
		randf_range(0.0, 1.0),
		randf_range(0.0, 1.0)
	)
