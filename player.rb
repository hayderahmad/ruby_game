require_relative 'random'
class Player
    attr_accessor :name, :health, :score
    def initialize(name, health= 100)
        @name = name.capitalize
        @health = health
        @score
       
    end
    def to_s
        @score = @health + @name.length
        "I'm #{@name} with a health of #{@health} and score of #{@score}."
    end
    
    def blam
        @health -= 10
        puts "#{@name} got blammed!"
    end
    def w00t
        @health += 15
        puts "#{@name} got w00ted!"
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