#!/usr/bin/ruby

require ('./lib/ruby_logic.rb')

puts "It's your turn, Player 1."
player_one = gets.chomp.downcase()
puts "It's your turn, Player 2."
player_two = gets.chomp.downcase()
game = RPS.new(player_one, player_two)
if player_one == player_two
  puts game.tie?
else
  puts game.win?
end
