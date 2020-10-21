extends Node

#carregamento dos carros
const gera_carro = preload("res://carros.tscn")

#definição da posição das pistas para lançar os carros
var pistas = [600, 544, 488, 438, 384, 324, 272, 160, 104]

#inicialização da marcação de pontos
var pontuacao1 = 0
var pontuacao2 = 0

func _ready():
	#esconder botão
	$botao.hide()

#geração dos carros na posição e tempo definido
func _on_tempo_carro_timeout():
	var novo_carro = gera_carro.instance()
	add_child(novo_carro)
	##criação na posição inicial antes da pista 
	novo_carro.position.x = -10
	## posição vertical aleatória no array de pistas
	novo_carro.position.y = pistas[randi() % pistas.size()]
	## range de velocidade em no eixo x
	novo_carro.linear_velocity = Vector2(rand_range(700, 715), 0)
	
	

#pontuação do Jogador 1
func _on_Jogador1_pontuar():
	if pontuacao1 < 10:
		pontuacao1 += 1
		$pontuar.play()
		$pontos1.text = str(pontuacao1)
		##jogador 1 ganhou
	if pontuacao1 >= 10:
		$botao.show()
		$ganhar.play()
		$tempo_carro.stop()
		$final.text = "Jogador 1 ganhou!"

#Pontuação do Jogador 2
func _on_Jogador2_outro_pontuar():
	if pontuacao2 < 10:
		pontuacao2 += 1
		$pontuar.play()
		$pontos2.text = str(pontuacao2)
		##jogador 2 ganhou
	if pontuacao2 >= 10:
		$botao.show()
		$ganhar.play()
		$tempo_carro.stop()
		$final.text = "Jogador 2 ganhou!"

#reiniciando pra um novo jogo
func _on_botao_pressed():
	$botao.hide()
	pontuacao1 = 0
	pontuacao2 = 0
	$pontos1.text = "0"
	$pontos2.text = "0"
	$final.text = ""
	$tempo_carro.start()
	$Jogador1.reinicia1()
	$Jogador2.reinicia2()
	
	
