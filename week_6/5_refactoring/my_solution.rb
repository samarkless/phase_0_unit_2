# U2.W6: Refactoring for Code Readability

# I worked on this challenge [with: Sam Arkless, Jake Huhn].

# Original Solution

class CreditCard
  def initialize (credit_card) # Create a new class, CreditCard. Define a class method, initialize, that accepts a number as its parameter. Set @number equal to the parameter. Raise an Argument Error if the card_num is not 16 digits long 
      @number = credit_card
      raise ArgumentError.new("Number must be 16 digits") if (Math.log10(@number).to_i + 1) !=16 
  end

  def validate 
      array = @number.to_s.split('') # sets array equal to the number converted to a string, split on each character (results in an array with every number in it) 
      array.map!{|x| x.to_i} # iterate through the array of each individual number string and turning them back into integers 
      array.insert(0,"remove this") # add string 'remove this' to front of array 
      array.map!.with_index{|value,i| i % 2 == 0 ? value : value *= 2 } # taking every other digit and doubling 
      array.shift # removes first element from array and returns this 
      if array.reduce(:+)%10==0 # if the sum of the manipulated array is divisible by 10, return true 
      puts true
    else
      puts false
    end
  end
end

# Refactored Solution

class CreditCard
  def initialize (credit_card)
      @number = credit_card
        raise ArgumentError.new("Number must be 16 digits") if @number.to_s.length != 16 # refactored for clarification 
  end

  def validate 
      array = @number.to_s.split('').map!{|x| x.to_i } # Combined the two lines into one
      array.insert(0,"remove this") 
        array.map!.with_index{|value,i| i % 2 == 0 ? value : value *= 2 } 
      array.shift
      case
        when array.reduce(:+)%10==0 then true #refactored the if/else statement into a one line conditional using when/then. 
    end
  end 
end


# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Error!" unless yield
end

passes = CreditCard.new(4408041234567896)

assert { passes.validate == true } 

fails =  CreditCard.new(4408041234567892)

assert { fails.validate == false } 

not_valid = CreditCard.new(12341234123412341)

assert { not_valid.validate }


# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#I think this was another interesting type of exercise which forced us again to be critical towards a piece of code, I feel this truly boosts
#our knowledge of creating code that is concise as well as effective!

#What questions did you have while coding? What resources did you find to help you answer them?
#Our questions stemmed from trying to exactly understand the thought process behind each line of code and what the original writer was attempting to
#achieve. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Nothing troublesome here. 

#Did you learn any new skills or tricks?
#Just fine tuning critically analysing code not written by myself, which is very helpful in bettering my own code. 
 
#How confident are you with each of the learning objectives?
# Confident. 

#Which parts of the challenge did you enjoy?
# Making the code even more concise.

#Which parts of the challenge did you find tedious?
#None 