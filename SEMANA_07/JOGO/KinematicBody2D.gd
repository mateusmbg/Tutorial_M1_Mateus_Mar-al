extends KinematicBody2D

var velocidade = Vector2.ZERO

func _ready():
	$AnimatedSprite.play("frente")
	$Item2.visible = true
	$Item3.visible = true
	$RichTextLabel.text = "Você encontrou um dos itens, encontre os outros abaixo"
	
func _process(_delta):

	#essa função programa as ações do player, como andar pra esquerda e para direita
	if Input.is_action_pressed("ui_down"):
		$AnimatedSprite.play("frente")
		velocidade = Vector2(0,+60)
		move_and_slide(velocidade)
		
	if Input.is_action_pressed("ui_up"):
		$AnimatedSprite.play("tras")
		velocidade = Vector2(0,-60)
		move_and_slide(velocidade)
		
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.play("esquerda")
		velocidade = Vector2(-60,0)
		move_and_slide(velocidade)
		
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite.play("direita")
		velocidade = Vector2(60,0)
		move_and_slide(velocidade)

#a função serve para identificar se algum corpo entrou dentro da area 2D
func _on_Area2D_body_entered(body):
	#altera o texto escrito no label dentro do nó do player
	$RichTextLabel.text = "você encontrou o item 3"
	#esconde a sprite do item achado 
	$Item3.visible = false
	#muda a cena após entrar dentro da área 2D
	get_tree().change_scene("res://3tela.tscn")
	
#a função serve para identificar se algum corpo entrou dentro da area 2D
func _on_Area2D2_body_entered(body):
	#altera o texto escrito no label dentro do nó do player
	$RichTextLabel.text = "Você encontrou o item 2, encontre o ultimo "
	#esconde a sprite do item achado 
	$Item2.visible = false
	
