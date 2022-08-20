# Studio_Game

## intro

  In July this year started, the process of learning the Ruby language, and I thought that if I built a project in Ruby, I would be able to understand the use of the essential tools and concepts of Ruby. For that, I started making this game, and I kept adding to it and growing it to gather all what I have learned in the language.

## How it works

By passing the info of the players names(required) and their health (optional) to the app either through the main file 

example:

`player1 = Player.new("moe")`
`player2 = Player.new("larry", 60)`
`player3 = Player.new("curly", 125)`
`berserker = BerserkPlayer.new("berserker", 50)`

to start a game

`knuckleheads = Game.new("Knuckleheads")`

or through a csv file

`knuckleheads.load_player("players.csv")`

 and then passing the number of the rounds in from the command line

 after this question
 How many game rounds? ('quit' to exit)
 
 the app will go through all players every round and assign a treasure to each player and change the health of the player either up or down, and it will keep doing this until the end of the rounds and then will ask if we want to keep playing or end the game by writing exit or quit which will break out of the game and print out the stats of the players and save them in a file

## components

1. The app has
   1. The main app file
      1. it requires game class to start a game
      2. it requires player class to make players objects
      3. it requires the berserk_player class to make berserk players
      4. it requires the async module to use task methods so we can see the effect of the asynchronous programming
   2. Game class
      1. it requires the game_turn module to do the processing on the players each turn by going through a random process that will reflect on the health of the player and the treasures that the player will find in each turn
      2. it requires the tresure_trove module to print out all the available treasures
      3. also, it can load_files to get all the players that passed in a CSV files
      4. also, this class able to give status about all players
   3. Player class requires the playable module to be able to access to woot and blame modes in the game
   4. berserk_player is a class that inherits from a player class, but when a player starts with a berserk mood, the player will get woot in the first five rounds and, no matter what was the choice and after the remaining rounds, will act like a regular player.
   5. Game_turns require treasure_trove to be able to pick a treasure for the player every turn randomly
