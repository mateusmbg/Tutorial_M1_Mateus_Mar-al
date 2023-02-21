extends Node2D
var lista: Array = []


func _on_criar_texto_pressed():
#função que ao pressionar o botão cria textos
	var itens_texto = $LineEdit.text
	print(itens_texto)
	$LineEdit.text = ""
	
	for item in itens_texto:
		$ColorRect/resposta.text = (itens_texto)
	
		


func _on_criar_lista_pressed():
#função que ao pressionar o botão cria listas quebrando a sting
	var intens_lista = $LineEdit.text
	var intem_separado = intens_lista.split(" ")
	print(intem_separado)
	$LineEdit.text = ""
	
	for item in intem_separado:
		$ColorRect/resposta.text += (item +"\n")

func _on_deletar_pressed():
	#função que apaga o texto
	$ColorRect/resposta.text = " "


func _on_exemplo_pressed():
#função que ao pressionar dá um exemplo de lista
	var itens = "Maçã Melão Banana"
	var intem_separado = itens.split(" ")
	print(intem_separado)
	for item in intem_separado:
		$ColorRect/resposta.text += (item +"\n")
