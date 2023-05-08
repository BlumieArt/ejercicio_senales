extends TextureButton

var blockViolet = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func _ready():
	pass 



func _process(delta):
	pass


func _on_button_down():
	generate_block()
	pass 
	
func generate_block():
	var blockVioletInstance = blockViolet.instantiate()
	add_child(blockVioletInstance)
	pass
