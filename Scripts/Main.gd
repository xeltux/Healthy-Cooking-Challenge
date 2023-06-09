extends Node2D

var jmenu_in_use = false
var imenu_in_use = false

const recipie1_final = preload("res://Scenes/Output/tutorial_dish.tscn")
const recipie2_final = preload("res://Scenes/Output/stir_fried_cauliflower.tscn")

var veggies = []

var recipie1 = ['carrot', 'cheese', 'pennepasta', 'bellpepper'] # Tutorial
var recipie2 = ['bellpepper', 'cauliflower', 'onion', 'ricevinegar', 'sesameoil', 'soysauce'] # Stir Fried Cauliflower
var recipie3 = ['sage', 'filleted salmon', 'garlicpowder', 'oliveoil', 'salt']
var recipie4 = ['cauliflower', 'bellpepper', 'onion']

var recipies = ['recipie1', 'recipie2', 'recipie3']

func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Assets/Dialog/tutorial.dialogue"), "start")
	$Menu.visible = false


func _process(delta):
	pass

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://Assets/Dialog/tutorial.dialogue"), "start")

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
	if area.is_in_group('ingridients'):
		area.queue_free()
	else:
		game.pouring = true
		area.position = $Sauces.position
		print(veggies)

func arrays_compare(array1, array2):
	if array1.size() != array2.size(): return false
	for item in array1:
		if !array2.has(item):
			return false
		if array1.count(item) != array2.count(item):
			return false
	return true


func _on_cook_pressed():
	if arrays_compare(veggies, recipie1) == true:
		var tutorial_dish = recipie1_final.instantiate()
		get_parent().add_child(tutorial_dish)
		tutorial_dish.position = $Marker2D.position
	if arrays_compare(veggies, recipie2) == true:
		var dish1 = recipie2_final.instantiate()
		get_parent().add_child(dish1)
		dish1.position = $Marker2D.position
	if arrays_compare(veggies, recipie3) == true:
		pass


func _on_menu_button_toggled(button_pressed):
	if button_pressed == true:
		$Menu.visible = true
	else:
		$Menu.visible = false
