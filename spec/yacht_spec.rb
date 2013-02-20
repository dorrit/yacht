require './lib/die'
require './lib/game'
require './lib/player'
require './lib/turn'

players = [Player.new("Player 1"), Player.new("Player 2")]
game = Game.new(players)
dice = [Die.new("Die 1"), Die.new("Die 2"), Die.new("Die 3"), Die.new("Die 4"), Die.new("Die 5")]
turn = Turn.new


puts "Just sorting! . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(6)
dice[2].roll_spec(3)
dice[3].roll_spec(2)
dice[4].roll_spec(5)
puts "#{dice.sort {|a,b| a.value <=> b.value }} should be 1 2 3 5 6"

puts "Five of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(1)
dice[4].roll_spec(1)
puts "#{turn.score(dice)} should return 50"

puts "Four of a kind . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(1)
dice[4].roll_spec(6)
puts "#{turn.score(dice)} should return 4"

puts "Four of a kind . . . \n"
dice[0].roll_spec(6)
dice[1].roll_spec(6)
dice[2].roll_spec(6)
dice[3].roll_spec(6)
dice[4].roll_spec(1)
puts "#{turn.score(dice)} should return 24"

 puts "Full House . . . \n"
 dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(3)
dice[3].roll_spec(3)
dice[4].roll_spec(3)
puts "#{turn.score(dice)} should return 25"

 puts "Full House . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(1)
dice[2].roll_spec(1)
dice[3].roll_spec(3)
dice[4].roll_spec(3)
puts "#{turn.score(dice)} should return 25"

puts "Straight . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(2)
dice[2].roll_spec(3)
dice[3].roll_spec(4)
dice[4].roll_spec(5)
puts "#{turn.score(dice)} should return 40"

puts "Straight 2 . . . \n"
dice[0].roll_spec(2)
dice[1].roll_spec(3)
dice[2].roll_spec(4)
dice[3].roll_spec(5)
dice[4].roll_spec(6)
puts "#{turn.score(dice)} should return 40"

puts "Loser! . . . \n"
dice[0].roll_spec(1)
dice[1].roll_spec(3)
dice[2].roll_spec(3)
dice[3].roll_spec(2)
dice[4].roll_spec(6)
puts "#{turn.score(dice)} should return 0"


