extends Node2D

export var vel = -5
var cena
func _ready():
	cena = get_tree().get_current_scene()
	set_process(true)
	
func _process(delta): # delta = 1/numero de frames/s
	set_pos(get_pos() + Vector2(vel + delta,0))
	
	

func _on_Area2D_body_enter( body ):
	if (body.get_name() == "Felpudo"):
		cena.kill()
	pass # replace with function body


func _on_Pontos_body_enter( body ):
	cena.pontuar()
	pass # replace with function body
