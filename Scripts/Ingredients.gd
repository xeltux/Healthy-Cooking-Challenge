extends Area2D

var dragging = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Normal.visible = true
	$Chopped.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_touch"):
		if dragging == false:
			$Thing.position = get_viewport().get_mouse_position()

func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		$Cut.play()
		$Normal.visible = false
		$Chopped.visible = true
		
