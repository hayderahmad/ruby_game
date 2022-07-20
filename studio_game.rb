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
player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play