extends KinematicBody2D


var velocity = Vector2(0, -100.0)
var health = 1
var score = 10

onready var Explosion = load("res://Effects/Explosion.tscn")
var Effects = null


func _ready():
	velocity.rotated(randf()*2*PI)
	velocity *= (randf()/2 + 1/2)



func _physics_process(delta):
	position += velocity *delta
	position.x = wrapf(position.x, 0, Global.VP.x)
	position.y = wrapf(position.y, 0, Global.VP.y)


func damage(d):
	health -= d
	if health <= 0:
		Effects = get_node_or_null("/root/Game/Effects")
		if Effects != null:
			var explosion = Explosion.instance()
			explosion.global_position = global_position
			Effects.add_child(explosion)
		queue_free()

	




	
	
	
	
	
