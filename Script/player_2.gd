extends CharacterBody2D

var Speed_Impulse=30

func _physics_process(delta):
	
	velocity.x = 0
	position.x= 1130
	
	if (Input.is_action_pressed("P2_UP")):
		velocity.y -=Speed_Impulse

	elif (Input.is_action_pressed("P2_DOWN")):
		velocity.y +=Speed_Impulse
	
	else:
		velocity.y=0
		
	move_and_slide()
