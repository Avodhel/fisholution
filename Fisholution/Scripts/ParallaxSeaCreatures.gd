extends ParallaxLayer

export (Array, PackedScene) var sea_creatures

var screensize_x
var screensize_y

func _ready():
	screensize_x = get_viewport_rect().size.x
	screensize_y = get_viewport_rect().size.y
	motion_mirroring.x = screensize_x
	motion_mirroring.y = screensize_y
	_spawn_sea_creatures()

func _spawn_sea_creatures():
	randomize()
	for counter in range(rand_range(25, 65)):
		var position_x = rand_range(screensize_x - (screensize_x - 1), screensize_x)
		var position_y = rand_range(screensize_y - (screensize_y - 1), screensize_y)
		var sea_creature = sea_creatures[randi() % sea_creatures.size()].instance()
		add_child(sea_creature)
		sea_creature.position = Vector2(position_x, position_y)