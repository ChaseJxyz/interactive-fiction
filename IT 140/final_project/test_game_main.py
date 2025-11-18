'''
TEST STUFF ONLY TODO: REMOVE COMMENT OUT
'''

def teleport(endpoint):
	player.set_location(endpoint)
	print(f"you just teleported to {player.get_location()}")


'''
REFERENCES
'''

# items TODO: make all of em
class Items:
	def __init__(self,print_name,location,init_descript):
		self.print_name = print_name
		self.location = location
		self.init_descript = init_descript
	def get_print_name(self):
		return self.print_name
	def get_init_descript(self):
		return self.init_descript
	def set_location(self,location):
		self.location = location
	def get_location(self):
		return self.location

t_item = Items("test item","t_room_2", "a mystery widget glints in the ash")


item_lookup = {
	"t_item": t_item,
	"test_item": t_item
}


# room dict template
''' connected room (if any, else fail),move descript
		"north": ["",""],
		"south": ["",""],
		"east": ["",""],
		"west": ["",""],
		"init_descript": [""],
		"item": ""
'''
# room[dir][0] = connected room [1] move descript TODO: all the flavor text lol/rooms
rooms = {
	"t_room_1" : {
		"north": ["fail","north fail descript"],
		"south": ["fail","south fail descript"],
		"east": ["t_room_2","you go east to t room 2 and see stuff"],
		"west": ["fail","west fail descript"],
		"init_descript": "you are currently in room 1 its to the west of the volcano and closer to the fjord",
		"item": ""
	},
	"t_room_2" : {
		"north": ["fail","north fail 2"],
		"south": ["fail","south fail 2"],
		"east": ["fail"," east fail 2"],
		"west": ["t_room_1","you go west to t room 1 and see other stuff"],
		"init_descript": "you are currently in room 2 its east of the volcano and closer to the tidepools",
		"item": t_item
	}
}




# !synonyms dict #TODO: another obv thing to cut back
synonyms = {
	"test_room_1": "t_room_1",
	"test_room_2": "t_room_2",
	"test_item": "t_item"
}

# ! scenery/look/examine dict #TODO: this is the one thing to cut if anythigns gonna be cut lol but any item/room should be in here plus obv terms from descripts
''' template
"visible_rooms": [""],
"visual_description": ""
'''
visuals = {
	"t_volcano" : {
		"visible_rooms": ["t_room_1", "t_room_2"],
		"visual_description": "the very cool test version of the volcano"
	},
	"t_ocean" : {
		"visible_rooms": ["t_room_1"],
		"visual_description": "you can only see the ocean from room 1"
	},
	"t_caldera" : {
		"visible_rooms": ["t_room_2"],
		"visual_description": "you can only see teh caldera from room 2"
	},
	"t_item" : {
		"visible_rooms": t_item.get_location(),
		"visual_description": "crow friend is holding a shiny thing in his beak"
	}
}

# standard verb list TODO: make sure its up tod ate
standard_verbs = ["move", "take", "examine", "help", "eat", "drop", "speak", "throw", "wear"]

# story lock sets TODO: put in

# character class + player

class Character:
	def __init__(self,location: str,inventory: list):
		self.location = location
		self.inventory = inventory
	def set_location(self,location):
		self.location = location
	def get_location(self):
		return self.location
	def set_inventory(self,inventory):
		self.inventory.append(inventory)
	def get_inventory(self):
		return self.inventory


player = Character("test_room_1",[])

class Parsed_Prompt:
	def __init__(self,prompt:str):
		self.raw_prompt = prompt
		self.prompt = []
		self.prompt_len: 0
	def set_prompt(self,prompt):
		self.raw_prompt = prompt
		self.prompt = self.raw_prompt.split(" ")
		self.prompt_len = len(self.prompt)
	def get_prompt(self,index):
		return self.prompt[index]
	def get_prompt_len(self):
		return self.prompt_len

player_prompt = Parsed_Prompt("")

'''
FUNCTIONS
'''
# TODO: remove testing print, double-check prompt wording, double-check synonyms, update text for each non-friend_crow choice. also maybe something better than a big elif lol, formatting output


# Player verbs

# move(dir)
def move(direction): # Update player's location to new room and calls initializations, if any #TODO: implement the checks
	'''
	if location = riverbank and dir = east --> check story lock 1 is in inv otherwise print special string from friendcrow
	elif "" = fjord and dir = north --> story lock 2 "" ""
	also tehse will leave the func
	'''
	print (rooms[player.get_location()][direction][1])
	if rooms[player.get_location()][direction][0] != "fail":
		player.set_location(rooms[player.get_location()][direction][0])
	# lookup room[direction] key + print move dsecript entry of list. if room == fail then no set location
	#print(f"this is the part where u go {direction}")
	#print("this will be the init descript for the new room")

# take(noun) TODO: could prolly clean up
def take(noun): # Update item location from room to inventory.
	#if noun in ["all","everything"]:
	#	print("that's cheating lol do some reading")
	if noun in item_lookup:
		item = item_lookup[noun]
		if item.get_location == "inventory":
			print("you already have that!")
		elif item is rooms[player.get_location()]["item"] and player.get_location() == item.get_location():
			item.set_location("inventory")
			player.set_inventory(noun)
			rooms[player.get_location()]["item"] = ""
			print(f"you pick up the {noun} with friend crows help")
			#print(f"Inventory is now: {player.get_inventory}")
		else:
			print(f"you can't see a {noun} to pick up")
	else:
		print("friend crow has no idea what youre talking about")

