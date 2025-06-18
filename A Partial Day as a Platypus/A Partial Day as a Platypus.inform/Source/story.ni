"A (Partial) Day as a Platypus" by "Chase Anderson"
["platypus 2025" by "Chase Anderson"]

[
-----------------------------GLOBAL ZONE---------------------------------
]
[style rules]
[rooms are First Caps]
[things are all lower]

[TODO: AT SOME POINT:
prolly other items in the room(s) that are magical
a plot
the way out of the office being "unlocked" once all 3 pools' info is inspected
friendlynesS? for the other animals
interrogate tables
vulture fren?
set the in world time to evening]

[the player]
Platypus is a animal.

Platypus is proper-named.

The player is Platypus.

The printed name of Platypus is "the platypus."

Understand "the platypus" as Platypus.

The description of Platypus is "You are a platypus, one of the two kinds of egg-laying mammals known to exist. Like all mammals, you stand tall on two legs, can think, speak, and manipulate objects with your paws.

You, as a platypus, posses webbed paws, which can make manipulating items difficult. But you do sport a sensitive beak, even if the other kids teased you for it in primary school."

Beak is a part of Platypus.

Understand "my beak" as beak.

The description of beak is "A slightly-rubbery blunt beak makes up the end of your face. It's a little like a duck's, but dark and highly sensitive.

Your ancient ancestors used their beaks to hunt for prey in the water, sensing the magic that flows in all living things. This ability isn't very useful for the urban animal with no need to hunt, but it does mean you posses a natural aptitude for magic...and the lucrative careers that brings."

Webs is part of Platypus.

Understand "web" and "webbing" and "webbings" and "paws" as webs.

The description of webs is "Thin membranes stretch between each digit of your paws, making you very good at swimming and scooping water.

Unfortunately, it also means that you can't buy factory-made gloves and certain tools. You're able to manipulate items well enough, but every so often, you encounter a situation where you're reminded that this city wasn't designed for animals such as yourself."

[buy rules]
Understand "buy [something]" as buying

A thing can be buyable or unbuyable.
A thing is usually unbuyable.

Check buying something:
	if noun is unbuyable:
		say "You cannot buy that."

Carry out buying something:
	if player is in Cafe:
		say "'Thank you!' the clerk says with a smile. She opens the pastry case and hands you the [noun].";
		now player is carrying noun;
		stop the action;
	if player is in Street:
		say "'Thanks, Sir!' the paperbat says. He gestures with his wing to the pouch around his neck. It takes you a moment to realize that he wants you to take the [noun] yourself, as he lacks the digital faculties to hand it to you.
			
		You take the [noun] and pocket it.";
		now player is carrying noun;
		stop the action;

[occupado rules]
A thing can be occupado or unoccupado.

A thing is usually unoccupado.

[sense rules]

Sensing is an action applying to nothing.

Understand "sense" as sensing

Check sensing:
	if room is occupado:
		if player is in Office:
			say "You can sense the magic flowing through the leyline network hardware. If you pay attention to it for too long, it might give you a mighty headache.";
			stop the action;
		if player is in The Network:
			say "The only reason you're able to visualize the leyline network in this manner is BECAUSE you are currently sensing it. You cannot sense it any harder than you are now.";
			stop the action;
		else:
			say "You can sense the life energies that fuel magic from the beings in the room. As the room is lighted and your eyes are functional, you are also able to see the other animals within the room";
			stop the action;
	if room is unoccupado:
		say "You're unable to sense any magic nearby, as their are neither other beings in the room or magical items.";
		stop the action;

[talking rules]

Talking to is an action applying to one visible thing.

Understand "talk to [someone]" and "talk to [something]" and "chat with [someone]" as talking to.

Check talking to:
	if noun is not a person:
		say "You try to strike up a conversation with the [noun], but it seems to be quite one-sided, for obvious reasons.";
		stop the action;

[throw rules]

instead of throwing:
	say "You attempt to get a good grip on the [noun], but your webbings prevent it. You'd rather not make a fool of yourself, so you put the [noun] back into your pocket instead."

[attack rules]

instead of attacking someone:
	say "You are a civilized animal and know better than to attack others. Besides, platypi aren't known for their combat abilities, so you would surely end up the loser in this fight."

[give rules]

