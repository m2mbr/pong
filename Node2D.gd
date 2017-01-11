extends Node

var screen_size
var pad_size
var direction = Vector2(1.0, 0.0)

# Constant for pad speed (in pixels/second)
const INITIAL_BALL_SPEED = 80
# Speed of the ball (also in pixels/second)
var ball_speed = INITIAL_BALL_SPEED
# Constant for pads speed
const PAD_SPEED = 150

func _ready():
	screen_size = get_viewport_rect().size
	pad_size = get_node("left").get_texture().get_size()
	set_process(true)
	print("ready...")
	
func _process(delta):
	var ball_pos = get_node("ball").get_pos()
	print(ball_pos)