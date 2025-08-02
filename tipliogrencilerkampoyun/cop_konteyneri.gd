extends Sprite2D

@export var konteynerler : Array[Texture2D] = []
@onready var alan = $alan
const havai_fisek = preload("res://havai_fisek.tscn")

func _ready() -> void:
	texture = konteynerler.pick_random()

func oyuncu_degdi() -> void:
	print("DENEME")
	self.add_child(havai_fisek.instantiate())
	
