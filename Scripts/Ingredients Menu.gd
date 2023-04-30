extends Node2D

func _ready():
	pass


func _on_bellpepper_pressed():
	var bellpepper = preload('res://Scenes/Ingredients/bellpepper.tscn')
	var out = bellpepper.instantiate()
	get_parent().add_child(out)
	bellpepper.position = $Marker2D.position


func _on_carrot_pressed():
	var scene = preload('res://Scenes/Ingredients/carrot.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position


func _on_cheese_pressed():
	var scene = preload('res://Scenes/Ingredients/cheese.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position


func _on_cauliflower_pressed():
	var scene = preload('res://Scenes/Ingredients/colliflower.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position

func _on_onion_pressed():
	var scene = preload('res://Scenes/Ingredients/onion.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position


func _on_pennepasta_pressed():
	var scene = preload('res://Scenes/Ingredients/pennepasta.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position


func _on_sage_pressed():
	var scene = preload('res://Scenes/Ingredients/pennepasta.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position


func _on_filleted_salmon_pressed():
	var scene = preload('res://Scenes/Ingredients/pennepasta.tscn')
	var out = scene.instantiate()
	get_parent().add_child(out)
	scene.position = $Marker2D.position
