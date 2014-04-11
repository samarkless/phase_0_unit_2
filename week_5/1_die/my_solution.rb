# U2.W5: Die Class 1: Numeric

# I worked on this challenge [by myself]

# 2. Pseudocode

# Input: The input here will be a basic Die class which contains the methods sides and roll. 
# 
# Output: The output from our methods here will be that the user is returned the number of sides on the dice, and also a number which is
# randomly given to the user when we call our roll method. 
# 
# Steps: Firstly, define the class method initialize, which takes a the variable, sides, as its sole parameter.
# @sides will be equal to our sides parameter in order to make this available throughout the entire class as an an instance variable. 
# Next we define our class method, sides, which will return to the user the number of sides that the dice has. 
# Finally we define a class method, roll, which takes our sides variable and returns a value that is random. 


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides=sides
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(@sides)
  end
end


# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides=sides
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(@sides)
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
puts die.sides
puts die.roll

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#This was overall a fun simplistic exercise. It was great to get back to using classes after not having focused on them 
#for awhile. 
#What questions did you have while coding? What resources did you find to help you answer them?
#No questions for this one.
#What concepts are you having trouble with, or did you just figure something out? If so, what?
#No concepts were troubling here. Seeing the output here was fun. 
#Did you learn any new skills or tricks?
#Using rand for the dice was something I had to remind myself of. 
#How confident are you with each of the learning objectives?
#confident. 
#Which parts of the challenge did you enjoy?
#Getting the dice output. 
#Which parts of the challenge did you find tedious?
#None. 