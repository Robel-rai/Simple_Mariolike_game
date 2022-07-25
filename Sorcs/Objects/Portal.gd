tool
extends Area2D

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")
export var next_scene: PackedScene

func _get_configuration_warning() -> String:
	return "the next seen property can't be empty" if not next_scene else ""
	

func _on_body_entered(body: PhysicsBody2D) -> void:
	teleport() 

func teleport() -> void:
	anim_player.play("Fade_in")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)