extends Node
var lives = 1
var targetClicked = 0
var Block_1_mouse_over = false
var Block_2_mouse_over = false 
var Block_3_mouse_over = false
var Block_4_mouse_over = false
var Block_5_mouse_over = false
var Block_6_mouse_over = false
var Block_7_mouse_over = false
var Block_8_mouse_over = false
var Block_9_mouse_over = false
var Block_10_mouse_over = false
var Block_11_mouse_over = false
var Block_12_mouse_over = false
var Block_13_mouse_over = false
var Block_14_mouse_over = false
var Block_15_mouse_over = false
var Block_16_mouse_over = false


func _ready():
	randomize()
	$GameStart.start()
	
func _on_GameStart_timeout():
	var Row_1 = randi() % 4 + 1
	var Row_2 = randi() % 4 + 1
	var Row_3 = randi() % 4 + 1
	var Row_4 = randi() % 4 + 1
	
	#Tests for which Row's Collumn is the target and makes it black for 0.08 seconds
	match Row_1:
		1:
			$TimeColored.start()
			$Block_1/Block_1_spr.texture = load("res://Assests/Black.png")
			$Block_1/Block_1_spr.isTarget = true
		2:
			$TimeColored.start()
			$Block_2/Block_2_spr.texture = load("res://Assests/Black.png")
			$Block_2/Block_2_spr.isTarget = true
		3:
			$TimeColored.start()
			$Block_3/Block_3_spr.texture = load("res://Assests/Black.png")
			$Block_3/Block_3_spr.isTarget = true
		4:
			$TimeColored.start()
			$Block_4/Block_4_spr.texture = load("res://Assests/Black.png")
			$Block_4/Block_4_spr.isTarget = true
			
	match Row_2:
		1:
			$TimeColored.start()
			$Block_5/Block_5_spr.texture = load("res://Assests/Black.png")
			$Block_5/Block_5_spr.isTarget = true
			
		2:
			$TimeColored.start()
			$Block_6/Block_6_spr.texture = load("res://Assests/Black.png")
			$Block_6/Block_6_spr.isTarget = true
		3:
			$TimeColored.start()
			$Block_7/Block_7_spr.texture = load("res://Assests/Black.png")
			$Block_7/Block_7_spr.isTarget = true
		4:
			$TimeColored.start()
			$Block_8/Block_8_spr.texture = load("res://Assests/Black.png")
			$Block_8/Block_8_spr.isTarget = true
			
	match Row_3:
		1:
			$TimeColored.start()
			$Block_9/Block_9_spr.texture = load("res://Assests/Black.png")
			$Block_9/Block_9_spr.isTarget = true
			
		2:
			$TimeColored.start()
			$Block_10/Block_10_spr.texture = load("res://Assests/Black.png")
			$Block_10/Block_10_spr.isTarget = true
		3:
			$TimeColored.start()
			$Block_11/Block_11_spr.texture = load("res://Assests/Black.png")
			$Block_11/Block_11_spr.isTarget = true
		4:
			$TimeColored.start()
			$Block_12/Block_12_spr.texture = load("res://Assests/Black.png")
			$Block_12/Block_12_spr.isTarget = true

	match Row_4:
		1:
			$TimeColored.start()
			$Block_13/Block_13_spr.texture = load("res://Assests/Black.png")
			$Block_13/Block_13_spr.isTarget = true
			
		2:
			$TimeColored.start()
			$Block_14/Block_14_spr.texture = load("res://Assests/Black.png")
			$Block_14/Block_14_spr.isTarget = true
		3:
			$TimeColored.start()
			$Block_15/Block_15_spr.texture = load("res://Assests/Black.png")
			$Block_15/Block_15_spr.isTarget = true
		4:
			$TimeColored.start()
			$Block_16/Block_16_spr.texture = load("res://Assests/Black.png")
			$Block_16/Block_16_spr.isTarget = true

#Waits for the clicking
func _input(event):
	if Block_1_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_1/Block_1_spr.texture = load("res://Assests/On Click.png")
		if $Block_1/Block_1_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_2_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_2/Block_2_spr.texture = load("res://Assests/On Click.png") 
		if $Block_2/Block_2_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_3_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_3/Block_3_spr.texture = load("res://Assests/On Click.png") 
		if $Block_3/Block_3_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_4_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_4/Block_4_spr.texture = load("res://Assests/On Click.png") 
		if $Block_4/Block_4_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_5_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_5/Block_5_spr.texture = load("res://Assests/On Click.png") 
		if $Block_5/Block_5_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_6_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_6/Block_6_spr.texture = load("res://Assests/On Click.png") 
		if $Block_6/Block_6_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_7_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_7/Block_7_spr.texture = load("res://Assests/On Click.png") 
		if $Block_7/Block_7_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_8_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_8/Block_8_spr.texture = load("res://Assests/On Click.png") 
		if $Block_8/Block_8_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
		
	if Block_9_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_9/Block_9_spr.texture = load("res://Assests/On Click.png") 
		if $Block_9/Block_9_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 

	if Block_10_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_10/Block_10_spr.texture = load("res://Assests/On Click.png") 
		if $Block_10/Block_10_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1

	if Block_11_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_11/Block_11_spr.texture = load("res://Assests/On Click.png") 
		if $Block_11/Block_11_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 

	if Block_12_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_12/Block_12_spr.texture = load("res://Assests/On Click.png") 
		if $Block_12/Block_12_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 

	if Block_13_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_13/Block_13_spr.texture = load("res://Assests/On Click.png") 
		if $Block_13/Block_13_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 

	if Block_14_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_14/Block_14_spr.texture = load("res://Assests/On Click.png") 
		if $Block_14/Block_14_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 

	if Block_15_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_15/Block_15_spr.texture = load("res://Assests/On Click.png") 
		if $Block_15/Block_15_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 

	if Block_16_mouse_over and event.is_pressed() and event.button_index == BUTTON_LEFT:
		$Block_16/Block_16_spr.texture = load("res://Assests/On Click.png") 
		if $Block_16/Block_16_spr.isTarget:
			targetClicked += 1
		else:
			lives -= 1 
