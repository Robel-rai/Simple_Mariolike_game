tool
extends Button

export(String, FILE) var next_scene_path: = ""

func _on_button_up() -> void:
	get_tree().change_scene(next_scene_path)

func _get_configuration_warning() -> String:
	return "Please Set in a path for the Var Next Scene Path" if next_scene_path == "" else ""