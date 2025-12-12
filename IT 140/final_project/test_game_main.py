# Chase Anderson
# chase.anderson5@snhu.edu
# IT-140-11893-M01 Introduction to Scripting 2025 C-6 (Oct – Dec)
# Module 7 Project

"""
MODULES
"""

import textwrap

width = 88

separator = "-" * width

"""
TEST STUFF ONLY TODO: REMOVE COMMENT OUT
"""


def teleport(endpoint):
    player.set_location(endpoint)
    print(f"you just teleported to {player.get_location()}")


"""
ITEMS
"""


class Items:
    """
    Class to make each item in the game world
    """

    def __init__(self, print_name, location, init_descript, take_descript):
        """
        :param print_name: Human-readable name (can be multi word)
        :param location: Current location of item
        :param init_descript: Prints when item is in a room
        :param take_descript: Prints when player takes item
        """
        self.print_name = print_name
        self.location = location
        self.init_descript = init_descript
        self.take_descript = take_descript

    def get_print_name(self):
        return self.print_name

    def get_init_descript(self):
        return self.init_descript

    def set_location(self, location):
        self.location = location

    def get_location(self):
        return self.location

    def get_take_descript(self):
        return self.take_descript


t_item = Items(
    "test item",
    "t_room_2",
    "a mystery widget glints in the ash",
    "you got friend crow to take it for you",
)
tooth = Items(
    "wolf's tooth",
    "edge",
    "The ivory edge of a predator's TOOTH glints under the shed needles of pines.",
    [
        "The scent of its owner is long gone, but pushing aside the decaying leaves to reveal it still makes you nervous.",
        "The crow flutters down, curious as to what you found.",
        "'Crrrr tooth great gift,' it says. It plucks it easily from the ground and then deposits it into the bag.",
    ],
)
skull = Items(
    "deer skull",
    "bank",
    "The jagged edges of a SKULL are visible just off the path.",
    [
        "Death needn't require a danger lurk nearby, but any reminder of it makes you nervous. The crow hops over.",
        "'Seven tines, seven stars, seven gifts!' it says with glee.",
        "It's still too large for the bag, so, with reluctance and apologies, you place a hoof between the dead stag's eyes and press.",
        "It shatters easily, the sudden sound causing you to dance backwards. The crow isn't perturbed; it grabs the the now-separated crown and adds it to the bag.",
    ],
)
stone = Items(
    "carnelian",
    "river",
    "Beyond the shifting barrier of the water, a red STONE stands apart.",
    [
        "You call the crow over, but it seems to ignore you as it continues playing in water. You snort, thinking it no different from an impudent foal, but your heart feels heavy at the comparison.",
        "Once you've finished your quest, once things are set right again, you'll never complain about the energy and wonder of the young again.",
        "The crow finally joins you, and you point to the stone with your muzzle. It studies it for a moment before fishing it out with its beak.",
        "'Blood frozen into rock,' it says. The words aren't skewed despite its mouth full of stone, which ticks your anxiety ever-higher.",
    ],
)
nugget = Items(
    "gold nugget",
    "bend",
    "The glint of GOLD sparkles amongst the gravel.",
    [
        "You paw at the spot, shifting pebbles as they shift underhoof, leaving you at the sensation of nearly falling. The nugget is small, but it excites the crow like you've haven't seen before.",
        "'Crrrr shiny! Shiny good! Great, even!' It picks up the nodule and hesitates, as if considering something. It then grumbles before tucking it into the bag.",
        "You step away, but you can hear the crow poking around the gravel some more.",
    ],
)
egg = Items(
    "plover egg",
    "delta",
    "Amongst the reeds lies a nest with a single EGG.",
    [
        "You turn away from the nest and look elsewhere for a suitable gift, but the crow hops onto your withers and tugs at your mane.",
        "'Gift!' it says, half statement, half order. You tell it you're still looking for one, but it tugs you again. 'Egg!'",
        "You decline; the crow responds with 'Some die, some live. Bug, bird, grass, all same, crrrr.'",
        "You want to argue, but the journey has tired you, and you're unsure of the answer yourself. Don't the plants you eat have parents, children that will miss them? Do you curse the lion for doing what she must to feed her cubs? You would do the same, if you were born with teeth sharp instead of flat.",
        "You step towards the egg and ask the crow to get it, who is more than happy to oblige.",
    ],
)
shell = Items(
    "conch shell",
    "pools",
    "The sunset hues from within a SHELL stand out amongst the pools.",
    [
        "You carefully find your footing as you get closer to the shell. It's large and looks heavy, so you might need to help lift it. You move closer but are blocked by a storm of black.",
        "'Careful! Careful,' the crow squawks. You ask why, but it doesn't answer. It grabs a few small rocks and flings it at the shell, ducking low as if to see if anything would come out.",
        "After several minutes, the crow seems satisfied. You ask it again, and it laughs. 'Sometimes crab, sometimes snail! Kill fast, if not careful.'",
        "You don't know what sort of beast a crab is, but it couldn't be large if it could hide in the shell. How a snail could kill someone, especially an animal as large as yourself, is a possibility you'd never worried about before, but shall do so forevermore.",
        "You help the crow add it to the now-hefty bag of gifts.",
    ],
)
fossil = Items(
    "fossilized footprint",
    "fjord",
    "Amongst the rocks is one bearing a frozen FOOTPRINT.",
    [
        "You get a closer look and see it's similar to the crow's, with three pointed toes. But they're thick, with claws that could easily slice you from throat to tail.",
        "The crow hops over and can stand within the borders of it comfortably. You ask what possibly could have made it.",
        "'Cousin?' it offers. 'Big crows, big teeth, bones find sometimes.' You ask it where while your ears swivel for danger. A predator this big would have a hard time hiding, but the fjord was narrow with little room to run.",
        "The crow tilts its head back and forth in thought. 'Mountain, river sometimes. But bones old, turn to stone, they're all gone maybe.'",
        "You want to say that it's impossible for something to be gone forever, but only because you want it to be true. Either a predator like this could still exist, or your kind risks disappearing from the world altogether.",
        "The crow helps you pry it lose, but you have to carry it with your mouth, but your journey is almost at an end, so you'll not need to travel far.",
    ],
)

