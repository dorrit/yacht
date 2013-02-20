#four of a kind, worth the sum of the four dice;
#full house (three of a kind and a pair), worth 25;
#straight (five sequential dice), worth 40;
#yacht (five of a kind), worth 50;
#Any other combination is worth zero.

require './lib/die'

class Turn
  attr_reader :points

  def initialize
    @points = 0
  end

  def roll(dice)
    dice.each {|die| die.roll!}
  end

  def five_of_a_kind(dice)
    ((dice[0].value == dice[1].value && dice[0].value == dice[2].value) &&
     (dice[0].value == dice[3].value && dice[0].value == dice[4].value))
  end

  def four_of_a_kind(dice)
    (dice[0].value == dice[1].value && dice[0].value == dice[2].value && 
        dice[0].value == dice[3].value) || 
       (dice[1].value == dice[2].value && dice[1].value == dice[3].value &&
        dice[1].value == dice[4].value)
  end

  def full_house(dice)
    ((dice[0].value == dice[1].value && dice[0].value == dice[2].value) && 
       (dice[3].value == dice[4].value)) ||
       ((dice[0].value == dice[1].value) && 
       (dice[2].value == dice[3].value && dice[2].value == dice[4].value))
  end

  def three_of_a_kind(dice)
    (dice[0].value == dice[1].value && dice[0].value == dice[2].value) || 
    (dice[1].value == dice[2].value && dice[1].value == dice[3].value) ||
    (dice[2].value == dice[3].value && dice[2].value == dice[4].value) 
  end


  def straight(dice)
    values = ""
    dice.each { |die| values += die.value.to_s}
    values == "12345" || values == "23456"
   end

   def small_straight(dice)
    dice_values = (1..dice.length).to_a.map {|index| dice[index-1].value}
    dice_values.uniq!
    values = ""
    dice_values.each { |die| values += die.to_s}
    values.index("1234") != nil || values.index("2345") != nil || 
      values.index("3456") != nil
   end

    # do not change order of branching below.
  def score(dice)
    sorted_dice = dice.sort {|a,b| a.value <=> b.value }
    if five_of_a_kind(sorted_dice)
        @points = 50
    elsif four_of_a_kind(sorted_dice)
       @points = dice[2].value.to_i * 4
    elsif full_house(sorted_dice)
        @points = 25
    elsif straight(sorted_dice)
        @points = 40
    elsif small_straight(sorted_dice)
        @points = 30
    elsif three_of_a_kind(sorted_dice)
        @points = dice[2].value.to_i * 3
    else
        @points = 0
    end
  end
end                           