# examine(noun) TODO: update flavor text
def examine(noun): # Look at room/item/scenery for flavor/plot/clues
	print(f"your gonna look up the descript for {noun}")
	if noun in visuals and player.get_location() in visuals[noun]["visible_rooms"]:
		print("heres the", noun, "descript:", visuals[noun]["visual_description"], "! waow")
	else:
		print("you cant see shit from here")

# inventory() TODO: prettify/flavor
def display_inventory():
	print(f"The player has {player.get_inventory()}")

def help(): # Give player clues on what they can/should do #FIXME: flavor text + list of implemented verbs
	print("yes i am friend crow i am helping look i can even say stuff")
	print("friend crow does something cute and says yes well you cant do much what with the hooves and all, but you have me! should i tell you what i can do?")
	crow_answer = input("↦ How do you respond?\n").lower()
	if crow_answer in ["yes","Yes","Y","y","sure","please"]:
		print("i can --insert list of verbs with newlines between--. but im not a mind reader so if you want me to take something specific, you have to tell me!\n\ncourse your the one moving and looking at stuff, and you can read your own mind, but you still need to decide where to go or what to look at!")
	else:
		print("friend crow does something slightly less cute. well, okay! but im always here if you need help! just have to ask!")

# the following are just "fails" in case player tries, dont worry about synonyms #FIXME: flavor text
def eat(noun):
	print(f"its not a good idea to eat {noun}, cause plot reasons lol")

def drop (noun):
	print(f"youre not allowed to do drop {noun} for plot reasons")

''' #TOFIX: do i even wanna do this anymore
def speak(character):
	subject = character[1]
	if character[1] in ["to"]:
		subject = character[2]
	print(f"you try to ask the {subject} something but ur not the same typa critter so it dont work")
'''

def throw(noun):
	print(f"even friend crow does not have hands to throw a {noun}")

def wear(noun):
	print(f"since your both critters, you have no idea how to wear a {noun}")

# Game functions

# Parser | breaks up multi-word prompts into array (if applicable), then checks for matching verbs/nouns, ends with asking for next prompt #TODO: synonym dict
def parsing(prompt): #TODO: if prompt in standard_verbs then can skip the synonym looker upper but need the synonynizer to rewrite
	'''
	if prompt != in standard_verbs --> search syn dict for matching key then turn prompt into value and then run parsing again ELSE(not in dict) --> prompt for a better word)
	'''
	#TODO: FOR TESTING ONLY
	#print(f"--->This is the raw prompt:{prompt}<---")
	player_prompt.set_prompt(prompt)
	verb = player_prompt.get_prompt(0)
	if player_prompt.get_prompt_len() >= 2:
		noun = player_prompt.get_prompt(1)
	####### 1 word prompts
	if verb in ["help","halp","help plz","plz","pls","clue","hint"]:
		help()
	elif verb in ["move","go"] and noun in ["north","south","east","west","n","s","e","w"]:
		move(noun)
	elif verb in ["inventory","i"]:
		display_inventory()
	elif verb in ["sleep","wait","z"]:
		print("if there were turn counters, this would matter!")
	elif verb in ["about","credits"]:
		print("its just me lol")
	elif verb in ["load", "save", "score"]:
		print("this is a pretty simple game, so there's none of that here! sorry :(")
	elif verb in ["quit","exit"]:
		print("idk what ur using lol but if this is bash/zsh you can ctrl+C, but you probably already knew that!")
	#######
	####### 2+ word prompts
	elif verb in ["examine","x"]:
		examine(noun)
	elif verb in ["eat","drink"]:
		eat(noun)
	elif verb in ["drop"]:
		drop(noun)
	elif verb in ["take","t","get","collect"]:
		take(noun)
	#elif verb in ["talk","greet","speak","ask"]:
	#	speak(split_prompt)
	elif verb in ["throw","toss"]:
		throw(noun)
	elif verb in ["wear"]:
		wear(noun)
	#elif len(player_prompt.prompt_len) >= 2 and player_prompt.get_prompt(1) in ["north","south","east","west","n","s","e","w"]:
	#	move(noun)
	elif verb == "teleport":
		teleport(noun)
	else:
		print("Friend crow cannot help you here, since this is an erorr message","\n")
	#######
	next_prompt()

# prompt()
def next_prompt():
	#TODO: test only so remove or at least rename/format nicer
	print(f"Your current location is {player.get_location()}",end="")
	if len(player.get_inventory()) == 0:
		print(". Your inventory is empty.")
	else:
		print(f", and your inventory is {", ".join(player.get_inventory())}.")
	print(f"{rooms[player.get_location()]["init_descript"]}")
	if rooms[player.get_location()]["item"]!= "":
		print(rooms[player.get_location()]["item"].init_descript)
	prompt = input("\n↦ What's your next move?\n").lower()
	parsing(prompt)

# main()

'''
GAME LOGIC
'''

# intit process
print(f"this is the pretty world init")
player.set_location("t_room_1")
next_prompt()

# whiles for rooms
'''
while player location = exit room --> ending process
'''
'''
while player location = cave --> bad end process
'''
# end process

'''
GAME START
'''

