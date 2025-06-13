"platypus 2025" by "Chase Anderson"

[apartment][TODO: figure out how to get 2nd P for unvisited to line up w/1st P of each assertion.]

Apartment is a room. "
[if unvisited]
You are awoken by the shriek of your alarm. Your paw slaps around for the snooze button, condensation collecting on the webbings. Finally, you find your mark, and the whistling steam quiets.

You're tempted to fall back asleep, but you recall the tenuous status you have with your boss. So, you pull yourself out of your bed to view your single-room home once more. It isn't much, but you don't want to lose it.

[end if]
There's a corner for your bathroom-slash-kitchen, complete with a washing basin atop a safe. There's also a brick fireplace, a small bookshelf, your bed, and your alarm clock. There is an additional steam hookup, currently unused. And, of course, the door that leads you OUTSIDE your apartment.
"

[apartment items][TODO: make alarm do things when on. make the bed? sleep bed. use basin/ewer (wash). just the using of shit/custom verbs in gen FIXME: is there an if unvisited for items?]
[alarm clock]
alarm clock is a scenery device in Apartment.

Understand "alarm" and "clock" as alarm clock.

The description of alarm clock is "A steam-powered alarm clock. The newest model, it costed you a pretty penny, but it means you always wake up in time for work.
[if unvisited]
Your neighbors aren't super appreciative of this modern convenience, though. Probably because they keep entirely different hours than you do.
[end if]
"

[bed]
bed is a enterable scenery container in Apartment.

Understand "your bed" and "the bed" and "nest" and "your nest" and "the nest" as bed.

The description of bed is "Your bed, big enough for one not-too-large creature. The covers are askew, but, as you were never taught how to make the bed, it will need to remain messy for the time being."

[safe]
safe is a closed, unlocked, openable scenery container in Apartment.

Understand "pie safe" as safe.

The description of safe is "A pie safe. The tin panels on the front have holes punched in the design of eucalyptus trees."

[pie]
pie is a edible thing in safe.

Understand "worm pie" and "mealworm pie" and "meal worm pie" and "pot pie" and "worm pot pie" and "mealworm pit pie" and "meal worm pot pie" and "potpie" and "worm potpie" and "mealworm potpie" and "meal worm potpie" as pie.

The description of pie is "A personal-sized mealworm pot pie. Makes a perfect start for your day-slash-night."

[wash basin]
basin is a scenery container in Apartment.

Understand "wash basin" and "sink" and "washing basin" as basin.

The description of basin is "A shallow-ish bowl and matching ewer. Perfect for washing your face in the morning. Or, evening, depending on when you wake up."

[ewer]
ewer is in basin.

Understand "jug" and "jar" as ewer.

The description of ewer is "A simple porcelain jug filled with water."

[fireplace]

fireplace is a scenery thing in Apartment.

Understand "fire place" as fireplace.

The description of fireplace is "A brick fireplace. It's the summer, so you won't be needing to use it anytime soon."

[bookshelf]

bookshelf is a scenery container in Apartment.

Understand "book shelf" as bookshelf.

The description of bookshelf is "A small, rickety-looking bookshelf. Would be the perfect place to store your knick-knacks, if you had any."

[bookshelf items]

books is a thing in bookshelf.

Understand "book" as books.

The description of books is "Several books, none notable. There's dime novels, old almanacs, and random volumes of encyclopedias on obscure subjects.
[if unvisited]
You remind yourself to stop accepting 'gifts' from your vulture friend.
[end if]
"

newspaper is a thing in bookshelf.

Understand "paper" and "news paper" and "news" as newspaper.

The description of newspaper is "Months-old newspapers that you're only holding on to for lighting the fireplace. You haven't needed to in some time, so they're beginning to yellow."

[hookup]

hookup is a scenery thing in Apartment.

Understand "steam hookup" and "steam hook up" and "hook up" as hookup.

The description of hookup is "One of the ingenious inventions of modern living, it permits pressurized steam into compatible appliances to give them kinetic power.

[if unvisited]
Some engineer surely lost many nights worth of sleep to design a connection that only allows the emission of steam when a authorized connecting cable is used. Granted, only the utility company has the tools to add or remove the connections, as well as hold the patent for the cables. You understand the issue with this, but you're also not interested in designing your own tools and risking steam burns.
[end if]
"

Instead of going nowhere from Apartment:
    say "You bump into the wall. You are swiftly reminded of how sensitive your beak is, and why it isn't a good idea to run into walls."

[street][]

Street is outside of Apartment. "
[if unvisited]
When you first saw the listing for an apartment on Telegraph Ave, you thought it was a wonderful idea. Night markets! Plays! All the bars a young platypus could ever want to visit!