Before giving something to someone:
	if noun is not enclosed by the player:
		say "Your ability to use magic is minor, so you cannot summon an object you do not currently possess." instead.

[sleep rules]
instead of sleeping when player is in Apartment:
	say "You are not sleepy. Besides, you need to go to work, so sleeping now is a poor choice."

instead of sleeping when player is not in Apartment:
	say "This isn't a suitable place to fall asleep."

[make rules (just for bed lmao)]
Understand the command "make" as something new.

making is an action applying to one thing.

Understand "make [something]" as making.

A thing can be makable or unmakable.

A thing is usually unmakable.

Check making:
	if noun is unmakable:
		say "You cannot make the [noun], as it is not an unmade bed.";
		stop the action.

Carry out making:
	now noun is unmakable.

Report making:
	say "You made your bed! Your mother would be very proud."

before entering bed:
	say "You slip under the covers. Your bed is still warm from your sleeping body.";
	now player is in bed;

before exiting:
	now bed is makable;
	after exiting from bed:
		say "You leave your bed, messing up the covers once again."

[inspect rules]

Inspecting is an action applying to one thing.

Understand "inspect [something]" as inspecting.

A thing can be inspectable or uninspectable.

A thing is usually uninspectable.

A thing can be inspected or uninspected.

A thing is usually uninspected.

Check inspecting:
	if noun is uninspectable:
		say "You can only inspect magic visualized within the leyline network.";
		stop the action;
	if noun is inspected:
		try examining noun instead;
	else:
		now noun is inspected;
		now noun is open.

Carry out inspecting:
	if noun is inspectable:
		now noun is inspected.

Report inspecting:
	say "You inspect the [noun], revealing the magic within."

[use rules]

Using is an action applying to one thing.

Understand "use [something]" as using.

A thing can be usable or unusable.

A thing is usually unusable.

Check using:
	if noun is unusable:
		if noun is ewer:
			say "There's nothing to pour out.";
			stop the action;
		if noun is basin:
			say "You've already washed your face. Splashing the dirty water back on wouldn't be very productive.";
			stop the action;
		if noun is fireplace:
			say "It's too warm out to justify using the [noun].";
			stop the action;
		if noun is bookshelf:
			say "This would be the perfect place to store your collect--er, knick knacks, if you had any. Unfortunately, this is not a complete game, so there are no silly little trinkets for you to collect and display.";
			stop the action;
		if noun is books:
			say "You're tempted to read, but you have somewhere important to be. You'll get to it later.";
			stop the action;
		if noun is newspaper:
			say "There's not much use in reading old newspapers.";
			stop the action;
		if noun is hookup:
			say "You possess neither the tools nor the courage to fiddle with the device holding highly-pressurized steam.";
			stop the action;
		if noun is tram:
			say "You better go catch it! But platypi are not known for their sprinting ability, so you decide to walk instead.";
			stop the action;
		if noun is crowd:
			say "The concept of a 'crowd' is an inherently abstract one. What would 'using' it truly entail? As you are not a political agitator, you cannot think of a way to use the crowd, and, so, you do not.";
			stop the action;
		if noun is apartmentBuilding:
			say "Do you mean you want to go INSIDE your building?";
			stop the action;
		if noun is cafeFront:
			say "Do you mean you want to go WEST into the cafe?";
			stop the action;
		if noun is pastry case:
			say "You need to buy something first, otherwise, that would be stealing.";
			stop the action;
		if noun is leyline jack:
			if leyline jack is unlocked:
				now player is in The Network;
				stop the action;
			else:
				say "You need to 'unlock' the jack with the proper item first!";
				stop the action;
		if noun is time clock:
			say "Your shift isn't over, so it wouldn't be wise to do so.";
			stop the action;
		if noun is cords:
			say "Unplugging and rearranging cords would interrupt the flows of magic, which will cause problems for people, so you choose not to do so.";
			stop the action;
		if noun is connector:
			say "This is merely a cable, so it needs to be used to 'unlock' access to a leyline jack.";
			stop the action;
		if noun is leylineNetwork:
			say "As the network is an abstract layering of magic and hardware, it int itself cannot be 'used.' You need to interact with the hardware to access it.";
			stop the action;
		else:
			say "You cannot use [noun].";
			stop the action.

[
-----------------------------------APARTMENT-----------------------------
]
[-]

