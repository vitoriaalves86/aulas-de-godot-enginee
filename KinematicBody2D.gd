extends KinematicBody2D
var mov = Vector2 (0,0)
func _process(delta):
	if (is_on_floor()):
		mov.y =0
	else:
		mov.y += 10
	
	if (Input.is_action_just_pressed ("ui_up") and is_on_floor()):
		mov.y = -300
	elif (Input.is_action_pressed ("ui_right")):
		mov.x = 500
	elif (Input.is_action_pressed("ui_left")):
		mov.x = -500
	else:
		mov.x = 0
	
	move_and_slide (mov, Vector2 (0, -1))
	
	
