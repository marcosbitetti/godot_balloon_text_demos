extends Node2D

var index = 0

var responses = [
	"An African or European swallow?",
	"I don't know that...",
	"30Km/h",
	"60Km/h",
	"25Km/h carrying a coconut"
]

var functions = [ "resp1","resp2","resp3","resp4","resp5"]

func _response_true():
	$info.text = 'User select true'
	init()

func _response_false():
	$info.text = 'User select false'
	init()

func response0(val):
	$info.text = 'User select ' + str(val)
	init()

func response1():
	$info.text = 'User select true'
	init()

func response2():
	$info.text = 'User select false'
	init()

func resp1():
	$info.text = 'User select response 1'
	init()

func resp2():
	$info.text = 'User select response 2'
	init()

func resp3():
	$info.text = 'User select response 3'
	init()

func resp4():
	$info.text = 'User select response 4'
	init()

func resp5():
	$info.text = 'User select response 5'
	init()

func run():
	$"Balloon Text".disconnect("balloon_true",self,"_response_true")
	$"Balloon Text".disconnect("balloon_false",self,"_response_false")
	match index:
		0:
			$"Balloon Text".ask("Hakuna Matata?")
			$"Balloon Text".connect("balloon_true",self,"_response_true")
			$"Balloon Text".connect("balloon_false",self,"_response_false")
		1:
			$"Balloon Text".ask("Hakuna Matata?","Ain't no passing craze!","Whata hell?")
			$"Balloon Text".connect("balloon_true",self,"_response_true")
			$"Balloon Text".connect("balloon_false",self,"_response_false")
		2:
			$"Balloon Text".ask("Hakuna Matata?","Ain't no passing craze!","Whata hell?", "response0")
		3:
			$"Balloon Text".ask("Hakuna Matata?","Ain't no passing craze!","Whata hell?", "response1", "response2")
		4:
			$"Balloon Text".ask("What...is the airspeed velocity of an unladen swallow?",responses, "response0")
		5:
			$"Balloon Text".ask("What...is the airspeed velocity of an unladen swallow?",responses, functions)
		
	$Panel/RichTextLabel.bbcode_text = strings[index]
	
	index += 1
	if index>5:
		index = 0

func init():
	$Timer.start()

func _ready():
	init()




var strings = [
"""func _response_true():
	print("true")

func _response_false():
	print("true")

$"Balloon Text".ask("Hakuna Matata?")
$"Balloon Text".connect("balloon_true",self,"_response_true")
$"Balloon Text".connect("balloon_false",self,"_response_false")""",

"""func _response_true():
	print("true")

func _response_false():
	print("true")

$"Balloon Text".ask("Hakuna Matata?","Ain't no passing craze!","Whata hell?")
$"Balloon Text".connect("balloon_true",self,"_response_true")
$"Balloon Text".connect("balloon_false",self,"_response_false")""",

"""func response0(value):
	print(value) # true/false

$"Balloon Text".ask("Hakuna Matata?","Ain't no passing craze!","Whata hell?", "response0")""",

"""func response1():
	print("true")

func response2():
	print("false")

$"Balloon Text".ask("Hakuna Matata?","Ain't no passing craze!","Whata hell?", "response1", "response2")""",

"""var responses = [
	"An African or European swallow?",
	"I don't know that...",
	"30Km/h",
	"60Km/h",
	"25Km/h carrying a coconut"
]

func response0(value):
	print(value) # index of array

$"Balloon Text".ask("What...is the airspeed velocity of an unladen swallow?",responses, "response0")""",

"""var responses = [
	"An African or European swallow?",
	"I don't know that...",
	"30Km/h",
	"60Km/h",
	"25Km/h carrying a coconut"
]

var functions = [ "resp1","resp2","resp3","resp4","resp5"]

func resp1():
	print(1)

...

func resp5():
	print(1)

$"Balloon Text".ask("What...is the airspeed velocity of an unladen swallow?",responses, functions)"""
]