Apartment is a room. "
[if unvisited]
You are awoken by the shriek of your alarm. Your paw slaps around for the snooze button, condensation collecting on the webbings. Finally, you find your mark, and the whistling steam quiets.

You're tempted to fall back asleep, but you recall the tenuous status you have with your boss. So, you pull yourself out of your bed to view your single-room home once more. It isn't much, but you don't want to lose it.

[end if]
There's a corner for your bathroom-slash-kitchen, complete with a washing basin atop a safe. There's also a brick fireplace, a small bookshelf, your bed, and your alarm clock. There is an additional steam hookup, currently unused. And, of course, the door that leads you OUTSIDE your apartment."

[
--------------------------apartment items--------------------------------
]
[- FIXME: is there an if unvisited for items?]

[alarm clock]
alarm clock is a scenery device in Apartment.

Understand "alarm" and "clock" as alarm clock.

The description of alarm clock is "A steam-powered alarm clock. The newest model, it cost you a pretty penny, but it means you always wake up in time for work.
[if unvisited]
Your neighbors aren't super appreciative of this modern convenience, however. Probably because they keep entirely different hours than you do.
[end if]
"

After switching on alarm clock:
	say "You reset your alarm. Now at least you won't need to worry about remembering to do it when you get home from work."

After switching off alarm clock:
	say "You enjoy the click of the clockwork, but you'll need to turn it back on eventually. Or maybe you'll enjoy the risk of sleeping in tomorrow."

Instead of eating alarm clock:
	say "While a very caprine idea, the steam burns wouldn't be very appetizing, so you decline the idea."

Instead of using alarm clock:
	try switching on alarm clock.

[bed]
bed is a enterable scenery container in Apartment. bed is makable.

Understand "your bed" and "the bed" and "nest" and "your nest" and "the nest" as bed.

instead of examining bed:
	if bed is makable:
		say "Your bed, big enough for one not-too-large creature. The covers are askew, and you are reminded how often you were scolded for never making your bed.";
		stop the action;
	else:
		say "Your bed, big enough for one not-too-large creature. The covers are neatly made."

Instead of eating bed:
	say "While you had a dream like this once, it wasn't a very pleasant one. Besides, you already have food available."

Instead of using bed:
	try entering bed.

[safe]
safe is a closed, unlocked, openable scenery container in Apartment.

Understand "pie safe" as safe.

The description of safe is "A pie safe. The tin panels on the front have holes punched in the design of eucalyptus trees."

Instead of eating safe:
	say "Pie safes are for storing food, not being food!"

Instead of using safe:
	try opening safe.

[pie]
pie is a edible thing in safe.

Understand "worm pie" and "mealworm pie" and "meal worm pie" and "pot pie" and "worm pot pie" and "mealworm pit pie" and "meal worm pot pie" and "potpie" and "worm potpie" and "mealworm potpie" and "meal worm potpie" as pie.

The description of pie is "A personal-sized mealworm pot pie. Makes a perfect start for your day-slash-night."

After eating pie:
	say "Yum! Protein is the best way to start the day, as your mum always said."

Instead of using pie:
	try eating pie.

[wash basin]
basin is a scenery container in Apartment.

Understand "wash basin" and "sink" and "washing basin" as basin.

The description of basin is "A shallow-ish bowl and matching ewer. Perfect for washing your face in the morning. Or, evening, depending on when you wake up."

Instead of eating basin:
	say "While a very caprine idea, the porcelain wouldn't be very appetizing, so you decline the idea."

After using basin:
	say "You splash water onto your face. Refreshing!";
	now basin is unusable;
	stop the action.

[ewer]
ewer is in basin. ewer is usable.

Understand "jug" and "jar" as ewer.

The description of ewer is "A simple porcelain jug filled with water."

Instead of eating ewer:
	say "While a very caprine idea, the porcelain wouldn't be very appetizing, so you decline the idea."

Before using ewer:
	if player is not in Apartment:
		say "Pouring out the water would be terribly rude, so you decide not to.";
		stop the action.

After using ewer in Apartment:
	say "You pour water into the basin.";
	now basin is usable;
	now ewer is unusable.

[fireplace]

fireplace is a scenery thing in Apartment.

Understand "fire place" as fireplace.

