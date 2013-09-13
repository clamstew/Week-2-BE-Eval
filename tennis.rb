# NOTE: 
#   For the purposes of this exercise, we'll assume that 
#   we're only scoring a single game of tennis - no sets or matches.

module Tennis
  class Game
    attr_accessor :player1, :player2

    def initialize
      @player1 = Player.new
      @player2 = Player.new

      @player1.opponent = @player2
      @player2.opponent = @player1
    end

    # Records a win for a ball in a game.
    #
    # winner - The Object of Tennis::Player class
    #
    # Returns the score of the winning player. 
    def wins_ball(winner)
      winner.points += 1
    end
  end

  class Player
    attr_accessor :points, :opponent

    def initialize
      @points = 0
    end

    # Increments the score by 1.
    #
    # Returns the integer new score.
    def record_won_ball!
      @points += 1
    end

    # Returns the String score for the player.
    def score
      case @points
        when 0 then "love"
        when 1 then "fifteen"
        when 2 then "thirty"
        when 3 then "forty"
      end
    end
  end
end