extends Area2D

func _ready():
	$player/Label.text = "Encontre os objetos abaixo"
	$player/Item1.visible = true

func _on_Area2D_body_entered(body):
	$player/Label.text = "Você achou o item 1 "
	$player/Item1.visible = false
	get_tree().change_scene("res://2tela.tscn")
