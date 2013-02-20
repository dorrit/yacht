require './lib/player.rb'

puts "#{player = Player.new('player1')} should be an instance of Player"
puts "#{player.name} should be 'player1'"
puts "#{player.total_points} should be 0"
puts "#{player.turns} should be 0"
puts "#{player.add_points(25)} should be 25"
puts "#{player.add_turn} should be 1"
