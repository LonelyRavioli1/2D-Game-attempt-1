extends Node2D


func Spawn_Enemy():
	var new_enemy = preload("res://Enemy/enemy_spawn.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_enemy.global_position = %PathFollow2D.global_position
	add_child(new_enemy)



func _on_timer_timeout():
	Spawn_Enemy()

func _on_player_died():
	%Game_Over.visible = true
	get_tree().paused = true
