extends KinematicBody2D
var velocidade = Vector2.ZERO
func _ready():
	$AnimatedSprite.play("frente")
	
func _process(_delta):
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


