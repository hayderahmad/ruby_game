
require_relative 'playable'

class Player
    include Playable
    attr_accessor :name, :health , :player_treasures
    def initialize(name, health= 100)
        @name = name.capitalize
        @health = health
        @player_treasures = {}
             
    end
    def score
        @health + @name.length
    end
    def to_s
        "I'm #{@name} with a health of #{@health} and score of #{score}."
    end
    
    
    
end
if __FILE__ ==$PROGRAM_NAME
    player = Player.new("moe")
    puts player.name
    puts player.health
    player.w00t
    puts player.health
    player.blam
    puts player.health
end