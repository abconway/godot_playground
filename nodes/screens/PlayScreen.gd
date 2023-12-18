extends GameScreen
class_name PlayScreen


@export var experiment_scene : PackedScene
@onready var _anchor := $CenterContainer/Control


func _ready() -> void:
	var experiment = experiment_scene.instantiate()
	_anchor.add_child(experiment)
