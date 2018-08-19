extends RigidBody2D

func _ready():
	set_process_input(true);
	
func _input(event):
	if event.is_action_pressed("touch"):
		on_touch();
func on_touch():
	## posicao x,y, força do impulso
	apply_impulse(Vector2(0,0),Vector2(0,-1000))