extends Area2D

@export var type: Player.Type

func _on_area_entered(_area: Area2D) -> void:
	$"/root/Game/Scores".increase_score(type)
	$"/root/Game/Ball".reset_position()
