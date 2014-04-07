# U2.W4: Create Accountability Groups Challenge

# I worked on this challenge [by myself]

# 2. Pseudocode

# Input: The input will be an array of names from our cohorts for DevBootcamp
# Output: The output will be a list of accountability groups for three cohorts. 
# Each group will be made up of 4 or more names from the list. 
# Steps: Firstly start by creating a method called accountability_group, 
# this method should take an array, dbcCohort_array as a parameter.
# Use .shuffle and .each_slice to shuffle and iterate through dbcCohort_array, and pick out 
# groups of 4 names. 
# The result of the shuffle and slicing should equal array_output. 
# Using .length on our output, if the array is divisible by 4, then return the output.
# Else, we use .pop to pop the array of the output and place it in the variable remainder_people.
# For values in remainder_people, we push each into the other arrays using .push, then finally return
# the output once again. 


# 3. Initial Solution

def accountability_group(dbcCohort_array)
  array_output = dbcCohort_array.shuffle.each_slice(4).to_a
  if array_output.length % 4 == 0 
    return array_output 
  else 
    remainder_people = array_output.pop 
    for i in 0...array_output.length 
      array_output[i].push(remainder_people[i])
    end
    return array_output
  end 
end 

cicadas_ary = ["Adeoye Jaiyeola","Brittaney Staton", "Chantelle Turnbull","Charu Sharma","Danielle Adams",
"David Kerr","Dinesh Rai","Gregory Knud", "Ian Greenough", "Jake Huhn","Jason Matney",
"Jessica Tatham", "John Quigley","Judy Jow","Justin Lee", "Kai Prout","Ken Sin", "Kennedy Bhagwandeen", 
"Kevin Zhou", "Lasse Sviland", "Natalie Baer", "Nick Giovacchini", "Samuel Arkless", "Timothy McClung"] 

fiddler_crabs_ary = ['Adam Godel ','Adrian Pask ','Brendan Scarano' ,'Christine Feaster' ,"Howard O'Leary ",
'Insung Lee ','Jared Rader ','Johnathan Weisner' ,'Julia Himmel ','Justin Phelps ','Keaty Gross ','Kenneth Uy ',
'Lawrence Manfredi ','Neal Fennimore ','Payam Pakmanesh ','Philip London ','Ruben Osorio ','Ryan Rebo ','Sahan Pitigala ',
'Shaun McGeever ','Timmy Huang ','Tyler Adams'] 

dragonflies_ary = [ 'Andrew Larson','Andrew Younge' ,'Caroline Artz ','Dan Armstrong ','Elizabeth Cruz ',
'Elizabeth Kaplan ','Erik Olsen ','Fabi Castillo', 'George Amolsch', 'Guido Medina ','Jason Chodera ',
'Justin Stewart ','Kevin Kanhirun ','Lars Berg ','Matthew Berns', 'Matthew Didier', 'Michael Hamel ',
'Milan Grubnic ','Mohammad Abdeljalil ','Nate Kandler ','Nicholas Eich ','Oliver Treadwell', 'Paige Crum ',
'Robb Hong ','HyungMin ','Santrece Ross','Syed raza a. Jafri '] 

puts accountability_group(cicadas_ary)
puts accountability_group(fiddler_crabs_ary)
puts accountability_group(dragonflies_ary)

# 4. Refactored Solution

def account_grp(dbcCohort_array)
  array_output = dbcCohort_array.shuffle.each_slice(4).to_a
  return array_output if array_output.length % 4 != 0 
    remainder_people = array_output.pop 
    for i in 0...array_output.length 
    	array_output[i].push(remainder_people[i])
    end 
  array_output 
end 

cicadas_ary = ["Adeoye Jaiyeola","Brittaney Staton", "Chantelle Turnbull","Charu Sharma","Danielle Adams",
"David Kerr","Dinesh Rai","Gregory Knud", "Ian Greenough", "Jake Huhn","Jason Matney",
"Jessica Tatham", "John Quigley","Judy Jow","Justin Lee", "Kai Prout","Ken Sin", "Kennedy Bhagwandeen", 
"Kevin Zhou", "Lasse Sviland", "Natalie Baer", "Nick Giovacchini", "Samuel Arkless", "Timothy McClung"] 

fiddler_crabs_ary = ['Adam Godel ','Adrian Pask ','Brendan Scarano' ,'Christine Feaster' ,"Howard O'Leary ",
'Insung Lee ','Jared Rader ','Johnathan Weisner' ,'Julia Himmel ','Justin Phelps ','Keaty Gross ','Kenneth Uy ',
'Lawrence Manfredi ','Neal Fennimore ','Payam Pakmanesh ','Philip London ','Ruben Osorio ','Ryan Rebo ','Sahan Pitigala ',
'Shaun McGeever ','Timmy Huang ','Tyler Adams'] 

dragonflies_ary = [ 'Andrew Larson','Andrew Younge' ,'Caroline Artz ','Dan Armstrong ','Elizabeth Cruz ',
'Elizabeth Kaplan ','Erik Olsen ','Fabi Castillo', 'George Amolsch', 'Guido Medina ','Jason Chodera ',
'Justin Stewart ','Kevin Kanhirun ','Lars Berg ','Matthew Berns', 'Matthew Didier', 'Michael Hamel ',
'Milan Grubnic ','Mohammad Abdeljalil ','Nate Kandler ','Nicholas Eich ','Oliver Treadwell', 'Paige Crum ',
'Robb Hong ','HyungMin ','Santrece Ross','Syed raza a. Jafri '] 

p account_grp(cicadas_ary)
p account_grp(fiddler_crabs_ary)
p account_grp(dragonflies_ary)

# 1. DRIVER TESTS GO BELOW THIS LINE

 p cicadas_ary.is_a? Array # This shows if the input is actually an array.

 p cicadas_ary.size == 24 # Checks to see if the cicadas array contains 24 names. 

 p cicadas_ary.index("Samuel Arkless") == 22 # Checks to see whether "Samuel Arkless" is the 22nd element of the array.

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
# Using pseudo code to break this problem down was key, as I had a lot of difficulty with it at first 
# to get the code to do what I wanted it to. I also had a bit of difficulty with thinking up more creative
# tests than the ones above to test on my code. Eveentually, while using examples from github and stackoverflow, 
# I managed to find a method that worked. 

#What questions did you have while coding? What resources did you find to help you answer them?
# I needed to revise the use of .slice and .pop for the method, I found great examples and responses on 
# stackoverflow and rubydocs.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#The whole method was quite complicated and finding more complex tests for my code was also difficult for me.

#Did you learn any new skills or tricks?
# Using .pop was great!

#How confident are you with each of the learning objectives?
# ok confident

#Which parts of the challenge did you enjoy?
# thinking of what tests to write was exciting, I wish I could have thought of better ones!

#Which parts of the challenge did you find tedious?
# None.
