That was before you got your night shift job. Now, all the activity is merely a reminder of all the things you are no longer able to do. Most of the other nocturnal animals in your city had chosen elsewhere to live, where most of the inhabitants were away at work and they could sleep in peace.

Telegraph was busy at all hours, which made finding sleep difficult.

[end if]
[one of]
A tram stops and a stream of creatures jump off, scattering in each direction as they headed to their evening activities. You plan to jump on yourself, but it takes off before you have the chance.

It seems like you'll need to walk to work tonight.

[or]
A young bat stumbles on the sidewalk, calling out for buyers for the evening edition of the paper. He's emoting with his wings, which draws attention, but gives everyone reason to avoid him to stay out of range.

You decide to do the same.

[at random]
If you continue SOUTH, you'll reach your office building.
"

[Street items]
[apt building]
apartmentBuilding is a backdrop.

apartmentBuilding is in Street and Cafe.

Understand "apartment" and "your building" and "apartment building" as apartmentBuilding.

The description of apartmentBuilding is "Your apartment building. It used to be a sizable home, but has since been divided into smaller units."

[crowd]
crowd is a scenery in Street.

Understand "crowd" and "riders" and "people" and "beings" and "animals" as crowd.

The description of crowd is "An ever-moving throng of animals going about their day. There're beings from nearly every part of the world who live here, but you don't spot anyone else from Australis."

[tram]
tram is a scenery in Street.

The description of tram is "The tram is long gone, but its tracks and the pneumatic tube that powers it remain. If you weren't sensitive to magic, you'd like to think that you'd be a tram operator instead."

[cafeFront]
cafeFront is a fixed in place thing in Street. "Across the street to the WEST is the cafe you often frequent."

Understand "cafe" as cafeFront.

The description of cafeFront is "A popular cafe. There's several tables out front and animals enjoying an evening meal. A quick peak through the windows shows that, while busy, there's still a few open tables and no line."
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

    You dejectedly shove your paws into your pockets and turn around.

    [stopping]
    "

[cafe][TODO: dif if you came in thru The Network. ability to order? hongry/thorsty if not eat at home? talk to ppl? make the jack usable w/item. make bell only go off if ur entering it (not a look)]

Cafe is west of Street. "
The bell above the door tinkles as you step inside.

[one of]
'G'day,' says the clerk behind the counter, with a big smile.

A couple patrons glance at you, likely wondering if the weasel was making fun of you. But you've been going here for years, so you chalk it up to fitting the 'Australis' theme than anything else.

[or]
'G'day again,' the clerk chirps, and then giggles. 'Changed your mind, huh? What can I get you?'

Unfortunately, you have still never learned how to speak, so you cannot answer her.

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
While you were indeed hungry, you didn't have the time to kick your webs up and relax, so you better get going if you planned on not angering your boss.

The cafe has several patrons sitting at different tables, a clerk standing behind the counter, and the door to leave in the EAST. You can't help but notice the leyline jack is left unguarded. You're so amazing that you can go INSIDE the leyline network without an item (as you have yet to learn how to use items).
"

[cafe items]
counter is scenery supporter in Cafe.

The description of counter is "A long wooden counter with a clerk standing behind. A pastry case filled with treats invitingly displays its wares."

[pastry case]
pastry case is a locked transparent scenery container in Cafe.

Understand "case" and "display case" as pastry case.

The description of pastry case is "A glass case with shiny brass fittings, both displaying and protecting the delectable treats within."

[pastries]
[another pie is a edible thing in pastry case.

Understand "worm pie" and "mealworm pie" and "meal worm pie" and "pot pie" and "worm pot pie" and "mealworm pit pie" and "meal worm pot pie" and "potpie" and "worm potpie" and "mealworm potpie" and "meal worm potpie" and "pie" as another pie.

The description of another pie is "A personal-sized mealworm pot pie. Makes a perfect start for your day-slash-night."]

pepper tart is a edible thing in pastry case.

Understand "tart" as pepper tart.

The description of pepper tart is "A flaky pastry shell filled with bright-red peppers. Extremely spicy, and only suitable for an avian palate."

wax bottle is a edible thing in pastry case.

Understand "bottle" and "juice bottle" as wax bottle.

The description of wax bottle is "Edible wax formed in the shape of a bottle. Inside is a pale yellow liquid. The nectar is a favorite of hummingbirds, lories, and bears."

grass galette is a edible thing in pastry case.

Understand "galette" as grass galette.

The description of grass galette is "Folded pastry around artfully arranged grasses. Aggressively herbaceous and rough on the teeth. Luckily for you, you have none."

stargazy roll is a edible thing in pastry case.