#Changes the colour to default
func _on_TimeColored_timeout():
	$Block_1/Block_1_spr.texture = load("res://Assests/Solid color.png")
	$Block_2/Block_2_spr.texture = load("res://Assests/Solid color.png")
	$Block_3/Block_3_spr.texture = load("res://Assests/Solid color.png")
	$Block_4/Block_4_spr.texture = load("res://Assests/Solid color.png")
	$Block_5/Block_5_spr.texture = load("res://Assests/Solid color.png")
	$Block_6/Block_6_spr.texture = load("res://Assests/Solid color.png")
	$Block_7/Block_7_spr.texture = load("res://Assests/Solid color.png")
	$Block_8/Block_8_spr.texture = load("res://Assests/Solid color.png")
	$Block_9/Block_9_spr.texture = load("res://Assests/Solid color.png")
	$Block_10/Block_10_spr.texture = load("res://Assests/Solid color.png")
	$Block_11/Block_11_spr.texture = load("res://Assests/Solid color.png")
	$Block_12/Block_12_spr.texture = load("res://Assests/Solid color.png")
	$Block_13/Block_13_spr.texture = load("res://Assests/Solid color.png")
	$Block_14/Block_14_spr.texture = load("res://Assests/Solid color.png")
	$Block_15/Block_15_spr.texture = load("res://Assests/Solid color.png")
	$Block_16/Block_16_spr.texture = load("res://Assests/Solid color.png")



func _on_Block_1_mouse_entered():
	Block_1_mouse_over = true

func _on_Block_1_mouse_exited():
	Block_1_mouse_over = false

func _on_Block_2_mouse_entered():
	Block_2_mouse_over = true

func _on_Block_2_mouse_exited():
	Block_2_mouse_over = false

func _on_Block_3_mouse_entered():
	Block_3_mouse_over = true
	
func _on_Block_3_mouse_exited():
	Block_3_mouse_over = false
	
func _on_Block_4_mouse_entered():
	Block_4_mouse_over = true

func _on_Block_4_mouse_exited():
	Block_4_mouse_over = false

func _on_Block_5_mouse_entered():
	Block_5_mouse_over = true

func _on_Block_5_mouse_exited():
	Block_5_mouse_over = false

func _on_Block_6_mouse_entered():
	Block_6_mouse_over = true

func _on_Block_6_mouse_exited():
	Block_6_mouse_over = false

func _on_Block_7_mouse_entered():
	Block_7_mouse_over = true

func _on_Block_7_mouse_exited():
	Block_7_mouse_over = false

func _on_Block_8_mouse_entered():
	Block_8_mouse_over = true

func _on_Block_8_mouse_exited():
	Block_8_mouse_over = false
	
func _on_Block_9_mouse_entered():
	Block_9_mouse_over = true
	
func _on_Block_9_mouse_exited():
	Block_9_mouse_over = false

func _on_Block_10_mouse_entered():
	Block_10_mouse_over = true

func _on_Block_10_mouse_exited():
	Block_10_mouse_over = false

func _on_Block_11_mouse_entered():
	Block_11_mouse_over = true

func _on_Block_11_mouse_exited():
	Block_11_mouse_over = false

func _on_Block_12_mouse_entered():
	Block_12_mouse_over = true

func _on_Block_12_mouse_exited():
	Block_12_mouse_over = false

func _on_Block_13_mouse_exited():
	Block_13_mouse_over = false

func _on_Block_13_mouse_entered():
	Block_13_mouse_over = true

func _on_Block_14_mouse_entered():
	Block_14_mouse_over = true

func _on_Block_14_mouse_exited():
	Block_14_mouse_over = false

func _on_Block_15_mouse_exited():
	Block_15_mouse_over = false

func _on_Block_15_mouse_entered():
	Block_15_mouse_over = true

func _on_Block_16_mouse_exited():
	Block_16_mouse_over = false

func _on_Block_16_mouse_entered():
	Block_16_mouse_over = true

#Restart and reload button
func _on_Restart_pressed():
	get_tree().reload_current_scene()

func _on_Quit_pressed():
	get_tree().quit()


func _process(delta):
	
	$Lives.text = "Lives: " + String(lives)
	if lives <= 0:
		$Lost.visible = true
		$Score.visible = true
		$Score.text = "Score: " + String(Global.score)
		
	if targetClicked >= 4:
		Global.score += 1
		get_tree().reload_current_scene()

