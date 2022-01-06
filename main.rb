require './player'
require './question'

puts "Welcome to the TwO-O-Player Math Game!"
puts "Player 1 Name:"
@p1 = Player.new(gets.chomp)
puts @p1.inspect
if !Question.new(@p1).prompt
  @p1.incorrect
end

puts @p1.inspect