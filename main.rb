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

loop do
  system 'clear'

  # show scoreboard
  players.each do |player|
    puts "#{player[:name]}: \t#{player[:points]} |  (#{11000 - player[:points]})"
  end
  puts "\n"

  players.each do |player|
    roll_num = 1
    keep_going = true

    while keep_going
      print "Roll #{roll_num}: "
      roll_value = gets.chomp.to_i
    end
    
  end
  
end