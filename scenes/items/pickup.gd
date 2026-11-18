extends Area2D

var player_nearby: bool = false

func _ready() -> void:
	body_entered.connect(_on_body_entered)
	body_exited.connect(_on_body_exited)

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_nearby = true

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_nearby = false

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and player_nearby:
		print("Gjenstand plukket opp!")
		queue_free()
