def help(): # Give player clues on what they can/should do
	print("yes i am friend crow i am helping look i can even say stuff")
	verbs()

def verbs(): # Tell player what actions they can do
	print("friend crow does something cute and says yes well you cant do much what with the hooves and all, but you have me! should i tell you what i can do?")
	crow_answer = input("↦ How do you respond?\n").lower()
	if crow_answer in ["yes","y","sure","please"]:
		print("i can --insert list of verbs with newlines between--. but im not a mind reader so if you want me to take something specific, you have to tell me!\n\ncourse youre the one moving and looking at stuff, and you can read your own mind, but you still need to decide where to go or what to look at!")
	else:
		print("friend crow does something slightly less cute. well, okay! but im always here if you need help! just have to ask!")

def eat(word): # Eat/drink, always fails
	print("its not a good idea to eat",word,"cause plot reasons lol")

def examine(word): # Look at room/item/scenary for flavor/plot/clues
	print("youre gonna look up the descript for",word)

def drop (word): # Inventory is one-way, so always fails
	print("youre not allowed to do drop",word,"for plot reasons")

def move(direction): # Update player's location to new room and calls initializations, if any
	#TODO: make 1 char strings equal to whole words
	print("this is the part where u go",direction)
	print("this will be the init descript for the new room")

def take(item): # Update item location from room to inventory.
	if item in ["all","everything"]:
		print("that's cheating lol do some reading")
	else: #TODO: needs a way to fail if its a thing thats not in the lookup
		print("you directed friend crow to take",item,"and add it to ur inventory")

def speak(word): # Talk to a character
	subject = word[1]
	if word[1] in ["to"]:
		subject = word[2]
	# TODO: table for guys + esp crow friend
	print("you try to ask the",subject,"something but ur not the same typa critter so it dont work")

def throw(item): # Throw item, always fails
	print("even friend crow does not have hands to throw a",item)

def wear(item): # Wear item, always fails
	print("since youre both critters, you have no idea how to wear a",item)