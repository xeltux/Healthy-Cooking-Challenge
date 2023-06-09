extends Area2D

var dragging = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Normal.visible = true
	$Chopped.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dragging == true:
		if game.pouring == false:
			global_position = lerp(global_position, get_global_mouse_position(), 25*delta)

func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		if game.pouring == false:
			$Normal.visible = false
			$Chopped.visible = true 
			if Input.is_action_just_pressed('ui_touch'):
				dragging = true

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and not event.pressed:
			if game.pouring == false:
				dragging = false
