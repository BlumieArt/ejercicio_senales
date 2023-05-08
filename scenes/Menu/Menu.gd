extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	
	#OPCION 1 
	var redGen = get_node("RedGenerator")
	redGen.button_down.connect(count_new_instance)
	var violetGen = get_node("VioletGenerator")
	violetGen.button_down.connect(count_new_instance)
	
	#OPCION 2 (las dos me funcionaron)
	#$RedGenerator.button_down.connect(count_new_instance)
	#$VioletGenerator.button_down.connect(count_new_instance)
	pass

func count_new_instance():
	instancesCount += 1 
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass
