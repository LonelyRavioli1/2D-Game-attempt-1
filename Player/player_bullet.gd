extends Area2D

var damage = 1
var travelled_distance = 0

func _physics_process(delta):
	const SPEED = 600
	const RANGE = 1000
	
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * SPEED * delta
	
	travelled_distance += SPEED * delta
	if travelled_distance > RANGE:
		queue_free()


func _on_body_entered(body):
	queue_free()
	if body.has_method("Take_Damage"):
		body.Take_Damage(damage)