The description of fireplace is "A brick fireplace. It's the summer, so you won't be needing to use it anytime soon."

Instead of eating fireplace:
	say "While a very caprine idea, the brick wouldn't be very appetizing, so you decline the idea."

[bookshelf]

bookshelf is a transparent scenery container in Apartment.

Understand "book shelf" as bookshelf.

The description of bookshelf is "A small, rickety-looking bookshelf. Would be the perfect place to store your knick-knacks, if you had any."

Instead of eating bookshelf:
	say "While a very caprine idea, the splinters wouldn't be very appetizing, so you decline the idea."

[bookshelf items]

books is a thing in bookshelf.

Understand "book" as books.

The description of books is "Several books, none of any notability. There's dime novels, old almanacs, and random volumes of encyclopedias on obscure subjects.
[if unvisited]
You remind yourself to stop accepting 'gifts' from your vulture friend, lest you start drowning in useless books.
[end if]
"

Instead of eating books:
	say "While a very caprine idea, the paper cuts wouldn't be very appetizing, so you decline the idea."

newspaper is a thing in bookshelf.

Understand "paper" and "news paper" and "news" as newspaper.

The description of newspaper is "Months-old newspapers that you're only holding on to for lighting the fireplace. You haven't needed to in some time, so they're beginning to yellow."

Instead of eating newspaper:
	say "While a very caprine idea, the paper cuts wouldn't be very appetizing, so you decline the idea."

[hookup]

hookup is a scenery thing in Apartment.

Understand "steam hookup" and "steam hook up" and "hook up" as hookup.

The description of hookup is "One of the ingenious inventions of modern living, it permits pressurized steam into compatible appliances to give them kinetic power.

[if unvisited]
Some engineer surely lost many nights worth of sleep to design a connection that only allows the emission of steam when a authorized connecting cable is used. Granted, only the utility company has the tools to add or remove the connections, as well as hold the patent for the cables. You understand the issue with this, but you're also not interested in designing your own tools, nor the likely steam burns.
[end if]
"

Instead of eating hookup:
	say "While a very caprine idea, the steam burns wouldn't be very appetizing, so you decline the idea."

[
-------------------------apartment rules---------------------------------
]

Instead of going nowhere from Apartment:
	say "You bump into the wall. You are swiftly reminded of how sensitive your beak is, and why it isn't a good idea to run into walls."

[
------------------------------street-------------------------------------
]
[TODO: buying]

Street is outside of Apartment. "
[if unvisited]
When you first saw the listing for an apartment on Telegraph Ave, you thought it was a wonderful idea. Night markets! Plays! All the bars a young platypus could ever want to visit!

That was before you got your night shift job. Now, all the activity is merely a reminder of all the things you are no longer able to do. Most of the other nocturnal animals in your city have chosen elsewhere to live, where most of the inhabitants were away at work and they could sleep in peace.

Telegraph was busy at all hours, which made finding sleep difficult.

[end if]
[one of]
A tram stops and a stream of creatures jump off, scattering in each direction as they headed to their evening activities. You plan to jump on yourself, but it takes off before you have the chance.

It seems like you'll be walking to work tonight.

[or]
A young bat stumbles on the sidewalk, calling out for buyers for the evening edition of the paper. He's emoting with his wings, which draws attention, but gives everyone reason to avoid him to stay out of range.

You decide to do the same.

[at random]
If you continue SOUTH, you'll reach your office building. You can also go back INSIDE your apartment.
"

[Street is occupado.]

[
----------------------------Street items---------------------------------
]
[apt building]
apartmentBuilding is a backdrop.

apartmentBuilding is in Street and Cafe.

The printed name of apartmentBuilding is "apartment building".

Understand "apartment" and "your building" and "apartment building" and "building" as apartmentBuilding.

The description of apartmentBuilding is "Your apartment building. It used to be a sizable home, but has since been divided into smaller units."

Instead of eating apartmentBuilding:
	say "While a very caprine idea, the concrete wouldn't be very appetizing, so you decline the idea."

[crowd]
crowd are people in Street.

crowd are scenery.

Understand "crowd" and "riders" and "people" and "beings" and "animals" as crowd.

The description of crowd is "An ever-moving throng of animals going about their day. There're beings from nearly every part of the world who live here, but you don't spot anyone else from Australis."

