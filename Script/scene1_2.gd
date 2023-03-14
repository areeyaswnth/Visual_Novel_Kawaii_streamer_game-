extends Node2D
onready var label=$Label

func _ready():
	pass 
func _physics_process(delta):
	if (label.Scene_count>=7):
