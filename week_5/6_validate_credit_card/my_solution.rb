# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with Sam / Jake].

# 2. Pseudocode

# Input: A user inputs a credit card number when calling the CreditCard class. 
# Output: The program returns back to the user whether the card number is valid or not. 
# Steps:

# Define a method, sum, that add every digit in the new number, seperating digits greater than one number (ie. 10 = 1 0)

# Define a method, check_card, that returns true if the remainder of dividing the sum'd digits by 10 is 0. Otherwise, return false 

# 3. Initial Solution
# 
# =begin
# Create a new class, CreditCard
# Define a class method, initialize, that accepts a card_num as its parameter
# Set @card_num equal to the parameter
# Raise an Argument Error if the card_num is not 16 digits long 

class CreditCard
  def initialize(card_num) 
    @card_num = card_num
    raise ArgumentError.new ("Please enter a valid 16 digit credit card number") if card_num.to_s.length != 16
  end 

# Define a method, double, that doubles every other digit starting with the second to last, working forwards
# Define a variable, digits, that is equal to converting the instance variable card_num to a string, splitting it at each character, then iterate through with map to convert each char to an integer
# Iterate through digits using each_index to access every number in digits array, checking if its divisible by 2, then taking those numbers and doubling them 
  
  def double
    digits = @card_num.to_s.split('').map(&:to_i) 

    @new_digits = digits.each_index do |index| digits[index] *= 2 if index % 2 == 0 
    end 
  end
  
# Define a method, sum, that adds every digit together in the modified array, seperating digits greater than one number (ie. 10 = 1 0)
# Iterate through the digits array, checking for numbers that are greater than 10, then splitting these numbers apart before adding all single digits together 
  def sum 
      @new_digits.map! do |number| 
        if number >= 10 
          number.to_s.split('').map(&:to_i) 
        else 
          number
        end 
      end
         
     @sum_digits = @new_digits.flatten.reduce(:+) 

  end
  
# Define a method, check_card, that returns true if the remainder of dividing the sum'd digits by 10 is 0. Otherwise, return false 
  def check_card 
      @sum_digits.to_i % 10 == 0 
  end 

end

# 4. Refactored Solution

class CreditCard
  def initialize(card_num) 
    @card_num = card_num
    raise ArgumentError.new ("Please enter a valid 16 digit credit card number") if card_num.to_s.length != 16
  end 

  def double
    digits = @card_num.to_s.split('').map(&:to_i) 

    @new_digits = digits.each_index do |index| digits[index] *= 2 if index % 2 == 0 
    end 
  end
  
  def sum 
      @new_digits.map! do |number| 
        if number >= 10 
          number.to_s.split('').map(&:to_i) 
        else 
          number
        end 
      end
     @sum_digits = @new_digits.flatten.reduce(:+) 
  end
    @sum_digits.to_i % 10 == 0 
end 

 def check_card 
      @sum_digits.to_i % 10 == 0 
 end 

# 1. DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(1234237584738475) 

p card1.double == [2, 2, 6, 4, 4, 3, 14, 5, 16, 4, 14, 3, 16, 4, 14, 5]
p card1.sum == 71 
p card1.check_card == false 

card2 = CreditCard.new(1112)

p card2.check_card == false

p card2.double 

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#This was another fun challenge. Breaking it down into 3 parts and
#tackling each method was a great way of organising the challenge.
#Having said this, it was also quite a challenge for me and jake and
#we definitely needed a lot of trial and error using the irb to test our code over and over. 

#What questions did you have while coding? What resources did you find to help you answer them?
#We had to review various methods while we were coding such as .flatten, .each_index and .reduce which we didn't have the 
#most experience with, we reviewed these on stackoverflow.com

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#We really didn't see any other way to refactor our initial code as it seemed quite DRY already. 

#Did you learn any new skills or tricks?
#Getting more confident using .reduce, .flatten, and each_index. 

#How confident are you with each of the learning objectives?
#Confident. 

#Which parts of the challenge did you enjoy?
#Finally getting the correct output!.
#
#Which parts of the challenge did you find tedious?
#None. 