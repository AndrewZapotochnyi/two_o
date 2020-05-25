###### GAME CLASS ######

class Game

  def initialize
    @number_of_questions = 0
    @end_game = false
    @player1 = Player.new(1, true)
    @player2 = Player.new(2, false)
  end

  def play
    while @player1.lives > 0 && @player2.lives > 0 
      self.turn
    end
  end

  def turn

    puts "------ NEW TURN -----"

    @number_of_questions = @number_of_questions + 1
    new_question = Question.new
    new_question.ask_question

    if @player1.turn == true 
          puts "Player 1:"
          current_answer = @player1.answer
           
          if current_answer.to_i == new_question.right_answer 
            puts ("Player #{@player1.id} answered right and has #{@player1.lives} left. It's Player #{@player2.id} turn now.")
          else 
            @player1.lives = @player1.lives - 1
            puts ("Player #{@player1.id} answered wrong and has #{@player1.lives} left. It's Player #{@player2.id} turn now.")
          end

          ## MANAGE TURNS
          @player1.turn = false 
          @player2.turn = true
          
    else 
          puts "Player 2:"
          current_answer = @player2.answer

          if current_answer.to_i == new_question.right_answer 
            puts ("Player #{@player2.id} answered right and has #{@player2.lives} left. It's Player #{@player1.id} turn now.")
          else 
            @player2.lives = @player2.lives - 1
            puts ("Player #{@player2.id} answered wrong and has #{@player2.lives} left. It's Player #{@player1.id} turn now.")
          end

          ## MANAGE TURNS
          @player2.turn = false 
          @player1.turn = true 

    end

    if @player1.lives == 0 
      puts "Player 2 wins!"
    elsif @player2.lives == 0
      puts "Player 1 wins!"
    end

  end
end