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
  end
end