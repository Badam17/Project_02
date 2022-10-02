extends Node2D

onready var Meteor = load("res://Meteor/Meteor.tscn")
var positions = [Vector2(100,100), Vector2(800,100), Vector2(500,500), Vector2(800,500)]



func _physics_process(_delta):
	if get_child_count() < 3:
		var meteor = Meteor.instance()
		meteor.position = positions[randi() % positions.size()]
		add_child(meteor)

func _ready():
	pass
