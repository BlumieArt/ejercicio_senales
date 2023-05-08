extends TextureButton

func _on_button_down():
	get_tree().call_group("blocks" , "delete")
	pass
