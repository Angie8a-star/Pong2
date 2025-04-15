extends CharacterBody2D

var Speed_Impulse=30

func _physics_process(delta):
	
	velocity.x = 0
	position.x= 28
	
	if (Input.is_action_pressed("P1_UP")):
		velocity.y -=Speed_Impulse

	elif (Input.is_action_pressed("P1_DOWN")):
		velocity.y +=Speed_Impulse
	
	else:
		velocity.y=0
		
	move_and_slide()
	