instead of eating the crowd:
	if the pie is in nowhere:
		say "Platypi aren't known for being apex predators...besides, you're not hungry.";
	otherwise:
		say "Platypi aren't known for being apex predators...besides, you have food at home.";

Instead of talking to crowd:
	say "You try to catch the attention of several animals, but they're all too busy with their evening plans, ignoring you."

[tram]
tram is a scenery in Street.

The description of tram is "The tram is long gone, but its tracks and the pneumatic tube that power it remain. If you weren't sensitive to magic, you'd like to think that you would have been a tram operator instead."

Instead of eating tram:
	say "While a very caprine idea, the steel wouldn't be very appetizing, so you decline the idea."

[cafeFront]
cafeFront is a fixed in place thing in Street. "Across the street to the WEST is the cafe you often frequent."

Understand "cafe" as cafeFront.

The description of cafeFront is "A popular cafe. There's several tables out front and animals enjoying an evening meal. A quick peek through the windows shows that, while busy, there's still a few open tables and no line."

Instead of eating cafeFront:
	say "While a very caprine idea, the concrete wouldn't be very appetizing, so you decline the idea."


[the bat]

Bat is a animal in Street.

Bat is male.

The printed name of Bat is "paperbat".

Understand "the bat" and "paper bat" and "paperboy" and "paper boy" and "paperbat" and "fruitbat" and "fruit bat" as Bat.

The description of Bat is "A young fruitbat wearing ink-stained overalls and a sling filled with rolled-up newspapers.

Due to his wings, he only has one long, thumb-like appendage to work with, but he only really needs a powerful pair of lungs to convince other animals to buy his wares."

Instead of giving something to Bat:
	say "He looks at you questioningly.
	'How'm I supposed to take that, sir?'
	He gestures at you with his wing, showing his lack of hands."

Instead of talking to Bat:
	say "The paperbat's ears perk up.

	'You want a paper, sir? Fresh off the presses!'

	Unfortunately, the programmer was not able to figure out how to make buying possible, so you cannot do so.
	"

[evening edition]
evening edition is a thing.

Bat is carrying evening edition.

evening edition is buyable.

Understand "evening paper" and "evening news" and "evening newspaper" and "paper" as evening edition.

The description of evening edition is "This evening's edition of the daily news. It mostly bears tallies of the day's business dealings...which isn't of much interest to you. You're not quite sure why you even bought this."


[
------------------------------street rules-------------------------------
]
[-]
Instead of going nowhere from Street:
	say "
	[one of]
	You walk for a short while, but are stopped by a road closure. It seems that some hapless laborer had dug without consulting city hall first, resulting in a damaged steam line...and most of the road being torn up.

	You turn around and go back to your previous position.

	[or]
	You decide this would be a great evening to look for a shortcut to the office. You slip down an alleyway, but don't make it very far, as someone had decided this would make an excellent dumping ground for old furniture.

	You make a note to tell your vulture friend later, and then turn around and return to the street.

	[or]
	You're running out of directions to go that are not the office. While slipping into the nearby bar for a drink is a compelling option, paying your rent takes priority.

	You dejectedly shove your paws into your pockets and turn around instead.
	[stopping]
	"

[
------------------------------cafe---------------------------------------
][TODO: dif if you came in thru The Network. ability to order? hongry/thorsty if not eat at home? talk to ppl? make the jack usable w/item. make bell only go off if ur entering it (not a look)]

Cafe is west of Street. "
The bell above the door tinkles as you step inside.

[one of]
'G'day,' says the clerk behind the counter, with a big smile.

A couple patrons glance at you, likely wondering if the weasel was making fun of you. But you've been going here for years, so you chalk it up to fitting the 'Australis' theme more than anything else.

[or]
'G'day again,' the clerk chirps, and then giggles. 'Changed your mind, huh? What can I get you?'

[or]
'Hey,' the clerk says. 'You feeling okay? If you need a glass of water or something, you can just ask.'

You still don't answer her, which she acknowledges by glancing away nervously. She busies herself with something behind the counter you can't see.

[or]
'Oh.' The clerk glances up at you, gives you a moment to respond, and then turns her back to deal with something you can't see.

You won't be able to speak to her like this.

[or]
The clerk glances over her shoulder at you, but quickly returns to her work, ignoring you.

