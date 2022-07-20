require_relative 'player'
class Game
    def initialize (game_name)
        @game_name = game_name
        @players = []
    end
    def add_player(player)
        @players.append(player)
    end
    def play
        puts "There are #{@players.size} players in #{@game_name}"
        @players.each do |player|
            puts player
        end
    end

end