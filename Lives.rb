# Lives.rb
module MathGame
  class MathGame::Lives
    def initialize(num)
      @current = @total = num
    end

    def score
      @current.to_s + "/" + @total.to_s
    end

    def lose_life
      @current -= 1
    end

    def alive?
      @current > 0
    end
  end

end