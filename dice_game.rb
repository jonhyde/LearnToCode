


class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

@player1_score = 0
@player2_score = 0


puts "Please enter the name for player 1"
@player1 = gets.chomp

puts "Please enter the name for player 2"
@player2 = gets.chomp

# while @player1_score or @player2_score < 100
# end


Die1 = Die.new
Die2 = Die.new
Result = Die1.showing * Die2.showing

puts Die1.showing
puts Die2.showing
puts Result