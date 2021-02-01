class Question
  attr_accessor :num1, :num2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def print_question
    return "What does #{num1} plus #{num2} equal?"
  end
end