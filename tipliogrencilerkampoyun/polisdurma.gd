extends CharacterBody2D

@export var hareket_hizi : float = 4.5
@export var tekrarlar : bool = true
@export var sprite_node_path : NodePath

var sprite : Sprite2D

func _ready():
	sprite = get_node(sprite_node_path)

func _physics_process(delta: float) -> void:
	if sprite and global_position.x <= -sprite.texture.get_width():
		if tekrarlar:
			global_position.x = sprite.texture.get_width() - 1
		else:
			queue_free()
	global_position.x -= hareket_hizi
