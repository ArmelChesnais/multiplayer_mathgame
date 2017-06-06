# Player.rb
module MathGame
  class MathGame::Player

    def initialize(num)
      @player_num = num
      @lives = MathGame::Lives.new(3)
    end

    def alive?
      @lives.alive?
    end

    def print_lives
      "P" + @player_num.to_s + ": " + @lives.score
    end

    def name
      "Player" + @player_num.to_s
    end

    def lose_life
      @lives.lose_life
    end

    def score
      @lives.score
    end
  end

end