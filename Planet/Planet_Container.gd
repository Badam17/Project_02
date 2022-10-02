extends Node2D

onready var Planet = load("res://Planet/Planet.tscn")
var positions = [Vector2(200,100), Vector2(700,300), Vector2(500,500), Vector2(700,500)]

func _physics_process(_delta):
	if get_child_count() < 1:
		var planet = Planet.instance()
		planet.position = positions[randi() % positions.size()]
		add_child(planet)

func _ready():
	pass
