extends CharacterBody2D

var health = 5
var move_speed := 500.0


func Shoot():
	const BULLET = preload("res://Enemy/enemy_bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_transform = $Shooting_Point.global_transform
	$Shooting_Point.add_child(new_bullet)
	
	#for i in %Shooting_Point.get_child_count(): # Maybe??? (for shooting multiple bullets)
		#get_child(i)
	
# move along the parent path
func _physics_process(delta): 
	get_parent().progress += move_speed * delta
	
	if get_parent().progress == 0: # despawns enemies after going offscreen
		queue_free()

func _on_timer_timeout():
	Shoot()

func Take_Damage(damage):
	health -= damage
	if health <= 0:
		queue_free()


func _on_despawn_timeout():
	move_speed = -500.0
	
