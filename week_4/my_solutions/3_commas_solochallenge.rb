# U2.W4: Create Accountability Groups Challenge

# I worked on this challenge [by myself]

# 2. Pseudocode

# Input: The input here will be a method, comma_insert, which has one parameter, an integer.

# Output: The output here will be a string of the integer, separated by commas in the correct places. 

# Steps: Firstly we create and define a method, comma_insert, which has one parameter, an integer.
# We then change our integer into a string.
# If our integer string's length is less than or equal to 3 then the user is returned the integer string unchanged.
# Else, if our integer string's length is less than or equal to 4 then a comma is inserted in position -4.
# Else, if our integer string's length is less than or equal to 5 then a comma is inserted in position -4.
# Else, if our integer string's length is less than or equal to 7 then a comma is inserted in position -7 and -4.
# Else, if our integer string's length is less than or equal to 9 then a comma is inserted in position -7 and -4.
# Else, if our integer string's length is less than or equal to 10 then a comma is inserted in position -10, -7, and -4.
# Display the output to the user, each time changing the value of the integer. 

# 3. Initial Solution

def comma_insert(integer)
 
  integer_string = integer.to_s
  if integer_string.length <= 3
      return integer_string
  elsif integer_string.length <= 4
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 5
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 7
      i = -7
      integer_string.insert(i, ",") 
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 9
      i = -7
      integer_string.insert(i, ",") 
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 10     
      i = -10
      integer_string.insert(i, ",") 
      i = -7
      integer_string.insert(i, ",")
      i = -4
      integer_string.insert(i, ",")

  end
end

puts comma_insert(100)
puts comma_insert(1000)
puts comma_insert(10000)
puts comma_insert(1000000)
puts comma_insert(100000000)
puts comma_insert(1000000000)

# 4. Refactored Solution

def comma_insert(integer)
  integer_string = integer.to_s
  if integer_string.length <= 3
      integer_string
  elsif integer_string.length <= 4
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 5
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 7
      i = -7
      integer_string.insert(i, ",") 
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 9
      i = -7
      integer_string.insert(i, ",") 
      i = -4
      integer_string.insert(i, ",")
  elsif integer_string.length <= 10     
      i = -10
      integer_string.insert(i, ",") 
      i = -7
      integer_string.insert(i, ",")
      i = -4
      integer_string.insert(i, ",")
  end
end

p comma_insert(100)
p comma_insert(1000)
p comma_insert(10000)
p comma_insert(1000000)
p comma_insert(100000000)
p comma_insert(1000000000)

# 1. DRIVER TESTS GO BELOW THIS LINE

p comma_insert(1000) == "1,000" #does our method with an input of 1000 return the string "1,000"?
p comma_insert(10000) == "10,000" #does our method with an input of 10000 return the string "10,000"?
p comma_insert(1000000) == "1,000,000" #does our method with an input of 1000000 return the string "1,000,000"?
p comma_insert(100000000) == "100,000,000" #does our method with an input of 1000000000 return the string "100,000,00"?

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
# This challenge was quite fun, I had a great time playing around with my values and finding the ones that worked the best
# for any given integer. In terms of problems, I realise the code above isn't very minimalistic however I'm not quite sure
# how I could have refactored the code at the moment.

#What questions did you have while coding? What resources did you find to help you answer them?
#How to implement .insert correctly in the if/elsif statements. Used stackoverflow to revise this.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Just the refactoring of my code, I believe there are built in ruby methods that will probably cut this code down.
#
#Did you learn any new skills or tricks?
#Just revising .insert!

#How confident are you with each of the learning objectives?
# quite confident.

#Which parts of the challenge did you enjoy?
# Playing around with the code and trial and error. 

#Which parts of the challenge did you find tedious?
# None. 





