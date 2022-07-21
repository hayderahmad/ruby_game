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
        GameTurn.turns(player)
        end
    end
    
end


module GameTurn
    def self.turns(player)
        rand = Random.new       
        case rand.roll
        when 1..3 
            player.blam
        when 4..6
            puts "#{player.name} was skipped."
        when 7..9
            player.w00t
        end
        puts player
    end
end