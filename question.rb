###### QUESTION CLASS ######

class Question

  attr_accessor :num_a, :num_b, :right_answer, :user_answer
  
  def initialize()
    @num_a = rand(1..10)
    @num_b = rand(1..10)
    @right_answer = num_a + num_b
  end

  def ask_question
    puts "What does #{num_a} + #{num_b} equal?"
  end

  def answer_check(user_answer)
    if user_answer == right_answer 
      return true
    else
      return false
    end
  end
end