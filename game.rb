require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
    
    def initialize (game_name)
        @game_name = game_name
        @players = []
        
    end
    def add_player(player)
        puts "entering #{player} info into #{@game_name}  game database...."
        @players.append(player)
    end
    def play(rounds)
        puts "There are #{@players.size} players in #{@game_name} :"
        treasures = TreasureTrove::TREASURES
        puts "There are #{treasures.size} treasures to be found:"
        treasures.each do |treasure|
        puts "A #{treasure.name} is worth #{treasure.points} points"
        end
        1.upto(rounds) do |round|
            puts "Round: #{round}"
            @players.each do |player|
                GameTurn.turns(player)
                
            end
        end
    end
    def print_stats
        sorted_players = @players.sort { |a, b| b.score <=> a.score }
        puts "\n#{@game_name} High Scores:"
        sorted_players.each do |player|
            formatted_name = player.name.ljust(20, '.')
            puts "#{formatted_name} #{player.score}"
            puts "#{player.name}'s points total:"
            total_points = 0
            player.player_treasures.each do |treasure, points|
                total_points = total_points + points
                puts "#{points} total #{treasure} points"
            end
            puts "#{total_points} grand total points"
        end
    end
    def load_player(from_file)
        File.readlines(from_file).each do |line|
            name, health = line.split(',')
            player = Player.new(name, Integer(health))
            add_player(player)
        end
    end
    def save_high_scores(to_file="high_scores.txt")
        File.open(to_file, "w") do |file|
            file.puts "#{@game_name} High Scores:"
            sorted_players = @players.sort { |a, b| b.score <=> a.score }
            sorted_players.each do |player|
            formatted_name = player.name.ljust(20, '.')
            file.puts "#{formatted_name} #{player.score}"
            end
        end
        File.readlines(to_file).each do |line|
            puts line
        end
        puts "Stats Successfuly Saved"
      end
end



