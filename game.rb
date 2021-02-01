require "./player.rb"

class Game
  attr_accessor :player1, :player2, :current_player

  def initialize
    @player1 = Player.new('Player 1', 3)
    @player2 = Player.new('Player 2', 3)
    @current_player = self.player1
    @turn = 0
  end

  def start
    puts "---- STARTING ----"
    puts "#{player1.name} starts with #{player1.lives} lives."
    puts "#{player2.name} starts with #{player2.lives} lives."
    while (player1.lives > 0 and player2.lives > 0)
      puts "----- NEW TURN -----"
      q1 = Question.new(rand(1..20), rand(1..20))
      print "#{current_player.name}: #{q1.print_question}\n"
      print "> "
      answer = gets.chomp.to_i

      if check_answer?(q1, answer)
        puts "Exactly correct!"
      else
        puts "Seriously Wrong!"
        if current_player == self.player1
          player1.lose_life
        else 
          player2.lose_life
        end
      end

      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      switch_player()
    end

    if (player1.lives > player2.lives)
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
    else
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  def check_answer?(q1, answer)
    if answer == q1.num1 + q1.num2
      return true
    else
      return false
    end
  end

  def switch_player
    self.current_player == self.player1 ? 
    self.current_player = self.player2 : self.current_player = self.player1
  end
end