extends Node2D

#var game_speed := 1.0
#var enemy_move_speed = 300.0

#
#func spawn_mob():
	#var new_mob = preload("res://mob.tscn").instantiate()
	#%PathFollow2D.progress_ratio = randf()
	#new_mob.global_position = %PathFollow2D.global_position
	#add_child(new_mob)
#
#func spawn_tree():
	#var new_tree = preload("res://tree.tscn").instantiate()
	#%PathFollow2D.progress_ratio = randf()
	#new_tree.global_position = %PathFollow2D.global_position
	#add_child(new_tree)
#
#
#func _on_timer_timeout():
	#spawn_mob()
	#spawn_tree()
#
#
#func _on_player_health_depleted():
	##emit_signal("player_died", game_speed)
	##$Mob.player_died()
	#%GameOver.visible = true
	##while game_speed > 0.0:
		##game_speed -= 0.1
		
	##get_tree().paused = true
##func _ready():
	##$game.connect("timescale", $mob, "mob_timescale")
