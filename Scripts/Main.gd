extends Node2D

var jmenu_in_use = false
var imenu_in_use = false

# Called when the node enters the scene tree for the first time.
func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://Assets/Dialog/tutorial.dialogue"), "start")
	$Menu.visible = false

var menuIsBeingUsed = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		DialogueManager.show_example_dialogue_balloon(load("res://Assets/Dialog/tutorial.dialogue"), "start")
	pass


func _on_menu_button_pressed():
	if menuIsBeingUsed == false:
		$Menu.visible = true
		menuIsBeingUsed = true
	else:
		$Menu.visible = false
		menuIsBeingUsed = false

func _on_pot_body_entered(body):
	body.queue_free()


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
