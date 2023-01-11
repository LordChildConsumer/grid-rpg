class_name Actor extends CharacterBody2D;

const TILESIZE = 32;


### Variables ###
var grid_pos := Vector2();

#
# Initialization
#
func _ready() -> void:
	position = position.snapped(Vector2(TILESIZE, TILESIZE));

#
# Movement
#
func move(dir) -> void:
	position += dir * TILESIZE;
