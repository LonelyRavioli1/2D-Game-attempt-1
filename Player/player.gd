extends CharacterBody2D

# player stats
var health = 5
var move_speed = 800.0

signal died

func Shoot():
	const BULLET = preload("res://Player/player_bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_transform = $Shooting_Point.global_transform
	$Shooting_Point.add_child(new_bullet)

func _physics_process(_delta):
	var direction = Input.get_vector("MoveLeft", "MoveRight", "MoveUp", "MoveDown")
	velocity = direction * move_speed
	move_and_slide()
	
	#if Input.is_action_pressed("Shoot"): # nah, i dont know how to do that
		#$Timer.start(0.2)
		#print("start")

func _on_timer_timeout():
	Shoot()

func Take_Damage(damage): 
	health -= damage
	if health <= 0:
		emit_signal("died")
		#get_tree().paused = true