item_lookup = {
    """
	Converts player input into item instance
	"""
    "t_item": t_item,
    "test_item": t_item,
    "tooth": tooth,
    "skull": skull,
    "stone": stone,
    "red": stone,
    "gold": nugget,
    "egg": egg,
    "shell": shell,
    "footprint": fossil,
    "foot": fossil,
    "fossil": fossil,
}

"""
ROOMS
"""
# room dict template
""" connected room (if any, else fail),move descript
	"name" : {
		"print_name": "",
		"north": ["",""],
		"south": ["",""],
		"east": ["",""],
		"west": ["",""],
		"init_descript": "",
		"item": ""
	},
"""

# room[dir][0] = connected room [1] move descript
rooms = {
    # TEST ROOMS
    """
	Key each room, which is sub dict with:
    	printed name,
        cardinal directions (list for connected room + descript during move),
        descript for room per turn,
        item
	"""
    "t_room_1": {
        "north": ["fail", "north fail descript"],
        "south": ["fail", "south fail descript"],
        "east": ["t_room_2", "you go east to t room 2 and see stuff"],
        "west": ["fail", "west fail descript"],
        "init_descript": "you are currently in room 1 its to the west of the volcano and closer to the fjord",
        "item": "",
    },
    "t_room_2": {
        "north": ["fail", "north fail 2"],
        "south": ["fail", "south fail 2"],
        "east": ["fail", " east fail 2"],
        "west": ["t_room_1", "you go west to t room 1 and see other stuff"],
        "init_descript": "you are currently in room 2 its east of the volcano and closer to the tidepools",
        "item": t_item,
    },
    #
    "valley": {  # room0
        "print_name": "the valley",
        "north": [
            "edge",
            "You pick your way along the familiar path NORTH toward the end of the valley. The hills and mountains on either side soon give way to the darkness of the forest's edge.",
        ],
        "south": [
            "fail",
            "You turn your head SOUTH to see the narrow path between the mountains. Between the cats who blend into the stone with their spotted coats and the treacherous footing, nothing good will happen if you tread there.",
        ],
        "east": [
            "fail",
            "The mountains to the EAST protect you from any predators who travel alongside the river on its other side. They can only reach your herd through the narrow entrance to the NORTH.",
        ],
        "west": [
            "fail",
            "The mountains to the WEST protect you from the unknown. You've spoken to birds who have said they've come from the lands where the sun finally rests, but their stories about endless water are too fantastical to believe.",
        ],
        "init_descript": [
            "The valley is the home of your herd and always has been. But, as the seasons turn, the grass dies, as do you, one by one. It's your home, safe, but clearly no longer. If the crow is right, your only hopes to save them is to journey beyond.",
            "You know the path out is to the NORTH towards the glacier towering in the distance.",
        ],
        "item": "",
    },
    "edge": {  # room1
        "print_name": "the forest's edge",
        "north": [
            "fail",
            "The forest continues to the NORTH. The distance between the trees is just wide enough for you to fit, but the trunks are too many to give you the space to flee. You take one last, long look before deciding not to go that way.",
        ],
        "south": [
            "valley",
            [
                "You retred your hoofsteps SOUTH to the valley. Your sisters lift their heads as the wind carries your scent to them. The crow lands on your withers, the tips of its claws pricking into your hide.",
                "'Crrr no gifts in valley,' it says. 'Journey far, but go back after.'",
                "You know the crow is right; you won't be able to complete your quest--or save the others--if you linger here.",
            ],
        ],
        "east": [
            "bank",
            "The natural path EAST between the trees continues as the sound of water grows. You follow the sound to a natural in the woods, dark trunks framing your view of the other side of the river.",
        ],
        "west": [
            "fail",
            [
                "The forest continues to the WEST. You take a hesitant step toward it, but freeze when you hear a branch snap. The sound is as sharp and sudden as teeth to your throat.",
                "'Crrr no mean to scare.'",
                "You look up to see the crow perched in one of the trees, a branch in its beak. While it's a blessing that there's more ways a predator can give itself away, the anxiety would surely kill you first.",
            ],
        ],
        "init_descript": "The branches lean overhead, darkening your view of the sky. This is not a place for creatures like yourself, only those too small and too nimble to be of any interest to the wolves and lions. You can see a natural path between the trees heading EAST, as well as the path back to your valley to the SOUTH.",
        "item": tooth,
    },
    "bank": {  # room2
        "print_name": "the river bank",
        "north": [
            "fail",
            "The forest stretches further NORTH, but you can see the frigid base of the glacier between the trees. There's no room for you to run, so going in that direction wouldn't be wise.",
        ],
        "south": [
            "fail",
            "The mountains that protect your valley are to the SOUTH. Your hooves are singular and muscles withered, so traversing them is not an option.",
        ],
        "east": [
            "river",
            [
                "You step cautiously toward the river, looking up and down its edge for any predators who might be waiting. Trees block your line of sight, so you take another step.",
                "The ground gives way underhoof and you fall, dirt and roots following you into the water. You quickly get back onto your feet, heart hammering.",
                "Nothing was attracted by the noise, and the only thing that seems to be wounded is your pride.",
            ],
        ],
        "west": [
            "edge",
            "You take the path back into the forest, your ears searching for anything that might be lurking beyond sight. But the only other being here is the crow, so you should be safe for now.",
        ],
        "init_descript": "The ground slopes EAST down towards the river, a thing that had once been mighty, but now does little more than remind you of what's once been. The air is quiet, although your ears stay sharp if something had followed you on the path WEST.",
        "item": skull,
    },
    "river": {  # room3
        "print_name": "the river",
        "north": [
            "bend",
            [
                "You walk within the shallow water, expecting it to rise as you move towards the glacier, but it doesn't grow in strength.",
                "Instead you see the river has curled in on itself, like a dying snake, feeding most of its waters into the dead end.",
            ],
        ],
        "south": [
            "delta",
            "As you follow the river south, the gravel of its bottom shifts into mud. You move onto land to continue following it, but that, too, soon turns soft and sinking.",
        ],
        "east": [
            "cave",
            "A natural trail takes you out of the water and onto stone and the mouth of the cave.",
        ],
        "west": [
            "bank",
            "Carefully, you find new footholds to get back up and onto dry land.",
        ],  # fail for stretch
        "init_descript": [
            "The river is still cool, despite its shallowness. It's perfect for the crow, it seems, who starts splashing in the water.",
            "The river's source is to the NORTH, while it continues to flow SOUTH. To the EAST is the bank by the forest, and the bank to the WEST has the mouth of a dark cave.",
        ],
        "item": stone,
    },
    "bend": {  # room4
        "print_name": "the river bend",
        "north": ["fail", "%%%"],
        "south": ["river", "%%%"],
        "east": ["fail", "%%%"],
        "west": ["fail", "%%%"],
        "init_descript": "%%%",
        "item": nugget,
    },
    "cave": {  # room5
        "print_name": "the cave",
        "north": ["fail", ""],
        "south": ["fail", ""],
        "east": ["fail", ""],
        "west": ["fail", ""],
        "init_descript": "",
        "item": "",
    },
    "delta": {  # room6
        "print_name": "the river delta",
        "north": ["river", "%%%"],
        "south": ["pools", "%%%"],
        "east": ["fail", "%%%"],
        "west": ["fail", "%%%"],
        "init_descript": "%%%",
        "item": egg,
    },
    "pools": {  # room7
        "print_name": "the tide pools",
        "north": ["delta", "%%%"],
        "south": ["fail", "%%%"],
        "east": ["fail", "%%%"],
        "west": ["fjord", "%%%"],
        "init_descript": "%%%",
        "item": shell,
    },
    "fjord": {  # room8
        "print_name": "the fjord",
        "north": ["fail", "%%%"],  # exit for story locks
        "south": ["fail", "%%%"],
        "east": ["pools", "%%%"],
        "west": ["fail", "%%%"],
        "init_descript": "%%%",
        "item": fossil,
    },
    # "exit": {  # room9/exit
    #    "print_name": "the wedding",
    #    "north": ["fail", "%%%"],
    #    "south": ["fail", "%%%"],
    #    "east": ["fail", "%%%"],
    #    "west": ["fail", "%%%"],
    #    "init_descript": "%%%",
    #    "item": "",
    # },
}

