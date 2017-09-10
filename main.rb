require 'pry'
require './player.rb'

puts 'Hello, Welcome to Mississippi Marbles!'
puts 'How many people?'
num_players = gets.chomp.to_i

players = []

num_players.times do |i|
  puts "Enter Player #{i+1} Name:"
  name = gets.chomp
  players << Player.new(name)
end

loop do
  system 'clear'

  # show scoreboard
  players.each do |player|
    puts "#{player.name}: \t#{player.points} |  (#{11000 - player.points})"
  end
  puts "\n"

  players.each do |player|
    roll_num = 1
    keep_going = true

    puts "#{player.name}'s Turn"
    while keep_going
      print "Roll #{roll_num}: "
      roll_value = gets.chomp
      if roll_value == "0"
        keep_going = false
      end
      roll_num += 1
    end
    
  end
  
end