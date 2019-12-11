#!/usr/bin/ruby

require ('./lib/ruby_logic.rb')
require 'io/console'

inputs = ["rock", "paper", "scissors"]
puts "It's your turn, Player 1. (Enter rock, paper or scissors.)"
player_one = STDIN.noecho(&:gets).chomp.downcase()
puts "It's your turn, Player 2. (Enter rock, paper or scissors.)"
player_two = STDIN.noecho(&:gets).chomp.downcase()
game = RPS.new(player_one, player_two)
if player_one == player_two
  puts game.tie?
  puts "Player 1: #{player_one}"
  puts "Player 2: #{player_two}"
elsif !inputs.include?(player_one) | !inputs.include?(player_two)
  puts "Try again! (You must enter rock, paper or scissors.)"
  puts "Player 1: #{player_one}"
  puts "Player 2: #{player_two}"
else
  puts game.win?
  puts "Player 1: #{player_one}"
  puts "Player 2: #{player_two}"
end
