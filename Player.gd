extends CharacterBody2D

var SPEED = 400

func _physics_process(delta):
	var direction = Vector2.ZERO 	# Vectore2(0,0)
	
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1 * SPEED
	if Input.is_action_pressed("ui_down"): 
		direction.y += 1 * SPEED
		
	move_and_slide()	# player will move until it hit the wall
