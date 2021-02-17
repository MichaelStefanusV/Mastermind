# frozen_string_literal: true

# main/main.rb
root = File.expand_path('../', File.dirname(__FILE__))
require "#{root}/lib/mastermind.rb"

puts "We're gonna start a game of master mind, please insert your name"
name = gets.chomp
player = Mastermind::Player.new(name: name, code: '')
game = Mastermind::Game.new(human: player)
continue = 1
while continue == 1
  puts 'Pick your game mode : '
  puts '1. To play as the code breaker.'
  puts '2. To play as the code maker.'
  choice = gets.chomp
  game.choose_mode(choice.to_i)
  puts 'Want tou continue ? (input 1 to continue and somethign else to exit)'
  continue = gets.chomp.to_i
end
