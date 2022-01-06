require './player'
require './question'

puts "Welcome to the TwO-O-Player Math Game!"
puts "Player 1 Name:"
@p1 = Player.new(gets.chomp)
puts "Player 2 Name:"
@p2 = Player.new(gets.chomp)
current_turn = @p1
while true
  if !Question.new(current_turn).prompt
    current_turn.incorrect
  end
  puts "->#{@p1.player_score} vs #{@p2.player_score}<-"
  if @p1.score == 0 || @p2.score == 0
    break
  end
  current_turn = current_turn == @p1 ? @p2 : @p1
  puts "----- NEW TURN -----"
end
winner = @p1.score > @p2.score ? @p1 : @p2
puts "#{winner} wins with a score of #{winner.score}/3\n----- GAME OVER -----\nGood bye!"