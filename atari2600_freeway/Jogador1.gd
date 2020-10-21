extends Area2D

var tela

#incremento de pontos
signal pontuar

#definição velocidade (export -> acesso no inspector)
export var velocidade = 100

#função estática (setup)
func _ready():
	
	#definição tamanho da tela
	tela = get_viewport_rect().size
	
#função contínua (draw)
func _process(delta):
	#movimentação
	
	##deslocamento x e y
	var deslocamento = Vector2()
	
	##ação descer
	if Input.is_action_pressed("baixo"):
		deslocamento.y +=1
		
	##ação subir
	if Input.is_action_pressed("cima"):
		deslocamento.y -=1
		
	##normalização da movimentação (100px/s)
	if deslocamento.length() > 0:
		deslocamento = deslocamento.normalized() * velocidade
		###iniciar animação
		$AnimatedSprite.play()
	else:
		###parar animação
		$AnimatedSprite.stop()
	
	#posição
	position += deslocamento*delta
	
	#manter-se na tela
	position.y = clamp(position.y, 0, tela.y)
	
	#animar descer
	if deslocamento.y > 0:
		$AnimatedSprite.animation = "descer"
	#animar subir
	else: 
		if deslocamento.y < 0:
			$AnimatedSprite.animation = "subir"

#sinalizar colisão
func _on_Jogador1_body_entered(body):
	
	if body.name == "chegada":
		emit_signal("pontuar")
	else:
		$AudioStreamPlayer2D.play()
	##reiniciar posição
	position.x = 420
	position.y = 696
	
func reinicia1():
	position.x = 420
	position.y = 696