direction_synonyms = {"n": "north", "s": "south", "e": "east", "w": "west"}


# !synonyms dict #TODO: another obv thing to cut back
synonyms = {"test_room_1": "t_room_1", "test_room_2": "t_room_2", "test_item": "t_item"}

# ! scenery/look/examine dict #TODO: this is the one thing to cut if anythigns gonna be cut lol but any item/room should be in here plus obv terms from descripts
""" template
"visible_rooms": [""],
"visual_description": ""
"""
visuals = {
    "t_volcano": {
        "visible_rooms": ["t_room_1", "t_room_2"],
        "visual_description": "the very cool test version of the volcano",
    },
    "t_ocean": {
        "visible_rooms": ["t_room_1"],
        "visual_description": "you can only see the ocean from room 1",
    },
    "t_caldera": {
        "visible_rooms": ["t_room_2"],
        "visual_description": "you can only see teh caldera from room 2",
    },
    "t_item": {
        "visible_rooms": t_item.get_location(),
        "visual_description": "crow friend is holding a shiny thing in his beak",
    },
}

# standard verb list TODO: make sure its up tod ate
"""
standard_verbs = [
    "move",
    "take",
    "examine",
    "help",
    "eat",
    "drop",
    "speak",
    "throw",
    "wear",
]
"""
# story lock sets TODO: put in

