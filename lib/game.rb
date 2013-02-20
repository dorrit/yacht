require './lib/player'

class Game

  def initialize(players)
    @players = players
  end

  def over?
  	@players.map {|player| player.turns == 13}.all?
  end

  def winner
  	sorted_by_score = @players.sort {|player_a, player_b| player_a.total_points <=> player_b.total_points}
    if sorted_by_score[sorted_by_score.length - 1].total_points == 
       sorted_by_score[sorted_by_score.length - 2].total_points
       nil
    else
      @players.max_by {|player| player.total_points}
    end
  end
end