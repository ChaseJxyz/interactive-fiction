import friend_crow
import ref

# functions!

def next_prompt():
	prompt = input("What's your next move?\n").lower()
	parsing(prompt)

def parsing(prompt):
	if prompt in ["help","halp","help plz","plz","pls"]:
		friend_crow.help(prompt)
		next_prompt()
	elif prompt[slice(7)] in ["examine"]:
		lookup_noun = prompt[slice(8,len(prompt))]
		print("youre gonna look up the descript for", lookup_noun,"\n")
		next_prompt()
	else:
		print("Friend crow cannot help you here","\n")
		next_prompt()


# game logic

# game init
prompt = input("What's your next move?\n").lower()
parsing(prompt)


# losing state


# win state