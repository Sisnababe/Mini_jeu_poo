require "pry"

class Player

    attr_accessor :name, :life_points 

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts self.life_points > 0? "#{self.name} has #{self.life_points}" : "#{self.name} got 0" 
    end

    def gets_damage(damage)
        @life_points -= damage
        if @life_points <= 0
            puts "#{self.name} you die"
        end
    end

    def attacks(player)
        puts "#{self.name} attacks #{player.name}"
        rand_damage = compute_damage
        puts "#{self.name} make #{rand_damage} damage"
        player.gets_damage(rand_damage)

    end

    def compute_damage
        return rand(1..6)
    end

end

class HumanPlayer < Player

    attr_accessor :weapon_level

    def initialize(name)
        @weapon_level = 1
        @name = name
        @life_points = 100
    end

    def show_state
        puts self.life_points > 0? "#{self.name} with a weapon lvl @#{self.weapon_level} got #{self.life_points}hp!" : "#{self.name} with a weapon level @#{self.weapon_level} got 0hp!"    end

    def compute_damage
        return rand(1..6) * @weapon_level
    end

    def search_weapon
        new_weapon_level = rand(1..6)
        puts "You found a weapon level #{new_weapon_level}"
        if new_weapon_level > @weapon_level
            puts "your new weapon"
            return @weapon_level = new_weapon_level
        else
            puts "keep the old weapon"
            return @weapon_level
        end
    end
    def search_health_pack
        search_health_pack = rand(1..6)
        if search_health_pack == 1 
            puts "You didnt find it"
        elsif search_health_pack >= 2 && search_health_pack <= 5
            puts " Congrats, you find the health pack of +50"
            @life_points += 50
        return @life_points = [@life_points, 100].min
           
        else search_health_pack == 6
            puts " Congrats, you find the health pack of +80"
            @life_points += 80
        return @life_points = [@life_points, 100].min
        end
    end
    
end



binding.pry 