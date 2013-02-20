require './lib/die.rb'

puts "#{die1 = Die.new('die1')} should be an instance of Die"
puts "#{die1.name} should be 'die1'."
puts "#{die1.value} should be 0."
puts "#{die1.roll!} should be roll of die1"
puts "#{die1.value} should be value above."
