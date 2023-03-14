extends Node2D
onready var label=$Label
onready var sprite=$Mc
var event;

func _ready():
	sprite.play("MC00")
	pass
func _physics_process(delta):
	if label.Scene_count>=6:
		get_tree().change_scene("res://Scene/scene1_2.tscn")
		
	if (label.Scene_count>=1 and label.Scene_count<=3 ):
		sprite.play("MC05")
	if (label.Scene_count==4):
		sprite.play("MC00")
	if (label.Scene_count==5):
		sprite.play("MC01")
	pass
func _on_Area2D_mouse_entered():
	pass



