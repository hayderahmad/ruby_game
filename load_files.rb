module LoadFiles
    def load_player(from_file)
        
        File.readlines(from_file).each do |line|
            name, health = line.split(',')
            player = Player.new(name, Integer(health))
            add_player(player)
        end
    end
end