You have the feeling you've lost your chance to speak to her.

[stopping]
While you were indeed hungry, you don't have the time to kick up your webs up and relax, so you better get going if you plan on not angering your boss.

The cafe has several patrons sitting at different tables, a clerk standing behind the counter, and the door to leave in the EAST.
"

[Cafe is occupado.]

[
----------------------------cafe items-----------------------------------
]

[clerk]

Clerk is a animal in Cafe.

Clerk is female.

Understand "the clerk" and "the cashier" and "the waitress" and "the weasel" and "weasel" as Clerk.

The description of Clerk is "A brown weasel in her summer fur. She looks to be in her early 20s and is wearing an apron."

Instead of giving something to Clerk:
	say "'Oh, no, there's no need for that!' the clerk says. 'You should be buying from me, instead!'"

Instead of talking to Clerk:
	say "'Would you like to buy something instead?' she asks.
	
	But as the programmer couldn't figure out how to make this feature work, you cannot. Why not look at all the nice pastries instead? Go ahead, the pastry case is transparent!"


[counter]
counter is scenery supporter in Cafe.

The description of counter is "A long wooden counter with a clerk standing behind. Atop it is a pastry case, invitingly displaying its wares."

Instead of eating counter:
	say "While a very caprine idea, the splinters wouldn't be very appetizing, so you decline the idea."

[pastry case]
pastry case is a locked transparent scenery container in Cafe.

Understand "case" and "display case" as pastry case.

The description of pastry case is "A glass case with shiny brass fittings, both displaying and protecting the delectable treats within."

Instead of eating pastry case:
	say "While a very caprine idea, the glass wouldn't be very appetizing, so you decline the idea."

[pastries]
[another pie is a edible thing in pastry case.

Understand "worm pie" and "mealworm pie" and "meal worm pie" and "pot pie" and "worm pot pie" and "mealworm pit pie" and "meal worm pot pie" and "potpie" and "worm potpie" and "mealworm potpie" and "meal worm potpie" and "pie" as another pie.

The description of another pie is "A personal-sized mealworm pot pie. Makes a perfect start for your day-slash-night."]

pepper tart is a edible thing in pastry case.

Understand "tart" as pepper tart.

pepper tart is buyable.

The description of pepper tart is "A flaky pastry shell filled with bright-red peppers. Extremely spicy, and only suitable for an avian palate."

Instead of using pepper tart:
	try eating pepper tart.

After eating pepper tart:
	say "You are cruelly reminded that you aren't actually a bird. The heat is so extreme that it blocks your ability to breathe, which is essential for survival.";
	end the story finally saying "To think that your story would end from a mere pastry!"

wax bottle is a edible thing in pastry case.

wax bottle is buyable.

Understand "bottle" and "juice bottle" as wax bottle.

The description of wax bottle is "Edible wax formed in the shape of a bottle. Inside is a pale yellow liquid. The nectar is a favorite of hummingbirds, lories, and bears."

Instead of using wax bottle:
	try eating wax bottle.

After eating wax bottle:
	say "It is a shocking dichotomy of tasteless wax and mouth-puckeringly sweet nectar. You inelegantly pull the ball of chewed wax from your beak and shove it in your pocket.";
	now player has ball of wax.

ball of wax is a thing.

Understand "wax" and "ball" as ball of wax.

The description of ball of wax is "An inedible mass of 'edible' wax."

Instead of using ball of wax:
	try eating ball of wax.

Instead of eating ball of wax:
	say "The fact that you cannot is the reason you posses it in the first place."

grass galette is a edible thing in pastry case.

grass galette is buyable.

Understand "galette" as grass galette.

The description of grass galette is "Folded pastry around artfully arranged grasses. Aggressively herbaceous and rough on the teeth. Luckily for you, you have none."

Instead of using grass galette:
	try eating grass galette.

After eating grass galette:
	say "Who would have guessed that eating a mass of grass was unpleasant? Your stomach will remember this (and surely remind you of this injustice later)."

stargazy roll is a edible thing in pastry case.

stargazy roll is buyable.

Understand "stargazy pie" and "roll" and "fish pie" and "fish roll" as stargazy roll.

The description of stargazy roll is "Flaky pastry rolled around a fish, leaving its head exposed. Probably an unnerving sight for herbivores."