"""
CHARACTERS
"""


class Character:
    """
    Class for character objects, such as player
    """

    def __init__(self, location: str, inventory: list):
        """
        :param location: starting room in game world
        :param inventory: starting character inventory (default empty)
        """
        self.location = location
        self.inventory = inventory
        self.inventory_count = 0

    def set_location(self, location):
        self.location = location

    def get_location(self):
        return self.location

    def set_inventory(self, inventory):
        self.inventory.append(inventory)
        self.inventory_count = len(self.inventory)

    def get_inventory(self):
        return self.inventory

    def get_inventory_count(self):
        return self.inventory_count


player = Character("", [])

"""
PROMPT MANAGEMENT
"""


class Parsed_Prompt:
    """
    Prompt object, allowing to be updated by various functions/loops
    """

    def __init__(self, prompt: str):
        """
        :param raw_prompt: Capture input from player
        :param prompt: Parsed prompt (list)
        :param prompt_len: How many "words" in prompt
        """
        self.raw_prompt = prompt
        self.prompt = []
        self.prompt_len: 0  # type: ignore

    def set_prompt(self, prompt):
        self.raw_prompt = prompt
        self.prompt = self.raw_prompt.split(" ")
        self.prompt_len = len(self.prompt)

    def get_prompt(self, index):
        return self.prompt[index]

    def get_prompt_len(self):
        return self.prompt_len


player_prompt = Parsed_Prompt("")

"""
FUNCTIONS
"""
# TODO: remove testing print, double-check prompt wording, double-check synonyms, update text for each non-friend_crow choice. also maybe something better than a big elif lol, formatting output

"""
SYSTEM
"""


