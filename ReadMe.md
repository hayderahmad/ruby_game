# Studio_Game

## intro

 in July this year started the process of learning Ruby language and I thought that if I build a project in Ruby I will be able to understand the use of the basic tools and concepts of Ruby for that I started building this game and I kept adding to it and grow it to gatehr all what I have learned in the language

## How it works

by passing the info of the players names(required) and their health (optional) to the app either through the main file or through a csv file and then passing the number of the rounds in from the command line the app will go through all players every round and assign a treasure to each player and change the health of the player either up or down and it will keep doing this until the end of the rounds and then will ask if we want to keep playing or end the game by writing exit or quit which will break out of the game and print out the stats of the players and save them in a file

## components

1. The app has
   1. The main app file
      1. it requires game class to start a game
      2. it requiers player class to make players objects
      3. it requires berserk_player class to make berserke players
      4. it requires async module to use task methods so we can see the effect of the asynchronus programming
   2. Game class
      1. it requires game_turn module to do the processing on the players each turn
      2. it requires tresure_trove module to print out all the available treasures
      3. also it is able to load_files to get all the players that passed in a csv files
      4. also this calss able to give status about all players
   3. Player class
      1. it requires the playable module to be able to access to woot and blame modes in the game
   4. berserk_player class
      1. is a class that inhrit from player class but when a player start with a breserk mood the player will get woot in the first 5 rounds and no matter what was the choice and after the remaining rounds will act like a normal player.
   5. 