Instead of using stargazy roll:
	try eating stargazy roll.

After eating stargazy roll:
	say "Yum! All that remains is the head of the fish, which you slip discretely into your pocket.";
	now player has fish head.

fish head is a thing.

Understand "head" and "fish" as fish head.

The description of fish head is "The severed and cooked head of a medium-small fish. Some other animal might appreciate it more than you would."

Instead of using fish head:
	try eating fish head.

Instead of eating fish head:
	say "The fact that you cannot is the reason you posses it in the first place."

[leyline jack]
[leyline jack is a scenery thing in Cafe.]
leyline jack is a openable, closed, lockable, locked door.

[FIXME: diff descript in network]
leyline jack is south of Cafe and north of The Network."[if leyline jack is closed]You can't help but notice the leyline jack is left unguarded on the SOUTH wall.[else] A leyline jack is available on the SOUTH wall."

The description of leyline jack is "[if leyline jack is closed]A small, squarish port that can be used to connect to the leyline network, if one possessed the proper cable. Probably not a good idea that anyone can access it, but not just anyone has the capacity to exploit it.[else]A small, squarish port ready to connect you to the leyline network."

Understand "jack" as leyline jack.

Instead of eating  leyline jack:
	say "You cannot eat something inserted into the wall."

[
-----------------------------cafe rules----------------------------------
]

Instead of going nowhere from Cafe:
	say "You consider it, but decide not to. It would be unwise to plow into someone's table and ruin their supper."

[
---------------------------------office----------------------------------
]
[TODO: sp. descript for entering from street/network, look. chars to talk to.]

Office is south of Street. "
[if unvisited]
You're able to punch in just in time; your boss won't be able to accuse you of being late now!

[end if]
As you were never taught how to speak, you do not run into any creatures on the way to your closet. Lucky you!

Unlike other animals, you don't mind the dark, enclosed space of the networking closet. The softly-glowing cords of the leyline network create glittering afterimages if you stare at one spot for too long.

You have tasks that are your duty to perform, but you aren't capable of remembering what they are.

Once you're prepared, you can go INSIDE the network. You can also leave the office by going NORTH.
"

[
----------------------------office items---------------------------------
]
[-]
[timeclock]
time clock is scenery in Office.

Understand "timeclock" and "clock" as time clock.

The description of time clock is "A clockwork device used to mark your timecard and log your hours. A necessary evil of the office."

Instead of eating time clock:
	say "While it would resolve your issues with the device itself, you would then need to greet your boss to manage your hours, so it'd be best to table this idea."

[cords]
cords is scenery thing in Office.

Understand "leyline cords" and "cord" and "leyline cord" as cords.

The description of cords is "Thin filaments spun from materials harvested from monsters that allow magical energy to be transferred from one place to another. You had to memorize all the colors and the best materials for your certification exam, but you've yet to craft your own cables."

Instead of eating cords:
	say "While a very caprine idea, the hairs and heartstrings wouldn't be very appetizing, so you decline the idea."

[connector]
connector is a thing in Office. "The leyline connector is awaiting the start of your shift."

Understand "leyline cable" and "cable" and "leyline connector" as connector.

The description of connector is "A thick cable coated in rubber, not unlike your beak. This allows anyone with the aptitude to connect to the leyline network."

Instead of eating connector:
	say "This singular cable is worth more than your yearly salary, so that would be a very unwise decision."

connector unlocks leyline jack.

[network]

leylineNetwork is scenery thing in Office.

Understand "leyline network" and "leyline net" and "the network" and "the leyline network" and "the net" and "network" as leylineNetwork.

The description of leylineNetwork is "The carefully-stacked and organized magitek that makes up they leyline network...or at least part of it. Like steam, a complex series of devices step down magic to an amount and strength that can be used by smaller businesses and homes."

The printed name of leylineNetwork is "leyline network".

Instead of eating leylineNetwork:
	say "As it is many times your volume and mass, this would be impossible."

[
---------------------------office rules----------------------------------
]
Instead of going nowhere from Office:
	say "You move in the dark, but the faint crackle of magic tingles your beak. You remember that continuing in such a direction would result in becoming entangled with the cords and cause quite a mess for yourself.

	You, wisely, decide not to."

