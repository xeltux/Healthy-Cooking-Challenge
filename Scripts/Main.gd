extends Node2D

var jmenu_in_use = false
var imenu_in_use = false

var veggies = []

var recipie1 = ['carrot', 'cheese', 'pennepasta'] # Tutorial
var recipie2 = ['bellpepper', 'cauliflower', 'onion', 'ricevinegar', 'sesameoil', 'soysauce'] # Stir Fried Cauliflower
var recipie3 = ['sage', 'filleted salmon', 'garlicpowder', 'oliveoil', 'salt']

var recipies = ['recipie1', 'recipie2', 'recipie3']

func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Assets/Dialog/tutorial.dialogue"), "start")
	$Menu.visible = false

var menuIsBeingUsed = false


func _process(delta):
	pass
func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://Assets/Dialog/tutorial.dialogue"), "start")



func _on_menu_button_pressed():
	if menuIsBeingUsed == false:
		$Menu.visible = true
		menuIsBeingUsed = true
	else:
		$Menu.visible = false
		menuIsBeingUsed = false


func _on_ingredients_toggled(button_pressed):
	if button_pressed == true:
		$IngredientsMenu.visible = true
	else:
		$IngredientsMenu.visible = false


func _on_journal_toggled(button_pressed):
	if button_pressed == true:
		$JournalMenu.visible = true
	else:
		$JournalMenu.visible = false


func _on_pot_area_entered(area):
	var body_name = area.get_name()
	veggies.append(body_name)
	area.queue_free()
	for i in range(recipies.size()):
		var current_array = recipies[i]
		if arrays_match(veggies, current_array) == true:
			pass
		else:
			pass
func arrays_match(array1, array2):
	if array1.size() != array2.size():
		return false
	var sorted_array1 = array1.duplicate()
	sorted_array1.sort()
	var sorted_array2 = array2.duplicate()
	sorted_array2.sort()
	for i in range(sorted_array1.size()):
		if sorted_array1[i] != sorted_array2[i]:
			return false
	return true
