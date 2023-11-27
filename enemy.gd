extends Area2D

var og_pos
var dir = 1
var steps = 100
var diry = 1
func _ready():
	og_pos = position.x

func _process(delta):
	
	position.x = position.x + dir
	position.y = position.y + diry
	
	if position.x >= Global.froggyx:
		dir = -1
	elif position.x < Global.froggyx:
		dir = 1
		
	if position.y >= Global.froggyy:
		diry = -1
	elif position.y < Global.froggyy:
		diry = 1

func _on_body_exited(body):
	if body.has_method("delete"):
		body.delete()
