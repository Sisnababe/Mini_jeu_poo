require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("nasser")
player2 = Player.new("jose")

puts player1.show_state
puts player2.show_state

while player1.life_points > 0 && player2.life_points > 0 

    player2.attacks(player1)
    puts player1.show_state

    break if player1.life_points <= 0 || player2.life_points <= 0
    
    player1.attacks(player2)
    puts player2.show_state

end
