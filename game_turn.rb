require_relative'treasure_trove'
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
        treasure = TreasureTrove.random
        puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
        if player.player_treasures.has_key?(treasure.name)
            player.player_treasures[treasure.name] += treasure.points
        else
        player.player_treasures[treasure.name] = treasure.points
        end
        puts "#{player.name}'s treasures: #{player.player_treasures}"
        
    end
end