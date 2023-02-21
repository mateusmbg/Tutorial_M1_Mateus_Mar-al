extends Button

var lista: Array = []

func _on_exemplo_pressed():
	var item = "Maçã Melão Banana"
	var intem_separado = item.split(" ")
	print(intem_separado)
	for intem in intem_separado:
		$RichTextLabel.text += (item +"\n")
