extends Node2D

var lista: Array = []

func _on_mostrar_lista_pressed():
	var itens = "sal morango pimenta arroz"
	var item_cortado = itens.split(" ")
	print(item_cortado)
	
	for item in item_cortado:
		$resposta.text += (item+ "\n")


func _on_criar_lista_pressed():
	var itens = $LineEdit.text
	var item_cortado = itens.split(" ")
	print(item_cortado)
	
	for item in item_cortado:
		$respsta.text += (item+ "\n")


func _on_apagar_pressed():
	$resposta.text = ""
	
	
func retornar_texto(texto_do_usuario):
	$resposta.text = texto_do_usuario
	$LineEdit.text = ""

func _on_criar_texto_pressed():
	retornar_texto($LineEdit.text)
