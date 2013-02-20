require './lib/die.rb'
require './lib/turn.rb'

dice = [Die.new('Die 1'), Die.new('Die 2'), Die.new('Die 3'), 
                Die.new('Die 4'), Die.new('Die 5')]

puts "#{turn = Turn.new} should be an instance of Turn"
puts "#{turn.points} should be 0."
puts "#{turn.roll(dice)} should be a roll all of the dice."

puts "\nJust sorting! . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(6)
dice[2].roll_spec(3)
dice[3].roll_spec(2)
dice[4].roll_spec(5)
puts "#{dice.sort {|a,b| a.value <=> b.value }} should be 1 2 3 5 6"

puts "\nFive of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(1)
dice[4].roll_spec(1)
puts "#{turn.five_of_a_kind(dice)} should be true."
puts "#{turn.score(dice)} should return 50"

puts "\nFour of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(1)
dice[4].roll_spec(6)
puts "#{turn.four_of_a_kind(dice)} should be true."
puts "#{turn.score(dice)} should return 4"

puts "\nFour of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(6)
dice[2].roll_spec(6)
dice[3].roll_spec(6)
dice[4].roll_spec(6)
puts "#{turn.four_of_a_kind(dice)} should be true."
puts "#{turn.score(dice)} should return 24"

puts "\nThree of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(5)
dice[2].roll_spec(6)
dice[3].roll_spec(6)
dice[4].roll_spec(6)
puts "#{turn.three_of_a_kind(dice)} should be true."
puts "#{turn.score(dice)} should return 18"

puts "\nThree of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(2)
dice[4].roll_spec(6)
puts "#{turn.three_of_a_kind(dice)} should be true."
puts "#{turn.score(dice)} should return 3"

puts "\nThree of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(5)
dice[2].roll_spec(5)
dice[3].roll_spec(5)
dice[4].roll_spec(6)
puts "#{turn.three_of_a_kind(dice)} should be true."
puts "#{turn.score(dice)} should return 15"

puts "Full House . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(3)
dice[3].roll_spec(3)
dice[4].roll_spec(3)
puts "#{turn.full_house(dice)} should be true."
puts "#{turn.score(dice)} should return 25"

 puts "\nFull House . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(3)
dice[4].roll_spec(3)
puts "#{turn.full_house(dice)} should be true."
puts "#{turn.score(dice)} should return 25"

puts "\nStraight . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(2)
dice[2].roll_spec(3)
dice[3].roll_spec(4)
dice[4].roll_spec(5)
puts "#{turn.straight(dice)} should be true."
puts "#{turn.score(dice)} should return 40"

puts "\nStraight 2 . . . \n"
dice[0].roll_spec(2)
dice[1].roll_spec(3)
dice[2].roll_spec(4)
dice[3].roll_spec(5)
dice[4].roll_spec(6)
puts "#{turn.straight(dice)} should be true."
puts "#{turn.score(dice)} should return 40"

puts "\nSmall_Straight 1 . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(2)
dice[3].roll_spec(3)
dice[4].roll_spec(4)
puts "#{turn.small_straight(dice)} should be true."
puts "#{turn.score(dice)} should return 30"

puts "\nSmall_Straight 2 . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(2)
dice[2].roll_spec(3)
dice[3].roll_spec(4)
dice[4].roll_spec(4)
puts "#{turn.small_straight(dice)} should be true."
puts "#{turn.score(dice)} should return 30"

puts "\nSmall_Straight 3 . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(3)
dice[2].roll_spec(4)
dice[3].roll_spec(5)
dice[4].roll_spec(6)
puts "#{turn.small_straight(dice)} should be true."
puts "#{turn.score(dice)} should return 30"

puts "\nSmall_Straight 4 . . . \n"
dice[0].roll_spec(3)
dice[1].roll_spec(4)
dice[2].roll_spec(4)
dice[3].roll_spec(5)
dice[4].roll_spec(6)
puts "#{turn.small_straight(dice)} should be true."
puts "#{turn.score(dice)} should return 30"

puts "\nSmall_Straight 5 . . . \n"
dice[0].roll_spec(2)
dice[1].roll_spec(3)
dice[2].roll_spec(4)
dice[3].roll_spec(5)
dice[4].roll_spec(5)
puts "#{turn.small_straight(dice)} should be true."
puts "#{turn.score(dice)} should return 30"

puts "\nSmall_Straight 6 . . . \n"
dice[0].roll_spec(2)
dice[1].roll_spec(3)
dice[2].roll_spec(3)
dice[3].roll_spec(4)
dice[4].roll_spec(5)
puts "#{turn.small_straight(dice)} should be true."
puts "#{turn.score(dice)} should return 30"

puts "\nLoser! . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(3)
dice[2].roll_spec(3)
dice[3].roll_spec(2)
dice[4].roll_spec(6)
puts "#{turn.straight(dice)} should be false."
puts "#{turn.five_of_a_kind(dice)} should be false."
puts "#{turn.four_of_a_kind(dice)} should be false."
puts "#{turn.full_house(dice)} should be false."
puts "#{turn.score(dice)} should return 0"