extends CharacterBody2D

#const SPEED = 300.0

func _physics_process(_delta):
	var direction = Input.get_vector("MoveLeft", "MoveRight", "MoveUp", "MoveDown")
	velocity = direction * 800.0
	move_and_slide()
#func _process(delta):
	#if Input.get_axis("MoveUp", "MoveDown"):
		#pass
		##position += Vector2.AXIS_Y
	#if Input.is_action_pressed("MoveLeft"):
		#pass
	#if Input.is_action_pressed("MoveUp"):
		#pass
	#if Input.is_action_pressed("MoveDown"):
		#pass
