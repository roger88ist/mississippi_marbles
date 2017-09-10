class Game

  # The current turn.
  #
  # @var [Integer]
  current_turn = 0

  # Constructor
  #
  # Sets the players that are playing the current game.
  #
  # @param [Array] players
  def initialize(players)
    self.players = players
  end

  # Moves position to the next turn.
  #
  # @return void
  def next
    if self.is_last_player
      current_turn = 0
    else
      current_turn += 1
    end
  end

  # Returns the current player for the turn.
  #
  # @return [Player]
  def current
    self.players[self.current_turn]
  end

  private
    # Determines if the last player in the sequence.
    #
    # @return [bool]
    def is_last_player
      self.current_turn > self.players.size
    end
end