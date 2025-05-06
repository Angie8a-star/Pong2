extends Node2D

var Puntaje_p1 = 0
var Puntaje_p2 = 0


func _on_pared_derecha_body_entered(body):
	if body.is_in_group("pelota"):
		Puntaje_p1 +=1
		$"Puntaje p1".text = str(Puntaje_p1)
		reset()

func _on_pared_izquierda_body_entered(body):
	if body.is_in_group("pelota"):
		Puntaje_p2 +=1
		$"Puntaje p2".text = str(Puntaje_p2)
		reset()
		
func reset():
	var random_x_direction = 1 if randf() < 0.5 else -1 # Elige aleatoriamente 1 o -1 para la dirección en X
	var random_y_direction = 1 if randf() < 0.5 else -1 # Elige aleatoriamente 1 o -1 para la dirección en Y
	var initial_speed = 200 # Puedes mantener una velocidad inicial base

	$Pelota.velocity = Vector2(initial_speed * random_x_direction, initial_speed * random_y_direction)
	$Pelota.position = Vector2(576, 320)
	


func _on_timer_timeout():
	if Puntaje_p1 > Puntaje_p2 and Puntaje_p1 >= 5:
		get_tree().change_scene_to_file("res://scenes/ganador_1.tscn")
		
	elif  Puntaje_p2 > Puntaje_p1 and Puntaje_p2 >= 5:
		get_tree().change_scene_to_file("res://scenes/ganador_2.tscn")
		
