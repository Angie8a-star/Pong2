extends CharacterBody2D

var impulse_speed=200
var speed_increment = 10         
var time_interval = 5              
var timer = 0    

func _ready():
	
	if randi()% 2== 0:
		velocity.x += impulse_speed
		
	else:
		velocity.x -= impulse_speed
		
	if randi()% 2== 0:
		velocity.y += impulse_speed
		
	else:
		velocity.y -= impulse_speed

func _physics_process(delta):
	
	position += velocity * delta
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
	
	timer += delta
	
	if timer >= time_interval:
		velocity *= 1 + speed_increment / 100
		
		timer=0
