class Hand

  # Constructor
  #
  # Creates 6 dice to be rolled for the current hand.
  def initialize
    6.times do
      self.dice << Die.new
    end
  end

  # Rolls all dice currently not kept.
  #
  # @return void
  def roll
    results = []

    self.dice.each do |die|
      results << die.roll
    end

    return results
  end

  # Keeps a die.
  #
  # @return void
  def keep(die)
    kept << die.value
  end
end