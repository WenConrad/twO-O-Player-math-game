class Question
  attr_reader :player, :num1, :num2, :ans

  def initialize(player)
    @player = player
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @ans = @num1 + @num2
  end

  def prompt
    puts "#{self.player}: What does #{self.num1} plus #{self.num2} equal?"
    if gets.chomp.to_i == self.ans
      puts "#{self.player}: YES! You are correct."
      return true
    end
    puts "#{self.player}: Seriously? No!"
    return false
  end
end