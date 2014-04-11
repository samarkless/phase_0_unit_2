# U2.W5: Die Class 2: Arbitrary Symbols

# I worked on this challenge [with: jake Huhn].

# 2. Pseudocode

# Input: Array of strings by user 
# Output: When rolled, it will return one of the strings randomly. When sided, it will return how many sides. Returns an ArgumentError when the number of sides is less than 1.  
# Steps:

# Create a new class, Die. 
# Define method, initialize, that takes labels as its parameter.
# @labels is equal to labels, making this an instance variable. 
# Raise an ArgumentError if the user inputted labels instance variable is equal to an empty array. 
# Define a new method, sides, this will return to the user the legnth of the array of strings. 
# Define a roll method, which returns to the user a random string. 
# 

# 3. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels == []
      raise ArgumentError("you have an error here!")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end

# 4. Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError("you have an error here!") if @labels == []
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(['a','b','c','d']) 

puts die.sides 
puts die.sides == 4
puts die.roll 
puts die.roll == 'a' || 'b' || 'c' || 'd' 


# 5. Reflection 


#What parts of your strategy worked? What problems did you face?
#This was a great continuation from the previous exercise and really cemented the concpet of classes. 
#What questions did you have while coding? What resources did you find to help you answer them?
#Just reviewing the use of .sample. Looked at stackoverflow.com 
#What concepts are you having trouble with, or did you just figure something out? If so, what?
#No concepts were troubling here. Just reviewing .sample as stated above. 
#Did you learn any new skills or tricks?
#Using .sample here was quite useful. 
#How confident are you with each of the learning objectives?
#confident. 
#Which parts of the challenge did you enjoy?
#Getting the dice output. 
#Which parts of the challenge did you find tedious?
#None. 