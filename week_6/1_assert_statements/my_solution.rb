
# U2.W6: Testing Assert Statements

# I worked on this challenge [ with: Jake Huhn , Sam Arkless].

# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield 
end
 
#name = "bettysue"
#assert { name == "bettysue" } # true
#assert { name == "billybob" } # false -> raises assertion statement 

# 2. Pseudocode what happens when the code above runs

# When we run the code above in IRB, an error message appears saying that the code on line 14 has failed. This is due to the fact that the assertion on 
# line 14 yields false. Since line 13 yield true, no assertion is raised. 

# 3. Copy your selected challenge here

# Week 5, Challenge 2 

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


#Old driver test codes
#
=begin
die = Die.new(['a','b','c','d']) 

puts die.sides 
puts die.sides == 4
puts die.roll 
puts die.roll == 'a' || 'b' || 'c' || 'd' 
=end

# 4. Convert your driver test code from that challenge into Assert Statements

die = Die.new(['a','b','c','d'])

assert { p die.sides == 4 } 
assert { p die.roll == 'a' || 'b' || 'c' || 'd'  }

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#This challenge was a great opener for learning how to create our assert method containing our error message. It also clarified the
#definition and use of yield. Furthermore, replacing our driver test codes with assert statements was interesting. 

#What questions did you have while coding? What resources did you find to help you answer them?
#Just learning the basic block syntax and how to use yield and assert. I used the source provided on the github page for this challenge to 
#review this stuff. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Once I reviewed the syntax on tutorialspoint.com I didn't have any trouble completing the challenge. 

#Did you learn any new skills or tricks?
#Using yield and assert for the first time in awhile was fun!
 
#How confident are you with each of the learning objectives?
# Confident. 

#Which parts of the challenge did you enjoy?
# Using the past week's challenge to complete this week's challenge was fun. 

#Which parts of the challenge did you find tedious?
#None. 