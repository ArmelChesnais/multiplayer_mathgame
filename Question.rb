# Question.rb

module MathGame
  class MathGame::Question
    def initialize(num)
      @num1 = generate_number(num)
      @num2 = generate_number(num)
    end

    def print_question
      "What does " + @num1.to_s + " plus " + @num2.to_s + " equal?"
    end

    def correct_answer?(answer)
      answer == (@num1 + @num2)
    end

    def generate_number(n)
      [*1..n].sample
    end
  end

end