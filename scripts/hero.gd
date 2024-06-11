extends StaticBody3D

# signal for healthbar update
signal hp_changed(new_hp)
signal has_died
signal to_pause

# Player Health var
var hp_max = 100
var hp = hp_max: set = _set_health, get = _get_health

# Player damages
var base_damage = 0
var damage_received : float


# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("hero")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# show pause menu
	if Input.is_action_just_pressed("escape_key"):
		to_pause.emit()
	"""
	# select ?
	if Input.is_action_pressed("left_click"):
	"""



"""
Health setget
"""

func _set_health(value):
	if value != hp:
		hp = clamp(value,0 ,hp_max)
		hp_changed.emit(hp)
		if hp == 0:
			has_died.emit()

func _get_health():
	return hp



"""
Attack
"""

func attack(value, target_location):
	pass

func get_hit():
	# Health update
	#damage_received = hitbox_enemy.get_parent().base_damage
	#self.hp -= damage_received
	pass
