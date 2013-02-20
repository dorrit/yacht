require './lib/die'
require './lib/game'
require './lib/player'
require './lib/turn'


puts "Welcome to Yacht!\n\n"
number_of_players = 0
while number_of_players < 2
  puts "How many players do you have (must be at least 2)?\n\n"
  number_of_players = gets.chomp.to_i
end

players = (1..number_of_players).to_a.map {|index| Player.new("Player " + (index).to_s)}

game = Game.new(players)
dice = [Die.new("Die 1"), Die.new("Die 2"), Die.new("Die 3"), Die.new("Die 4"), Die.new("Die 5")]

puts "First player hit ENTER to roll dice."
gets.chomp

until game.over?
  players.each do |player|
    puts "#{player.name}, your turn.\n\n"
    turn = Turn.new
    player.add_turn

    until turn.over?
      turn.roll(dice)
      dice.each {|die| puts "#{die.name} rolled a #{die.value}."}
      turn.score(dice)
      puts "You got #{turn.points} points this turn." 
      puts "Do you want to roll again (y/n)?"
      gets.chomp
    end
    player.add_points(turn.points)
    puts "You have #{player.total_points} points total.\n\n\n"
    puts "You have rolled #{player.turns} times.\n\n\n"
    puts "Next player hit ENTER to roll dice."
    gets.chomp
  end
end

players.each {|player| puts "#{player.name}, you have #{player.total_points} points total.\n"}

winner = game.winner
if winner == nil
  puts "Tie game!"
else
  puts "Congratulations, #{winner.name}. You win!"
end