def text_wrapper(text):
    """
    Takes variable-length flavor text and prints it with text wrap. A string is formatted into a single paragraph, so lists print multiple paragraphs.
    """
    if type(text) is list:
        for elements in text:
            print(textwrap.fill(elements, width=width) + "\n")
    else:
        print(textwrap.fill(text, width=width) + "\n")


"""
VERBS
"""


# move(dir)
def move(direction):
    """
    Takes noun from prompt, checks room dict, prints movement descript, updates player location (if possible)
    """  # Update player's location to new room and calls initializations, if any #TODO: implement the checks
    # """
    # if location = riverbank and dir = east --> check story lock 1 is in inv otherwise print special string from friendcrow
    # elif "" = fjord and dir = north --> story lock 2 "" ""
    # also tehse will leave the func
    # """
    if direction in ["n", "s", "e", "w"]:
        direction = direction_synonyms[direction]
    text_wrapper(rooms[player.get_location()][direction][1])
    if rooms[player.get_location()][direction][0] != "fail":
        player.set_location(rooms[player.get_location()][direction][0])
    # lookup room[direction] key + print move dsecript entry of list. if room == fail then no set location
    # print(f"this is the part where u go {direction}")
    # print("this will be the init descript for the new room")


# take(noun) TODO: could prolly clean up
def take(noun):
    """
    Takes noun from prompt, looks up str noun for matching item instance
            if noun is valid item: set local item variable, checks item's location and sets item location/player inventory with new item (or error if already in inventory or item is in different room)
                else if noun is not valid item: print error message
    """
    # Update item location from room to inventory.
    # if noun in ["all","everything"]:
    # print("that's cheating lol do some reading")
    if noun in item_lookup:
        item = item_lookup[noun]
        if item.get_location == "inventory":
            print("You've already collected that!\n")
        elif (
            item is rooms[player.get_location()]["item"]
            and player.get_location() == item.get_location()
        ):
            item.set_location("inventory")
            player.set_inventory(noun)
            rooms[player.get_location()]["item"] = ""
            # print(f"you pick up the {noun} with friend crows help")
            text_wrapper(item.get_take_descript())
            # print(f"Inventory is now: {player.get_inventory}")
        else:
            print(f"You can't see a {noun} to pick up.")
    else:
        print("The crow doesn't know what you want it to get.")


# examine(noun) TODO: update flavor text also axe
def examine(noun):  # Look at room/item/scenery for flavor/plot/clues
    print(f"your gonna look up the descript for {noun}")
    if noun in visuals and player.get_location() in visuals[noun]["visible_rooms"]:
        print(
            "heres the",
            noun,
            "descript:",
            visuals[noun]["visual_description"],
            "! waow",
        )
    else:
        print("you cant see shit from here")


# inventory() TODO: prettify/flavor TODO: can axe this
def display_inventory():
    print(f"The player has {player.get_inventory()}")


# def help():  # Give player clues on what they can/should do #FIXME: flavor text + list of implemented verbs
#    print("yes i am friend crow i am helping look i can even say stuff")
#    print(
#        "friend crow does something cute and says yes well you cant do much what with the hooves and all, but you have me! should i tell you what i can do?"
#    )
#    crow_answer = input("↦ How do you respond?\n").lower()
#    if crow_answer in ["yes", "Yes", "Y", "y", "sure", "please"]:
#        print(
#            "i can --insert list of verbs with newlines between--. but im not a mind reader so if you want me to take something specific, you have to tell me!\n\ncourse your the one moving and looking at stuff, and you can read your own mind, but you still need to decide where to go or what to look at!"
#        )
#    else:
#        print(
#            "friend crow does something slightly less cute. well, okay! but im always here if you need help! just have to ask!"
#        )


# the following are just "fails" in case player tries, dont worry about synonyms #FIXME: flavor text
# def eat(noun):
#    print(f"its not a good idea to eat {noun}, cause plot reasons lol")


# def drop(noun):
#    print(f"youre not allowed to do drop {noun} for plot reasons")


""" #TOFIX: do i even wanna do this anymore
def speak(character):
	subject = character[1]
	if character[1] in ["to"]:
		subject = character[2]
	print(f"you try to ask the {subject} something but ur not the same typa critter so it dont work")
"""


# def throw(noun):
#    print(f"even friend crow does not have hands to throw a {noun}")


# def wear(noun):
#    print(f"since your both critters, you have no idea how to wear a {noun}")


