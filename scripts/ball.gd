extends Area2D

var speed: int = 500
var game_size: Array[int] = [0, 648]
var direction: Vector2 = Vector2(0, 0)
var positionn: Vector2 = Vector2(574, 324)

func _ready() -> void:
  reset_position()

func _process(delta: float) -> void:
  move(delta)

func reset_position() -> void:
  $Timer.start()

func _on_timer_timeout() -> void:
  set_direction()
  position = positionn

func set_direction() -> void:
  var values = [1, - 1]
  var x = values.pick_random()
  var y = values.pick_random()

  direction = Vector2(x, y)

func move(delta: float) -> void:
  position += (direction * speed) * delta

  if position.y <= game_size[0] or position.y >= game_size[1]:
    direction.y *= - 1

func _on_body_entered(body: Node2D) -> void:
  if body.is_in_group("players"):
    direction.x *= - 1
