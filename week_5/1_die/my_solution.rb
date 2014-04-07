# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides=sides
  end
  
  def sides
    # code goes here
    @sides
  end
  
  def roll
    # code goes here
    rand(@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


die = Die.new(6)
puts die.sides
puts die.roll




# 5. Reflection 