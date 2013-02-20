class Die
  attr_reader :name, :value

  def initialize(name)
    @name = name
    @value = 0
  end

  def roll!
   @value = rand(1..6)
  end

  def roll_spec(value)
   @value = value
  end
end