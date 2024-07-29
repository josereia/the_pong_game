extends Control
class_name Scores

var p1_score: int = 0
var p2_score: int = 0

func increase_score(type: Player.Type) -> void:
  if type == Player.Type.PLAYER1:
    p2_score += 1
  elif type == Player.Type.PLAYER2:
    p1_score += 1
    
  $HBoxContainer/P1ScoreLabel.text = str(p1_score)
  $HBoxContainer/P2ScoreLabel.text = str(p2_score)
