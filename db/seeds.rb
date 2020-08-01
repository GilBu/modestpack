# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Game.delete_all
User.delete_all

game1 = Game.create!(
    title: 'Tem Tem',
    price: 34.99,
    description:   
'Temtem is a massively multiplayer creature-collection adventure.
  
Every kid dreams about becoming a Temtem tamer; exploring the six islands of the Airborne Archipelago, discovering new species, and making good friends along the way.  Now it\'s your turn to embark on an epic adventure and make those dreams come true.

Catch new Temtem on Omninesia\'s floating islands, battle other tamers on the sandy beaches of Deniz or trade with your friends in Tucma\'s ash-covered fields. Defeat the ever-annoying Clan Belsoto and end its plot to rule over the Archipelago, beat all eight Dojo Leaders, and become the ultimate Temtem tamer!
  
These are the floating islands where Temtem and humans coexist peacefully. Each island is a whole different world, but there is something we all have in common - our love for Temtem and Temtem battles! Intrepid tamers like yourself travel on airships to the furthest reaches of the Archipelago to find the best Temtem. Every young tamer dreams of becoming the best...

Story Campaign: Journey across six vivid islands and embark on the adventure of becoming a Temtem tamer while fighting against the evil Clan Belsoto.
   
Online World: The days of traveling solo are over; in Temtem the world is a massively multiplayer one. Tamers from around the world can join and you will be able to see them around you, living the adventure with you and fighting to become the best Temtem tamer.
   
Co-Op Adventure: You will be able to join forces with a friend any time and work together towards your next goal. Catch new Temtem, complete a Route, or face off against a Temtem Leader; all while fighting alongside your friend in dual battles!
   
Housing: Buy your own house at Atoll Row and decorate it your way. Buy new furniture, color your walls and you\'ll be ready to invite your friends over!
   
Customize: Customize your character to stand out from the crowd and get new cosmetics while you battle other tamers. Pick a silly hat, a comfy sweatshirt, some pants and you\'re ready to go! Or maybe you prefer to wear a full-on cosplay of your favorite Temtem?
   
Competitive: Start by choosing 8 Temtem and the pick and ban phase will begin. Take turns with your rival to pick your Temtem and ban theirs. When all the decisions are made and the turns are ended, you will end up with a squad of 5 Temtem and the battle will begin.

Always Growing: New content is constantly being added to Temtem, new events, new missions, new cosmetics, new Temtem, and new ways to play!',
    sale: 10,
    platform: "Steam, Windows",
    operating_system: "Windows",
    developer: "Crema",
    publisher: "Humble Games",
    system_requirements: "Minimum:

        Windows
        OS: Windows 10 64bits
        Processor: Celeron G530 2.4Ghz or similar
        Memory: 4 GB RAM
        Graphics: Nvidia GT 650M or similar
        Network: Broadband Internet connection
        Storage: 5 GB available space
        Additional Notes: Minimum requirements for playing at 720p@30fps

        Recommended:

        Windows
        OS: Windows 10 64bits
        Processor: Intel i3-6100T 3.2Ghz or similar
        Memory: 8 GB RAM
        Graphics: Nvidia GTX 970 or similar
        Network: Broadband Internet connection
        Storage: 5 GB available space
        Additional Notes: Recommended requirements for playing at 1080p@60fps

        Supported Languages: English, French, German, Spanish - Spain, Japanese, Korean, Simplified Chinese",
    links: "http://ks.playtemtem.com/",
    ratings: "E",
    rating_list: "Comic Mischief, Mild Cartoon Violence"
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/cover_art.jpeg')
game1.screenshots.attach(io: file, filename: 'cover_art.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot1.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot1.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot2.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot2.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot3.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot3.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot4.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot4.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot5.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot5.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot6.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot6.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot7.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot7.jpg')
  
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/tem_tem/screenshot8.jpeg')
game1.screenshots.attach(io: file, filename: 'screenshot8.jpg')
  

game2 = Game.create!(
  title: 'Pokemon Sword',
    price: 59.99,
    description: "Get ready for the next Pokémon adventure in the Pokémon™ Sword and Pokémon™ Shield games.
A new generation of Pokémon is coming to the Nintendo Switch™ system. Begin your adventure as a Pokémon Trainer by 
choosing one of three new partner Pokémon: Grookey, Scorbunny, or Sobble. Then embark on a journey in the new Galar 
region, where you’ll challenge the troublemakers of Team Yell, while unraveling the mystery behind the Legendary 
Pokémon Zacian and Zamazenta! Explore the Wild Area, a vast expanse of land where the player can freely control the 
camera. Team up with three other players locally or online in the new multiplayer co-op Max Raid Battles* in which 
players will face off against gigantic and super-strong Pokémon known as Dynamax Pokémon.

Certain Pokémon can even Gigantamax to gain a new look and a powerful set of G-Max moves. But there’s more to being a 
champion than honing your battle skills: you can pick your own clothes and get a new hairdo while visiting the stores 
in town, so you can be the trainer you want to be. Throughout your journey, you’ll encounter newly discovered Pokémon 
as well as familiar ones that will look a little different in their new Galarian forms! For another way to level up 
your Pokémon, assign them Poké Jobs to complete, and for fun, you can even play with your Pokémon in Pokémon Camp!",
    sale: 20,
    platform: "Nintendo Switch",
    operating_system: "Switch",
    developer: "GAME FREAK Inc.",
    publisher: "Nintendo",
    system_requirements: "Platform: Nintendo Switch 
Supported Languages: English",
    links: "https://swordshield.pokemon.com/",
    ratings: "E",
    rating_list: "Comic Mischief, Mild Cartoon Violence"
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/pokemon_sword/cover_art.jpg')
game2.screenshots.attach(io: file, filename: 'cover_art.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/pokemon_sword/screenshot1.jpg')
game2.screenshots.attach(io: file, filename: 'screenshot1.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/pokemon_sword/screenshot2.jpg')
game2.screenshots.attach(io: file, filename: 'screenshot2.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/pokemon_sword/screenshot3.jpg')
game2.screenshots.attach(io: file, filename: 'screenshot3.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/pokemon_sword/screenshot4.jpg')
game2.screenshots.attach(io: file, filename: 'screenshot4.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/pokemon_sword/screenshot5.jpg')
game2.screenshots.attach(io: file, filename: 'screenshot5.jpg')

game3 = Game.create!(
  title: 'FACTORIO',
    price: 30.00,
    description: "Factorio is a game in which you build and maintain factories. You will be mining resources, 
    researching technologies, building infrastructure, automating production and fighting enemies. In the beginning 
    you will find yourself chopping trees, mining ores and crafting mechanical arms and transport belts by hand, but 
    in short time you can become an industrial powerhouse, with huge solar fields, oil refining and cracking, 
    manufacture and deployment of construction and logistic robots, all for your resource needs. However this heavy 
    exploitation of the planet's resources does not sit nicely with the locals, so you will have to be prepared to 
    defend yourself and your machine empire.
Join forces with other players in cooperative Multiplayer , create huge factories, collaborate and delegate tasks 
between you and your friends. Add mods to increase your enjoyment, from small tweak and helper mods to complete game 
overhauls, Factorio's ground-up Modding support has allowed content creators from around the world to design 
interesting and innovative features. While the core gameplay is in the form of the freeplay scenario, there are a 
range of interesting challenges in the form of Scenarios . If you don't find any maps or scenarios you enjoy, you can 
create your own with the in-game Map Editor , place down entities, enemies, and terrain in any way you like, and even 
add your own custom script to make for interesting gameplay.
Discount Disclaimer: We don't have any plans to take part in a sale or to reduce the price for the foreseeable future.
What people say about Factorio
No other game in the history of gaming handles the logistics side of management simulator so perfectly. - Reddit
I see conveyor belts when I close my eyes. I may have been binging Factorio lately. - Notch, Mojang
Factorio is a super duper awesome game where we use conveyor belts to shoot aliens. - Zisteau, Youtube",
    sale: 15,
    platform: "Steam, Windows, Mac, Linux",
    operating_system: "Windows, Mac, Linux",
    developer: "Wube Software LTD.",
    publisher: "Wube Software LTD.",
    system_requirements: "Platform: Nintendo Switch 
Supported Languages: English",
    links: "http://www.factorio.com/"
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/cover_art.jpeg')
game3.screenshots.attach(io: file, filename: 'cover_art.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot1.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot1.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot2.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot2.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot3.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot3.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot4.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot4.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot5.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot5.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot6.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot6.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot7.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot7.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot8.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot8.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot9.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot9.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot10.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot10.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot11.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot11.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot12.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot12.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot13.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot13.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot14.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot14.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot15.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot15.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot16.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot16.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot17.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot17.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot18.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot18.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot19.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot19.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot20.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot20.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot21.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot21.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/factorio/screenshot22.jpeg')
game3.screenshots.attach(io: file, filename: 'screenshot22.jpg')


game4 = Game.create!(
  title: 'MEGA MAN X3',
    price: 7.99,
    description: "Choose either Mega Man X or Zero as you run, jump, dash, scale walls, avoid obstacles, and fight enemies in eight challenging stages. At the end of each stage, defeat the boss to gain a special weapon that will aid you in the upcoming battles. Will you be the cure for this latest outbreak?

This game is only playable in 2D.

Virtual Console: This classic game is part of the Virtual Console service, which brings you great games created for consoles such as NES, Super NES and Game Boy Advance.",
    sale: 10,
    platform: "NewNintendo3DS",
    operating_system: "NewNintendo3DS",
    developer: "Capcom",
    publisher: "Capcom",
    system_requirements: "Platform: New Nintendo 3DS systems only

Supported Languages: English",
    links: "http://www.capcom.com/",
    ratings: "E",
    rating_list: "Animated Violence"
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/mega_man_x3/cover_art.jpg')
game4.screenshots.attach(io: file, filename: 'cover_art.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/mega_man_x3/screenshot1.jpg')
game4.screenshots.attach(io: file, filename: 'screenshot1.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/mega_man_x3/screenshot2.jpg')
game4.screenshots.attach(io: file, filename: 'screenshot2.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/mega_man_x3/screenshot3.jpg')
game4.screenshots.attach(io: file, filename: 'screenshot3.jpg')
 

game5 = Game.create!(
  title: 'FIRE EMBLEM FATES: CONQUEST',
    price: 39.99,
    description: "Two kingdoms are on the brink of war. Whose side will you choose? Torn between two families, you're an heir of Hoshido, raised by Nohrian royals. If you walk the path of Conquest, you must fight to change your misguided kingdom from within. Command warriors with expert precision and forge deep relationships to master this turn-based strategy game.",
    sale: 10,
    platform: "Nintendo3DS",
    operating_system: "Nintendo3DS",
    developer: "Intelligent Systems",
    publisher: "Nintendo",
    system_requirements: "Platform: Nintendo 3DS

Supported Languages: English
LEGAL
System Requirements: Supported Platforms: Nintendo 3DS
Nintendo account required for game activation and installation",
    links: "http://fireemblemfates.nintendo.com/",
    ratings: "T",
    rating_list: "Animated Blood
Fantasy Violence
Suggestive Themes"
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/fire_emblem_fates_conquest/cover_art.jpg')
game5.screenshots.attach(io: file, filename: 'cover_art.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/fire_emblem_fates_conquest/screenshot1.jpg')
game5.screenshots.attach(io: file, filename: 'screenshot1.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/fire_emblem_fates_conquest/screenshot2.jpg')
game5.screenshots.attach(io: file, filename: 'screenshot2.jpg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/fire_emblem_fates_conquest/screenshot3.jpg')
game5.screenshots.attach(io: file, filename: 'screenshot3.jpg')
 

game6 = Game.create!(
  title: 'BEAT SABER',
    price: 29.99,
    description: "Beat Saber is an immersive rhythm experience you have never seen before! Enjoy tons of handcrafted levels and swing your way through the pulsing music beats, surrounded by a futuristic world. Use your sabers to slash the beats as they come flying at you – every beat indicates which saber you need to use and the direction you need to match. With Beat Saber you become a dancing superhero!

Features
Feel the Rhythm: Immerse yourself in the smoothest combination of music beats and visual effects in Beat Saber’s truly unique gameplay.
Handcrafted Levels & Music: Unlike other rhythm games with generated content, music and levels in Beat Saber are drawn precisely by hand to enhance the music experience.
Challenging Campaign: Get better every day while completing objectives and challenges in the Campaign.
Rise Up the Global Leaderboards: Compete against other Beat Saberists around the world in various difficulties.
Easy to Learn, Fun to Master: Everyone can understand the basic game mechanics. It's easy for anyone to pick up and play.
Great Exercise: Exercise while dancing and slashing the beats, Beat Saber gets you moving.",
    sale: 20,
    platform: "Steam, Windows, Oculus, Vive, WindowsMixedReality",
    operating_system: "Windows, Oculus, Vive, WindowsMixedReality",
    developer: "Beat Games",
    publisher: "Beat Games",
    system_requirements: 'VR Support

Headsets: Valve Index, HTC Vive, Oculus Rift, Windows Mixed Reality
Input: Tracked Motion Controllers
Play Area: Seated, Standing, Room-Scale
Minimum:

Windows
OS: Windows 7/8.1/10 (64bit)
Processor: Intel Core i5 Sandy Bridge or equivalent
Memory: 4 GB RAM
Graphics: Nvidia GTX 960 or equivalent
DirectX: Version 11
Storage: 200 MB available space

Recommended:

Windows
OS: Windows 7/8.1/10 (64bit)
Processor: Intel Core i7 Skylake or equivalent
Memory: 8 GB RAM
Graphics: Nvidia GTX 1060 or equivalent
DirectX: Version 12
Storage: 200 MB available space

Supported Languages: English',
    links: "http://beatsaber.com/",
    ratings: "",
    rating_list: ""
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/beat_saber/cover_art.jpeg')
game6.screenshots.attach(io: file, filename: 'cover_art.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/beat_saber/screenshot1.jpeg')
game6.screenshots.attach(io: file, filename: 'screenshot1.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/beat_saber/screenshot2.jpeg')
game6.screenshots.attach(io: file, filename: 'screenshot2.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/beat_saber/screenshot3.jpeg')
game6.screenshots.attach(io: file, filename: 'screenshot3.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/beat_saber/screenshot4.jpeg')
game6.screenshots.attach(io: file, filename: 'screenshot4.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/beat_saber/screenshot5.jpeg')
game6.screenshots.attach(io: file, filename: 'screenshot5.jpeg')
 

game7 = Game.create!(
  title: 'BIT DUNGEON II',
    price: 4.99,
    description: "bit Dungeon II is fast action-adventure game with a giant overworld to explore.

You are a spirit in an undead world of demons. Your \"loved one's \" grave has been desecrated. Fight through these corrupted lands, and bring peace to her soul.

The dungeons are randomly placed in the overworld, changing your experience each play through.

Features:
Permadeath You get one soul, and only once chance to retrieve it when you die.
Steam Play Support.
Each weapon type has a unique power attack including ranged, and magic weapons.
Level up based on which weapon you use.
Randomly generated items.
Giant difficult dungeon bosses.
Enemies with disgusting faces.
Original Chip Bit music by Stress_tn.
Controller Support.
Once you beat the game it starts over, play forever, become stronger then... a god.",
    sale: 20,
    platform: "Steam, Windows, Mac, Android",
    operating_system: "Windows, Android, Mac",
    developer: "Kinto Games",
    publisher: "Kinto Games",
    system_requirements: 'Minimum:

Windows
OS: Windows XP, Vista, 7, 8
Processor: 2.5 GHz
Memory: 1 GB RAM
Graphics: Any with Hardware 3d Acceleration
DirectX: Version 9.0c
Storage: 100 MB available space
Sound Card: On Board

Mac
OS: OSX 10.6.8 or newer
Processor: Intel Core 2 Duo or Above
Graphics: nVidia 7000 Series or Above
Storage: 100 MB available space
Sound Card: On Board

Supported Languages: English',
    links: "http://kintogames.com/",
    ratings: "",
    rating_list: ""
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/bit_dungeon_II/cover_art.jpeg')
game7.screenshots.attach(io: file, filename: 'cover_art.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/bit_dungeon_II/screenshot1.jpeg')
game7.screenshots.attach(io: file, filename: 'screenshot1.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/bit_dungeon_II/screenshot2.jpeg')
game7.screenshots.attach(io: file, filename: 'screenshot2.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/bit_dungeon_II/screenshot3.jpeg')
game7.screenshots.attach(io: file, filename: 'screenshot3.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/bit_dungeon_II/screenshot4.jpeg')
game7.screenshots.attach(io: file, filename: 'screenshot4.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/bit_dungeon_II/screenshot5.jpeg')
game7.screenshots.attach(io: file, filename: 'screenshot5.jpeg')
 

game8 = Game.create!(
  title: 'SID MEIER’S CIVILIZATION® VI',
    price: 59.99,
    description: "Originally created by legendary game designer Sid Meier, Civilization is a turn-based strategy game in which you attempt to build an empire to stand the test of time. Become Ruler of the World by establishing and leading a civilization from the Stone Age to the Information Age. Wage war, conduct diplomacy, advance your culture, and go head-to-head with history’s greatest leaders as you attempt to build the greatest civilization the world has ever known.

Civilization VI offers new ways to engage with your world: cities now physically expand across the map, active research in technology and culture unlocks new potential, and competing leaders will pursue their own agendas based on their historical traits as you race for one of five ways to achieve victory in the game.



EXPANSIVE EMPIRES:
See the marvels of your empire spread across the map like never before. Each city spans multiple tiles so you can custom build your cities to take full advantage of the local terrain.


ACTIVE RESEARCH:
Unlock boosts that speed your civilization’s progress through history. To advance more quickly, use your units to actively explore, develop your environment, and discover new cultures.


DYNAMIC DIPLOMACY:
Interactions with other civilizations change over the course of the game, from primitive first interactions where conflict is a fact of life, to late game alliances and negotiations.


COMBINED ARMS:
Expanding on the “one unit per tile” design, support units can now be embedded with other units, like anti-tank support with infantry, or a warrior with settlers. Similar units can also be combined to form powerful “Corps” units.


ENHANCED MULTIPLAYER:
In addition to traditional multiplayer modes, cooperate and compete with your friends in a wide variety of situations all designed to be easily completed in a single session.


A CIV FOR ALL PLAYERS:
Civilization VI provides veteran players new ways to build and tune their civilization for the greatest chance of success. New tutorial systems introduce new players to the underlying concepts so they can easily get started.",
    sale: 15,
    platform: "Steam, Windows, Mac, Android, Epic, Windows, Mac, Android",
    operating_system: "Windows, Android, Mac",
    developer: "Firaxis, Aspyr (Mac)",
    publisher: "2K, Aspyr (Mac)",
    system_requirements: 'Minimum:

Windows
OS: Windows 7x64 / Windows 8.1x64 / Windows 10x64
Processor: Intel Core i3 2.5 Ghz or AMD Phenom II 2.6 Ghz or greater
Memory: 4 GB RAM
Graphics: 1 GB & AMD 5570 or nVidia 450 or Intel Integrated Graphics 530
DirectX: Version 11
Storage: 12 GB available space
Sound Card: DirectX Compatible Sound Device
Additional Notes: Initial installation requires one-time Internet connection for Steam authentication; software installations required (included with the game) include Steam Client, Microsoft Visual C++ 2012 and 2015 Runtime Libraries, and Microsoft DirectX. Internet connection and acceptance of Steam™ Subscriber Agreement required for activation. See

Mac
OS: 10.12.6 (Sierra)
Processor: Intel Core i5 2.7Ghz
Memory: 6 GB RAM
Graphics: 1 GB GPU Minimum - GeForce 775M | Radeon HD 6970 | Intel Iris Pro
Storage: 15 GB available space
Additional Notes:

Linux
OS: Ubuntu 16.04 (64bit)
Processor: Intel Core i3 530 or AMD A8-3870
Memory: 6 GB RAM
Graphics: 1 GB VRAM Minimum - NVIDIA GeForce 650
Storage: 15 GB available space
Additional Notes:

Recommended:

Windows
OS: Windows 7x64 / Windows 8.1x64 / Windows 10x64
Processor: Fourth Generation Intel Core i5 2.5 Ghz or AMD FX8350 4.0 Ghz or greater
Memory: 8 GB RAM
Graphics: 2GB & AMD 7970 or nVidia 770 or greater
DirectX: Version 11
Storage: 12 GB available space
Sound Card: DirectX Compatible Sound Device

Supported Languages: English, French, Italian, German, Spanish - Spain, Japanese, Korean, Polish, Portuguese - Brazil, Russian, Simplified Chinese, Traditional Chinese',
    links: "http://www.civilization.com/",
    ratings: "E",
    rating_list: "Drug Reference
Language
Mild Violence
Suggestive Themes"
)

file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/cover_art.jpeg')
game8.screenshots.attach(io: file, filename: 'cover_art.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/screenshot1.jpeg')
game8.screenshots.attach(io: file, filename: 'screenshot1.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/screenshot2.jpeg')
game8.screenshots.attach(io: file, filename: 'screenshot2.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/screenshot3.jpeg')
game8.screenshots.attach(io: file, filename: 'screenshot3.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/screenshot4.jpeg')
game8.screenshots.attach(io: file, filename: 'screenshot4.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/screenshot5.jpeg')
game8.screenshots.attach(io: file, filename: 'screenshot5.jpeg')
 
file = open('https://modest-pack-seeds.s3-us-west-1.amazonaws.com/sid_meiers_civilization_vi/screenshot6.jpeg')
game8.screenshots.attach(io: file, filename: 'screenshot6.jpeg')
 
User.create!(
  username: 'guest',
  password: 'password'
)
