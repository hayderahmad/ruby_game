require_relative 'player'

class BerserkPlayer < Player
    def initialize(name, health)
        super(name, health)
        @w00t_count = 0
    end
    
    def berserk?
        @w00t_count > 5
    end

    def w00t
        super
        @w00t_count +=1
        puts "#{@name} is berserk!" if berserk?
    end

    def blam
        berserk? ? w00t : super
    end
end