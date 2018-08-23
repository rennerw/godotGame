extends Node2D

var pontos = 0
var estado = 1
const JOGANDO = 1
const PERDENDO = 2
onready var felpudo = get_node("Felpudo") # pega um nó do bagui
onready var time = get_node("TimeToReplay")
onready var fonte = get_node("Node2D/Control/Label")
func _ready():
	pass
func kill():
	felpudo.apply_impulse(Vector2(0,0),Vector2(-1000,0))
	get_node("BackAnim").stop()
	estado = PERDENDO
	get_node("SomHit").play()
	time.start()
	pass

func pontuar():
	pontos += 1
	get_node("SomScore").play()
	fonte.set_text(str(pontos))
func _on_TimeToReplay_timeout():
	get_tree().reload_current_scene()
	pass # replace with function body
