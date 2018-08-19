extends Node2D

export var vel = -5

func _ready():
	set_process(true)
	
func _process(delta): # delta = 1/numero de frames/s
	set_pos(get_pos() + Vector2(vel + delta,0))
	
	