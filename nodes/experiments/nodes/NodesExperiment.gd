extends GameExperiment
class_name NodesExperiemnt


@export var doodad_scene : PackedScene
@onready var _items := $Control/Items


func _ready() -> void:
	for i in range(25):
		var doodad = doodad_scene.instantiate()
		_items.add_child(doodad)
