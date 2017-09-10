require 'pry'

puts 'Hello, Welcome to Mississippi Marbles!'
puts 'How many people?'
num_players = gets.chomp.to_i

players = []

num_players.times do |i|
  puts "Enter Player #{i+1} Name:"
  name = gets.chomp
  players << {name: name, points: 0}
end

