# U2.W5: Build a simple guessing game SOLO CHALLENGE

# I worked on this challenge [by myself]

# 2. Pseudocode

# Input: The input will be an integer called guess. 
# Output: The output will return the symbol :high if the guess is larger than the answer, :correct if the guess is
# equal to the answer, and :low if the guess is lower than the answer. 

# Steps: Firstly we begin by creating a new class called GuessingGame. 
# We define a class method, initialize, which takes answer as its sole parameter. 
# We set @answer equal to answer which is then converted into an integer. This sets up our instance variable.
# We now define another class method, Userguess, which takes a number as its parameter. 
# We set @number equal to number turned into an integer. 
# When @number is greater than @answer then we return :high
# when @number is lower than @answer then we return :lower
# when @number is equal to @answer then we return :correct.  
# 
# We then define another class method, answer_solved?
# If @answer is equal to @ number then return true. Else, return false. 


# 3. Initial Solution
#
=begin
class GuessingGame
  def initialize(answer)
  @answer = answer.to_i
  end
  
def Userguess(number)
	@number = number.to_i
	case 
	when @number > @answer then :high
	when @number < @answer then :lower
	when @number = @answer then :correct
	end
end

def answer_solved?
	if @answer == @number 
		true 
	else
		false
	end
end

end

=end

# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
  @answer = answer.to_i
  end
  
def guess(number)
	@number = number.to_i
	case 
	when @number > @answer then :high
	when @number < @answer then :lower
	when @number = @answer then :correct
	end
end

def solved?
	case
	when @answer == @number then true 
	else false
	end
end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

p game = GuessingGame.new(10)
p game.solved?

p game.guess(25)
p game.guess(100)
p game.guess(5)
p game.guess(9)
p game.solved? 

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#This was another fun challenge. It was quite straight forward in terms of getting the class and methods to work.
#
#What questions did you have while coding? What resources did you find to help you answer them?
#I had to quickly review the use of to_i and why we would have to use it in this case. Checked this up on 
#stackoverflow.com

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Nothing here really, aside from reviewing a couple of things. 

#Did you learn any new skills or tricks?
#Not this time. 
 
#How confident are you with each of the learning objectives?
#Confident. 
#
#Which parts of the challenge did you enjoy?
# Playing the game!
#
#Which parts of the challenge did you find tedious?
#None. 