class_name Player extends Actor;

### Variables ###
var inputs: Dictionary = {
	"player_up": Vector2.UP,
	"player_down": Vector2.DOWN,
	"player_left": Vector2.LEFT,
	"player_right": Vector2.RIGHT
};


func _input(event: InputEvent) -> void:
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(inputs[dir]);
