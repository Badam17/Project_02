extends AnimatedSprite


onready var Explosion = load("res://Explosion.tscn")



func _ready():
	play("default")




func _on_Explosion_animation_finished():
	queue_free()
