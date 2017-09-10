class Hand

  # Dice kept in the current hand.
  #
  # @var Array
  kept = []

  # Keeps a die.
  #
  # @return void
  def keep(die)
    kept << die.value
  end
end