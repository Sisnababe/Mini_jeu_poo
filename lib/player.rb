require "pry"

class Player
    attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end
    def show_state
        puts self 
    end
    def gets_damage(damage)
        @life_points = @life_points - damage
        #@life_points -= damage
        if @life_points <= 0
            puts "#{self.name} you die"
        end
    end
    def attacks(player)
        puts "#{self.name} attacks #{player.name}"
        rand_damage = compute_damage
        player.gets_damage(rand_damage)
        puts "#{self.name} make #{rand_damage}"

    end
    def compute_damage
        return rand(1..6)
    end

end
