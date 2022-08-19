require_relative 'game'
require_relative 'player'
require_relative 'berserk_player'
require "async"

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
berserker = BerserkPlayer.new("berserker", 50)
knuckleheads = Game.new("Knuckleheads")
def sleeping
  sleep 2
end

start = Time.now

Async do |task|
  task.async {knuckleheads.add_player(player1)}
  task.async {sleeping}
  task.async {knuckleheads.add_player(player2)}
  task.async {sleeping}
  task.async {knuckleheads.add_player(player3)}
  task.async {sleeping}
  task.async {knuckleheads.add_player(berserker)}
  task.async {sleeping}
  task.async {knuckleheads.load_player("players.csv")}
end

# knuckleheads.add_player(player1)
# sleeping
# knuckleheads.add_player(player2)
# sleeping
# knuckleheads.add_player(player3)
# sleeping
# knuckleheads.add_player(berserker)
# sleeping
# knuckleheads.load_player("players.csv")

puts "Duration for all players info to be uploaded to the database is #{Time.now - start} "


loop do
    puts "\nHow many game rounds? ('quit' to exit)"
    answer = gets.chomp.downcase
    case answer
    when /^\d+$/
      knuckleheads.play(answer.to_i)
    when 'quit', 'exit'
      knuckleheads.print_stats
      knuckleheads.save_high_scores("high_scores.txt")
      break
    else
      puts "Please enter a number or 'quit'"
    end
end
