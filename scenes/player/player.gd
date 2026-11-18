
extends CharacterBody2D

@export var speed: float = 150.0

func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
        "ui_down"
	)

	velocity = direction * speed
	move_and_slide()

func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and not event.echo:
		print("Tast registrert: ", event.as_text())
		print("Keycode: ", event.keycode)
		print("Physical: ", event.physical_keycode)
