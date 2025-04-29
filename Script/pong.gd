extends Node2D

var puntaje_p1 = 0
var puntaje_p2 = 0



func _on_pi_body_entered(body):
	if body.is_in_group("PELOTA"):
		puntaje_p2 += 1
		$Puntaje2.text = str(puntaje_p2)


func _on_pd_body_entered(body):
	if body.is_in_group("PELOTA"):
		puntaje_p1 += 1
		$Puntaje1.text = str(puntaje_p1)
