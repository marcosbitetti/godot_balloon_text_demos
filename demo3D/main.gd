extends Spatial

var speaks = [
	"Hi! I am Godette, nice to meet u",
	"Yeahh!",
	"Go to learn games?",
	"I just here, whaiting for Godot",
	"Look, a tree",
	"I see game-devs",
	"Wanna make a game?"
]


func _ready():
	$AnimationPlayer.play("stand")

func _on_Timer_timeout():
	var list =$AnimationPlayer.get_animation_list()
	var sel = randi() % list.size()
	$AnimationPlayer.play( list[sel] )
	
	var speak = randi() % speaks.size()
	$"Balloon Text".say( speaks[speak] )
