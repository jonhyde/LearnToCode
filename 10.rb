# doYouLike = Proc.new do |aGoodThing|
#   puts 'I *really* like '+aGoodThing+'!'
# end

# doYouLike.call 'chocolate'
# doYouLike.call 'ruby'

# def doUntilFalse firstInput, someProc
#   input  = firstInput
#   output = firstInput

#   while output
#     input  = output
#     output = someProc.call input
#   end

#   input
# end

# buildArrayOfSquares = Proc.new do |array|
#   lastNumber = array.last
#   if lastNumber <= 0
#     false
#   else
#     array.pop                         # Take off the last number...
#     array.push lastNumber*lastNumber  # ...and replace it with its square...
#     array.push lastNumber-1           # ...followed by the next smaller number.
#   end
# end

# alwaysFalse = Proc.new do |justIgnoreMe|
#   false
# end

# puts doUntilFalse([500], buildArrayOfSquares).inspect
# puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)


# class Array
#   def eachEven(&wasABlock_nowAProc)
#     # We start with "true" because arrays start with 0, which is even.
#     isEven = true
#
#     self.each do |object|
#       if isEven
#         wasABlock_nowAProc.call object
#       end
#
#       isEven = (not isEven)  # Toggle from even to odd, or odd to even.
#     end
#   end
# end

# ['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
#   puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
# end
#
# # Remember, we are getting the even-numbered elements
# # of the array, all of which happen to be odd numbers,
# # just because I like to cause problems like that.
# [1, 2, 3, 4, 5].eachEven do |oddBall|
#   puts oddBall.to_s+' is NOT an even number!'
# end

def clock given_proc

current_hour = Time.new.hour #gets the current hour
  if current_hour > 12 #if it's after 12 then removes 12 to get to a 12 hour clock
    current_hour = current_hour - 12
  end

current_hour.to_i.times do #for hour number, call the given_proc this number of times
  given_proc.call
  end

end

dong_proc = Proc.new do #for each call, prints the word 'DONG'
puts 'DONG!'
end

clock dong_proc
