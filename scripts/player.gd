extends StaticBody2D

var speed: int = 500
@export var type: Types

func _process(delta: float) -> void:
  move(delta)

func move(delta: float) -> void:
  var new_position: float = speed * delta

  if (type == Types.PLAYER1):
    set_new_position("move_up_player_1", "move_down_player_1", new_position)
  elif (type == Types.PLAYER2):
    set_new_position("move_up_player_2", "move_down_player_2", new_position)

func set_new_position(up_action: String, down_action: String, new_position: float) -> void:
  if Input.is_action_pressed(up_action):
    position.y -= new_position
  elif Input.is_action_pressed(down_action):
    position.y += new_position

  position.y = clamp(position.y, 30, (648 - 30))

enum Types {PLAYER1, PLAYER2}