Understand "stargazy pie" and "roll" and "fish pie" and "fish roll" as stargazy roll.

The description of stargazy roll is "Flaky pastry rolled around a fish, leaving its head exposed. Probably an unnerving sight for herbivores."

[leyline jack]
leyline jack is a scenery thing in Cafe.

Understand "jack" as leyline jack.

The description of leyline jack is "A port to the leyline network. Probably not a good idea that anyone can access it, but not everyone has the capacity to do so."

Instead of going nowhere from Cafe:
    say "You consider it, but decide not to. It would be unwise to plow into someone's table and ruin their supper."

[office][TODO: sp. descript for entering from street/network, look. chars to talk to. items/things/stuff to do]

Office is south of Street. "
[if unvisited]
You're able to punch in just in time; your boss won't be able to accuse you of being late this time!

[end if]
As you were never taught how to speak, you do not run into any creatures on the way to your closet. Lucky you!

Unlike other animals, you don't mind the dark, enclosed space of the networking closet. The softly-glowing cords of the leyline network create glittering afterimages if you look at one spot for too long.

You have tasks that are your duty to perform, but you aren't capable of remembering what they are.

You're so amazing that you can go INSIDE the leyline network without an item (as you have yet to learn how to use items.). You can also leave the office by going NORTH.
"

[office items]
[timeclock]
time clock is scenery in Office.

Understand "timeclock" and "clock" as time clock.

The description of time clock is "A clockwork device used to mark your timecard and log your hours. A necessary evil of the office."

[cords]
cords is scenery thing in Office.

Understand "leyline cords" and "cord" and "leyline cord" as cords.

The description of cords is "Thin filaments spun from materials harvested from monsters that allow magical energy to be transferred from one place to another. You had to memorize all the colors and the best materials for your certification exam, but you've yet to need to craft your own cables."

[network]

leylineNetwork is scenery thing in Office.

Understand "leyline network" and "leyline net" and "the network" and "the leyline network" and "the net" and "network" as leylineNetwork.

The description of leylineNetwork is "The carefully-stacked and organized magitek that makes up they leyline network...or at least part of it. Like steam, a complex series of devices step down magic to an amount and strength that can be used by smaller businesses and homes."

Instead of going nowhere from Office:
    say "You move in the dark, but the faint crackle of magic tingles your beak. You remember that continuing in such a direction would result in becoming entangled with the cords and cause quite a mess for yourself.
    
    You, wisely, decide not to."

Instead of going north when player is in Office:
    say "If you clock out now, that'll surely cause issues with your boss. Unfortunately, you are stuck here for the time being."

[The Network][FIXME: cant go to office from cafe thru The Network; for some reason it only works if the final " isn't on its own line??? TODO: diff descripts based on where u went in? interactables]

The Network is inside of Office. "
[if unvisited]
You'll probably never get used to the feeling of tumbling inside-out that always happens whenever you connect to the network...with your mind, because you're so amazing that you don't need items.

[end if]
The leyline network is an abstract space, colors and intent swirling in place until a current of energy might rush by and take it from one place to another.

You're one of the lucky few that is able to visualize this space...but not lucky enough to have the aptitude to actually create the spells yourself. Instead, you're nothing more than a glorified guard, poking at suspicious-looking tidepools to find anything that might not supposed to be there.

There are various areas of color you could inspect, but you don't seem to recall how to do that. The only action you're able to leave is by going OUTSIDE of the network.
"

[the network items]
[red]
red pool is a fixed in place closed container in The Network. "A red pool of energy quietly swirls."

Understand "red" as red pool.

The description of red pool is "A deep pool of tomato-bright energy. You can gauge that there's just about the right amount that had accumulated since your last shift."

[red info]
[figure this out once there can be better interactables. this is normal log data]

[blue]
blue pool is a fixed in place container in The Network. "A blue pool of energy gives off a faint buzz along your beak."

Understand "blue" as blue pool.

The description of blue pool is "A shallow pool of jay-blue energy. Like the bird, there's a wealth of barely-contained momentum just underneath the surface."

[blue info]
[see red info. this has some malevolent stuff in it]

[green]

green pool is a fixed in place container in The Network. "A green pool of energy is constantly churning and can easily pull you under if you don't approach it with care."

Understand "green" as green pool.

The description of green pool is "A deep, deep well of energy. It's more like a river, or an ocean current, and is the backbone of the leyline network...or at least the corner of it that exists within your closet."

[green info]
[see red info. this is network activity]

The Network is inside of Cafe.

Instead of going nowhere from The Network:
    say "As the network is an abstract space, it really doesn't conform to concepts such as 'up' and 'down.' You waste time thinking about movement that isn't possible."