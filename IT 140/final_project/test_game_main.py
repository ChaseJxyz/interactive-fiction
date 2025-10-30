import friend_crow #the diegetic "verbs" the player can do
import ref #descripts, dictionaries, and other things that add flavor

# FUNCTIONS
# TODO: remove testing print, double-check prompt wording, double-check synonyms, update text for each non-friend_crow choice. also maybe something better than a big elif lol, formatting output

# Core loop | captures prompt and sends to parser
def next_prompt():
	prompt = input("↦ What's your next move?\n").lower()
	parsing(prompt)

# Parser | breaks up multi-word prompts into array (if applicable), then checks for matching verbs/nouns, ends with asking for next prompt
#TODO: needs a break for win condition
def parsing(prompt):
	#TODO: FOR TESTING ONLY
	print("--->This is the current prompt:",prompt,"<---")
	#######
	split_prompt = prompt.split(" ")
	#######
	####### 1 word prompts
	if split_prompt[0] in ["help","halp","help plz","plz","pls","clue","hint"]:
		friend_crow.help()
	elif prompt in ["verbs","v","verb"]:
		friend_crow.verbs()
	elif prompt in ["north","south","east","west","n","s","e","w"]:
		friend_crow.move(prompt)
	elif prompt in ["inventory","i"]:
		print("this is where the inventory array would be displayed all nice")
	elif prompt in ["sleep","wait","z"]:
		print("if there were turn counters, this would matter!")
	elif prompt in ["about","credits"]:
		print("its just me lol")
	elif prompt in ["load", "save", "score"]:
		print("this is a pretty simple game, so there's none of that here! sorry :(")
	elif prompt in ["quit","exit"]:
		print("idk what ur using lol but if this is bash/zsh you can ctrl+C, but you probably already knew that!")
	#######
	####### 2+ word prompts
	elif split_prompt[0] in ["examine","x"]:
		friend_crow.examine(split_prompt[1])
	elif split_prompt[0] in ["eat","drink"]:
		friend_crow.eat(split_prompt[1])
	elif split_prompt[0] in ["drop"]:
		friend_crow.drop(split_prompt[1])
	elif split_prompt[0] in ["take","t","get","collect"]:
		friend_crow.take(split_prompt[1])
	elif split_prompt[0] in ["talk","greet","speak","ask"]:
		friend_crow.speak(split_prompt)
	elif split_prompt[0] in ["throw","toss"]:
		friend_crow.throw(split_prompt[1])
	elif split_prompt[0] in ["wear"]:
		friend_crow.wear(split_prompt[1])
	elif len(split_prompt) >= 2 and split_prompt[1] in ["north","south","east","west","n","s","e","w"]:
		friend_crow.move(split_prompt[1])
	else:
		print("Friend crow cannot help you here, since this is an erorr message","\n")
	#######
	next_prompt()


# game logic


# Game initialization
print(ref.world_init_descript)
next_prompt()


# losing state


# win state