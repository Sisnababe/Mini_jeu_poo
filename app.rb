require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("nasser")
player2 = Player.new("jose")

puts player1.show_state
puts player2.show_state

player2.attacks(player1)
player1.attacks(player2)

puts player1.show_state
puts player2.show_state

