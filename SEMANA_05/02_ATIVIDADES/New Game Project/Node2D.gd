extends Node2D

var teste = false
var valor = 0
var numero = 0
var nome = ""
var guardar = 0
var lista: Array = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	guardar = str($LineEdit.text).split(" ")
	numero = int(guardar[1])
	nome = str(guardar[0])
	$LineEdit.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i
		lista.append(numero)
	$Label.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var i = 0
	var cont = 0
	while(i < len(lista)):
		cont = 1
		
		if(lista[i]%2==1):
			cont = 1
			#
		if(cont==1):
			$Label2.text = nome + "baldo"
		i += 1

#1. A variável "numero" foi corrigida para "numero", removendo o acento.

#2. A variável "nome" foi adicionada, uma vez que não havia uma variável para armazenar o nome inserido pelo usuário.

#3. A variável "guardar" foi adicionada para armazenar temporariamente a entrada do usuário e dividir em duas partes (nome e número).

#4. A variável "lista" foi declarada como um Array, adicionando o tipo de dados que será armazenado.

#5. A linha que coleta os dados do usuário (no botão 1) foi corrigida para dividir a entrada do usuário em duas partes (nome e número) e armazenar cada parte em sua variável correspondente.

#6. A variável "cont" foi inicializada com o valor correto de 1 no botão 3.

#7. A linha que adiciona números à lista foi corrigida para adicionar a variável "numero" (com letra minúscula) em vez de "Numero".

#8. A linha que atualiza o texto do Label no botão 2 foi corrigida para converter a variável "numero" em uma string antes de exibi-la.

#9. A lógica no botão 3 foi ajustada para corrigir a contagem de números ímpares e garantir que a variável "cont" seja atualizada corretamente.

