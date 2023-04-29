extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Normal.visible = true
	$Chopped.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		$Cut.play()
		$Normal.visible = false
		$Chopped.visible = true
