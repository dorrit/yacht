require './lib/player'
require './lib/game'

players = [Player.new('player1'), Player.new('player2')]
puts "#{game = Game.new(players)} should be an instance of Game"

12.times {players.each {|player| player.add_turn}}
puts "#{game.over?} should be false"

1.times {players.each {|player| player.add_turn}}
puts "#{game.over?} should be true"

players[0].add_points(25)
players[1].add_points(40)
puts "#{game.winner.name} should be player2"