# Game functions


# Parser | breaks up multi-word prompts into array (if applicable), then checks for matching verbs/nouns, ends with asking for next prompt #TODO: synonym dict
def parsing(
    prompt,
):  # TODO: if prompt in standard_verbs then can skip the synonym looker upper but need the synonynizer to rewrite
    """
    Takes input captured in next_prompt() and breaks into verb (player action) and noun (target of action). Checks verb for synonym matches and passes through noun if the verb is an available action.

    After the verb function runs, it checks for win/loss conditions and runs the proper actions to end the game. Otherwise it asks for the next prompt and goes again.
    """
    # """
    # if prompt != in standard_verbs --> search syn dict for matching key then turn prompt into value and then run parsing again ELSE(not in dict) --> prompt for a better word)
    # """
    # TODO: FOR TESTING ONLY
    # print(f"--->This is the raw prompt:{prompt}<---")
    player_prompt.set_prompt(prompt)
    verb = player_prompt.get_prompt(0)
    noun = ""
    if player_prompt.get_prompt_len() > 1:
        noun = player_prompt.get_prompt(1)
    ####### 1 word prompts
    #    if verb in ["help", "halp", "help plz", "plz", "pls", "clue", "hint", "h"]:
    #        help()
    if verb in ["move", "go"] and noun in [
        "north",
        "south",
        "east",
        "west",
        "n",
        "s",
        "e",
        "w",
    ]:
        move(noun)
    elif verb in ["move", "go"]:
        print("That's not a valid direction for movement.")
    # elif verb in ["inventory", "i"]:
    #    display_inventory()
    # elif verb in ["sleep", "wait", "z"]:
    #    print("if there were turn counters, this would matter!")
    # elif verb in ["about", "credits"]:
    #    print("its just me lol")
    # elif verb in ["load", "save", "score"]:
    #    print("this is a pretty simple game, so there's none of that here! sorry :(")
    # elif verb in ["quit", "exit"]:
    #    print(
    #        "idk what ur using lol but if this is bash/zsh you can ctrl+C, but you probably already knew that!"
    #    )
    #######
    ####### 2+ word prompts
    # elif verb in ["examine", "x"]:
    #    examine(noun)
    # elif verb in ["eat", "drink"]:
    #    eat(noun)
    # elif verb in ["drop"]:
    #    drop(noun)
    elif verb in ["take", "t", "get", "g", "collect"]:
        take(noun)
    # elif verb in ["talk","greet","speak","ask"]:
    # speak(split_prompt)
    # elif verb in ["throw", "toss"]:
    #    throw(noun)
    # elif verb in ["wear"]:
    #    wear(noun)
    # elif len(player_prompt.prompt_len) >= 2 and player_prompt.get_prompt(1) in ["north","south","east","west","n","s","e","w"]:
    # move(noun)
    # elif verb == "teleport":
    #    teleport(noun)
    else:
        text_wrapper("The crow doesn't know what it is you'd like to do.")
    #######
    if player.get_location() == "cave":
        bad_end_1()
    elif player.get_inventory_count() == 7:
        true_end()
    next_prompt()


# prompt()
def next_prompt():
    # TODO: test only so remove or at least rename/format nicer
    """
    Inits start of new turn by printing current location, inventory, and prompt for next input. Sends captured str to be parsed.
    """
    inventory_message: str = ""
    print(separator)
    # Room description
    text_wrapper(rooms[player.get_location()]["init_descript"])
    if rooms[player.get_location()]["item"] != "":
        # item = rooms[player.get_location()]["item"]
        text_wrapper(
            rooms[player.get_location()]["item"].get_init_descript()
            # item.get_init_descript()
        )
    # Player status message
    if len(player.get_inventory()) == 0:
        inventory_message = ". Your inventory is empty."
    else:
        inventory_message = (
            ", and your inventory is " + ", ".join(player.get_inventory()) + "."
        )
    text_wrapper(
        f"Your current location is {rooms[player.get_location()]['print_name']}{inventory_message}"
    )
    # Prompt input
    prompt = str(input("↦ What's your next move?\n")).lower()
    print(separator)
    parsing(prompt)


# main()

"""
GAME LOGIC
"""


