"platypus 2025" by "Chase Anderson"

[apartment][TODO: figure out how to get 2nd P for unvisited to line up w/1st P of each assertion. have item for, like, magic rj45 jack you can pick up and use at cafe]

Apartment is a room. "
[if unvisited]
You are awoken by the shriek of your alarm. Your paw slaps around for the snooze button, condensation collecting on the webbings. Finally, you find your mark, and the whistling steam quiets.

You're tempted to fall back asleep, but you recall the tenuous status you have with your boss. So, you pull yourself out of your bed to view your single-room home once more. It isn't much, but you don't want to lose it.

[end if]
There's a corner for your bathroom-slash-kitchen, complete with a washing basin atop a pie safe. There's also a brick fireplace, a small bookshelf, your bed, and your alarm clock. There is an additional steam hookup, currently unused. And, of course, the door that leads you OUTSIDE your apartment.
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
Across the street to the WEST is the cafe you often frequent. If you continue SOUTH, you'll reach your office building.
"

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

The Network is inside of Cafe.

Instead of going nowhere from The Network:
    say "As the network is an abstract space, it really doesn't conform to concepts such as 'up' and 'down.' You waste time thinking about movement that isn't possible."