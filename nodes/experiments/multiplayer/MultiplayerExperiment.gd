extends Node2D
class_name MultiplayerExperiment



func _on_client_button_pressed() -> void:
	get_tree().change_scene_to_file("res://nodes/experiments/multiplayer/Client.tscn")


func _on_server_button_pressed() -> void:
	get_tree().change_scene_to_file("res://nodes/experiments/multiplayer/Server.tscn")
