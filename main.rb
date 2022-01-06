require './player'
require './question'

class Game
  attr_accessor :current_turn
  attr_reader :p1, :p2
  
  def initialize
    puts "Welcome to the TwO-O-Player Math Game!"
    puts "Player 1 Name:"
    @p1 = Player.new(gets.chomp)
    puts "Player 2 Name:"
    @p2 = Player.new(gets.chomp)
    @current_turn = @p1
  end
  
  def next_turn
    self.current_turn = self.current_turn == self.p1 ? self.p2 : self.p1
  end

  def play
    while true
      if !Question.new(self.current_turn).prompt
        self.current_turn.incorrect
      end
      puts "->#{self.p1.player_score} vs #{self.p2.player_score}<-"
      if self.p1.score == 0 || self.p2.score == 0
        break
      end
      self.next_turn
      puts "----- NEW TURN -----"
    end
    winner = self.p1.score > self.p2.score ? self.p1 : self.p2
    puts "#{winner} wins with a score of #{winner.score}/3\n----- GAME OVER -----\nGood bye!"
  end
end

Game.new.play