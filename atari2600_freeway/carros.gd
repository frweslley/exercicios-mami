extends RigidBody2D


func _ready():
	#array para randomização dos carros
	var carros = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = carros[randi() % carros.size()]

#liberar memória quando carro sai da tela!!!!
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
