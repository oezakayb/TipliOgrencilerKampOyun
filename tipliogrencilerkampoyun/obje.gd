extends Timer

const arkaplan_nesnesi = preload("res://arkaplan_nesnesi.tscn")
@export var arkaplan_nesneleri : Array[Texture]

func _init() -> void:
	wait_time = 4

func zaman_dolunca() -> void:
	wait_time = randf_range(4, 7)
	var nesne = arkaplan_nesnesi.instantiate()
	nesne.texture = arkaplan_nesneleri.pick_random()
	nesne.position.x = 1920
	add_child(nesne)
