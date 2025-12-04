# Chase Anderson
# chase.anderson5@snhu.edu
# IT-140-11893-M01 Introduction to Scripting 2025 C-6 (Oct – Dec)
# Module 6 Milestone


# Class for characters
class Character:
	'''
	Class for characters so they can be moved by various functions/methods.
	'''
	def __init__(self,location: str):
		'''
		Docstring for __init__: Initializes instance of class

		:param location: Character's current location in game world (room name).
		:type location: str
		'''
		self.location = location
	def set_location(self,location):
		'''
		Docstring for set_location: Updates character's location to given argument.

		:param location: New location for character in game world (room name).
		'''
		self.location = location
	def get_location(self):
		'''
		Docstring for get_location: Returns current location of character in game world (room name).
		'''
		return self.location

# Initialization of player as instance of class Character with starting location
player = Character("Great Hall")

#A dictionary for the simplified dragon text game
#The dictionary links a room to other rooms.
rooms = {
        'Great Hall': {'South': 'Bedroom'},
        'Bedroom': {'North': 'Great Hall', 'East': 'Cellar'},
        'Cellar': {'West': 'Bedroom'}
    }

def move(direction):
	'''
	Docstring for move: Function to move the player character into a new room.
	Checks if given direction is an option in room dictionary and either updates
	location or displays error message.

	:param direction: Expected to be prompt[1], titlecased to ensure dict compatibility.
	'''
	direction=direction.title()
	if direction in rooms[player.get_location()]:
		player.set_location(rooms[player.get_location()][direction])
		print(f"\nYou move {direction.lower()} into the {player.get_location()}.\n")
	else:
		print(f"As you try to go {direction.lower()}, you bump into the {player.get_location()}'s wall instead. Oops, try another direction!\n")

# Prompt initialization
prompt= ""


while player.get_location() != "exit":
	'''
	Core loop that runs until player is in the ending room.
	Prints turn start info and gets/parses player prompt.
	'''
	print(f"You're currently in the {player.get_location()}.\n")
	prompt=input("What's your next move?\n").lower()
	prompt=prompt.split()
	if prompt[0] not in ["go","exit"]:
		print("This is not a valid player command.\n")
	elif prompt[0] == "go" and prompt[1] in ["north","south","east","west"]:
		move(prompt[1])
	elif prompt[0] == "go" and prompt[1] not in ["north","south","east","west"]:
		print(f"{prompt[1].title()} is not a direction I recognize, sorry!")
	elif prompt[0] == "exit":
		player.set_location("exit")
else:
		print("\nYou teleport your way into the mysterious 'exit' room.\nWhich means the game is now over, thanks for playing!")
		exit()