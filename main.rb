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

  players.each do |player|
    system 'clear'

    # show scoreboard
    players.each do |player|
      puts "#{player.name}: \t#{player.points} |  (#{11000 - player.points})"
    end
    puts "\n"

    roll_num = 1
    keep_going = true

    puts "#{player.name}'s Turn"

    turn_score = 0
    while keep_going

      print "Roll #{roll_num}: "
      roll_value = gets.chomp

      if roll_value == "0"
        keep_going = false
      elsif roll_value.downcase == "wipe" || roll_value.downcase == "w"
        keep_going = false
        player.points = 0
      elsif roll_value.downcase == "keep" || roll_value.downcase == "k"
        keep_going = false
        player.points += turn_score
      else
        turn_score += roll_value.to_i
        roll_num += 1
      end
    end
  end
end