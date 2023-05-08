extends TextureButton

var blockRed = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func _ready():
	pass



func _process(delta):
	pass


func _on_button_down():
	generate_block()
	pass 

func generate_block():
	var blockRedInstance = blockRed.instantiate()
	add_child(blockRedInstance)
	pass
