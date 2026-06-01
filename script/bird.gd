extends CharacterBody2D

const JUMP_VELOCITY = -450.0

var did_start_game: bool = false
var is_dead: bool = false

func _physics_process(delta: float) -> void:
	if get_slide_collision_count() != 0:
		death_action()
		
	# Add the gravity.
	if did_start_game:
		velocity += get_gravity() * delta
	move_and_slide()

func did_touch():
	if did_start_game == false:
		did_start_game = true
	if not is_dead:
		jump()
	
func jump():
	rotation = 0
	velocity.y = JUMP_VELOCITY
	
func death_action():
	if !is_dead:
		is_dead = true
	
func rotate_bird():
	# Rotate downwards when falling
	if velocity.y > 0 and rad_to_deg(rotation) < 90:
		rotation += 2 * deg_to_rad(1.4)
	# Rotate upwards when rising
	elif velocity.y < 0 and rad_to_deg(rotation) > -30:
		rotation -= 2 * deg_to_rad(1.2)
