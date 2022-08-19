module TreasureTrove
    Treasure = Struct.new(:name, :points)
    TREASURES = [
        Treasure.new(:pie, 5), 
        Treasure.new(:stick, 10), 
        Treasure.new(:bottle, 25), 
        Treasure.new(:hammer, 50), 
        Treasure.new(:knife, 60), 
        Treasure.new(:bike, 100), 
        Treasure.new(:silver, 200), 
        Treasure.new(:gold, 300), 
        Treasure.new(:diamond, 400)
    
    ]
    def self.random
        TREASURES.sample
    end
end