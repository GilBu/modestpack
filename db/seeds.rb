# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.delete_all
User.delete_all

Game.create!(
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

Game.create!(
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

Game.create!(
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

User.create!(
  username: 'guest',
  password: 'password'
)