[Instead of going north when player is in Office:
    say "If you clock out now, that'll surely cause issues with your boss. Unfortunately, you are stuck here for the time being."][TODO: put in plot reason/resolution for this]

[///][-]
instead of going inside when the player is in the Office:
	if the player is carrying the connector:
		say "You take a moment to prepare yourself. You wrap one paw around the cable's end, close your eyes, and then plug it into the hardware.";
		now player is in The Network;
	else:
		say "You cannot enter the leyline network without the cable to do so."

[
---------------------------The Network-----------------------------------
]
[FIXME: cant go to office from cafe thru The Network; TODO: diff descripts based on where u went in? interactables]

The Network is inside of Office. "
[if unvisited]
You'll probably never get used to the feeling of tumbling inside-out that always happens whenever you connect to the network. [end if]
The leyline network is an abstract space, colors and intent swirling in place until a current of energy might rush by and take it from one place to another.

You're one of the lucky few that is able to visualize this space...but not lucky enough to have the aptitude to actually create the spells yourself. Instead, you're nothing more than a glorified guard, inspecting suspicious-looking tidepools to find anything that might not supposed to be there.

You can leave by going OUTSIDE of the network.
"

[
-------------------------the network items-------------------------------
]
[TODO: the inspecting needs to say tht there's magic inside to further inspect/examine]
[red]
redPool is a fixed in place closed container in The Network. "A red pool of energy quietly swirls."

redPool is inspectable.

Instead of using redPool:
	if redPool is uninspected:
		try inspecting redPool instead;
	else if redPool is inspected:
		try examining redPool instead;
	else:
		say "idfk this is an error."

Understand "red" and "red pool" as redPool.

The printed name of redPool is "red pool".

The description of redPool is "A deep pool of tomato-bright energy. You can gauge that there's just about the right amount had accumulated since your last shift."

Instead of eating redPool:
	say "You cannot eat an abstract concept."

[red info]
red magic is a fixed in place thing in redPool.

The description of red magic is "You imagine your paw dipping into the red magic. Each mote feels as it should; they accumulate, like dewdrops on a spiderweb, as magic moves through the leylines. Too much or too little would be a sign that something is wrong, but there's just the amount that you'd expect between your shifts."

[this is normal log data]

[blue]
blue pool is a fixed in place container in The Network. "A blue pool of energy gives off a faint buzz along your beak."

blue pool is inspectable.

Instead of using blue pool:
	if blue pool is uninspected:
		try inspecting blue pool instead;
	else if blue pool is inspected:
		try examining blue pool instead;
	else:
		say "idfk this is a error message."

Understand "blue" as blue pool.

The description of blue pool is "A shallow pool of jay-blue energy. Like the bird, there's a wealth of barely-contained momentum just underneath the surface."

Instead of eating blue pool:
	say "You cannot eat an abstract concept."

[blue info]
blue magic is a fixed in place thing in blue pool.

The description of blue magic is "The blue magic is quite active, eager to jump from one place to another. You keep your distance from the pool to keep from being a stepping stone for the magic.

There's something more you should be doing with this...but it hasn't been implemented yet, sorry!"
[this has some malevolent stuff in it]

[green]

green pool is a fixed in place container in The Network. "A green pool of energy is constantly churning and can easily pull you under if you don't approach it with care."

green pool is inspectable.

Instead of using green pool:
	if green pool is uninspected:
		try inspecting green pool instead;
	else if green pool is inspected:
		try examining green pool instead;
	else:
		say "idfk this is a error message."

Understand "green" as green pool.

The description of green pool is "A deep, deep well of energy. It's more like a river, or an ocean current, and is the backbone of the leyline network...or at least the corner of it that exists within your closet."

Instead of eating green pool:
	say "You cannot eat an abstract concept."

[green info]
green magic is a fixed in place thing in green pool.

The description of green magic is "The pool is more like a porthole, allowing you to see the constant rush of magic that moves through the network. Because of its speed and volume, it's difficult to gauge when there's changes.

Unless it stops entirely, but then many other things would break, and you wouldn't need to inspect it to find out."
[this is network activity]

[
-----------------------------the network rules---------------------------
]

Instead of going nowhere from The Network:
	say "As the network is an abstract space, it really doesn't conform to concepts such as 'up' and 'down.' You waste time thinking about movement that isn't possible."