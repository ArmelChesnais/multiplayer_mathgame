# Game.rb
module MathGame

  class MathGame::Game

    def initialize()
      @players = []
      puts "how many players?"
      print "> "
      num_players = gets.to_i
      for i in 1..num_players
        @players.push(MathGame::Player.new(i))
      end

      until winner do
        run_round
      end

      puts winner.name + " wins with a score of " + winner.score
      puts "----- GAME OVER -----"
      puts "Goodbye!"
    end

    def winner
      winner = nil
      @players.each do |player|
        if player.alive?
          if !winner
            winner = player
          else
            return false
          end
        end
      end
      winner
    end

    def run_round
      if @players[0].alive?
        ask_question(@players[0])
        print_score
      end
      @players.push( @players.shift)
    end

    def ask_question(player)
      question = MathGame::Question.new(20)
      puts "----- NEW TURN -----"
      puts player.name + ": " + question.print_question
      print "> "
      if question.correct_answer?(gets.to_i)
        puts player.name + ": YES! You are correct."
      else
        puts player.name + ": Seriously? No!"
        player.lose_life
      end
    end

    def print_score
      puts (@players.sort{|x, y| x.name <=> y.name}.map { |player| player.print_lives }) * " VS "
    end
  end

end