# intit process
intro_text = [
    "You've lived many seasons, more than you have stripes on your legs, so the cycle of give and take of the world is a familiar one. The bad will soon fade into the good, you'd tell the others, the expectant mothers, their worried wives. Nothing is forever.",
    "But the bad seasons have grown more frequent, the reprieves more rare. When the first foal was born with a coat white as snow, eyes pale as the moon, it was seen as a portent of change. Even after it died a few days later, it had to be a sign.",
    "After the third foal in a row suffered the same fate, it was recognized the curse it was. Perhaps it was a kindness, with the thinning of the grass, the weakening of the river, the reddening of the sky. The world you once knew was dying an ignoble death.",
    "Still, your youngest daughter is due any day. She still holds hope that the world will turn green and new again. You look to the stars, lurking above the herd bedding down for the night. The seven familiar dapple of the great horse constellation is still there, despite everything.",
    "A sudden streak of color slashes through the night sky. The bright red rolls down the neck of the great horse, its back, flaring out into a lustrous tail. The sight of something so far and vast grips you in fear, so you don't notice the creeping shadow until it speaks.",
    "'Crrr pretty, yes?'",
    "You snort and dance backwards to see a crow standing before you. 'Horse come to fox's wedding,' it says. 'But get gifts first. Seven good. Back morning, yes?' It flies off before you can ask what it means."
    "You awaken the next day to see the the crow impatiently staring at you. 'Seven stars, seven gifts,' it reminds you. It pokes the the thing it's standing on, hides and furs from different animals, scarred together into an unliving mass. 'Fox give gift back,' it adds.",
    "This is another portent, surely, and you hope it to be a good one. You tell the crow you'll accept the invitation and find the gifts for fox.",
    "",
    "Your journey will require you to GO to different places to look for suitable gifts, which the crow has helpfully volunteered itself to GET for you. If you look carefully enough, you should be able to see the paths and items of interest.",
]


# Bad end

bad_end_1_text = [
    "It'd been many years since you've seen them, but you know cave lions like to haunt places like this. The heavy cave air doesn't carry the weight of blood, though, or bones, or the spice of their pale hides.",
    "Instead there's a scent you don't recognize, a heat in the darkness that both welcomes and warns. The crow lands at the mouth of the cave and stands on its toes to get a better look in, but it doesn't follow you.",
    "It's not long until you step deeper than the sunlight can reach. It's not longer still until the sound of something is ahead.",
    "You freeze, hoping it's simply your fear, but it's been a long time since the world's been forgiving. A massive, shaggy shape approaches, looming above your eyesight.",
    "You let your fear take rein as you wheel around and rush towards the light. The walls of the cave scrape at your sides and the uneven floor jabs into the bottoms of your hooves, but still you run.",
    "The thing behind you speeds up before suddenly stopping. You've only an instant to wonder why, as the ground is suddenly gone beneath you. The realization that you've run past the river bank hits you the same time your forehoof touches the ground.",
    "You might have made the jump if you were younger, if you had known it was coming. But all of your weight comes down on a single, slender leg, and it shatters like a sheet of ice.",
    "The predator takes its time to reach you, but the crow lands within your eyesight first. 'Crrrr bad fall,' it says, as if you didn't already know that. 'Bear look hungry, hope he shares.'",
    "You demand to know why it hadn't warned you, and it shrugs. 'Hungry, too. And thanks for gifts, maybe bear come instead?' It then calls out to the bear, in the voice of growls and rumbles spoken by the things of teeth and claws.",
    "The bear responds, but you don't understand. Whatever it said, it's clearly in no rush, as it takes its time enjoying the 'gift' you so kindly brought to it.",
]


def bad_end_1():
    text_wrapper(bad_end_1_text)
    any_key = str(input("Thank you for playing. Press enter to exit the program."))
    quit()


# Regular end


def true_end():
    print("wuh oh")
    any_key = str(input("Thank you for playing. Press enter to exit the program."))
    quit()


# just_a_string = "this is just a single string but very long aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"


# print(
#    f"{list_loop(intro_text)}"
# textwrap.fill("\n".join(intro_text), width=width)
#        text=f"this is the pretty world init aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa{newlines()}is this gonna be a new line",
#    + "\n"
# )
"""
GAME START
"""
any_key = str(
    input(
        "Please fullscreen your terminal for the best experience. Press enter to start.\n"
    )
)
print(separator)
text_wrapper(intro_text)
player.set_location("valley")
next_prompt()

# whiles for rooms
"""
while player location = exit room --> ending process
"""
"""
while player location = cave --> bad end process
"""
# end process
