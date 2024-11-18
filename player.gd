extends KinematicBody2D

# Configurações
var speed = 200
var jump_force = -400
var gravity = 900
var velocity = Vector2()

func _physics_process(delta):
    # Aplicar gravidade
    velocity.y += gravity * delta
    
    # Controle de movimento horizontal
    if Input.is_action_pressed("ui_left"):
        velocity.x = -speed
    elif Input.is_action_pressed("ui_right"):
        velocity.x = speed
    else:
        velocity.x = 0
    
    # Pulo
    if is_on_floor() and Input.is_action_just_pressed("ui_jump"):
        velocity.y = jump_force
    
    # Mover jogador
    velocity = move_and_slide(velocity, Vector
