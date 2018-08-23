extends Position2D

onready var cano = preload("res://scenes/Cano.tscn")

func _ready():
	randomize()
	pass


func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.set_pos(get_pos() + Vector2(0, rand_range(-500,500)))
	get_owner().add_child(novocano) # cria nova instancia no pai
	
	pass # replace with function body
