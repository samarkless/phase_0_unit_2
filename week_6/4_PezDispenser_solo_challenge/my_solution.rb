# U2.W6: PezDispenser Class from User Stories

# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

#Firstly, we begin by creating a new class, PezDispenser, and we then initialize this class by creating an initialize method
#which accepts a single parameter, pezflavors, and then stores this as an instance variable to be used later. 
#We then define a new method, pez_amount, which uses the .length method on our pezflavors to see the amount of pez remaining in the dispenser.
#We then define a new method, eat_pez, which will return a recently used pez flavor by using the .pop method which takes that pez flavor from our @pezflavors instance variable.
#We now define a new method, add_pez, which will use .push method in order to push whatever input is received, into the @flavors variable. 
#Finally, we define a new method, dispenser_contents, which returns the @pezflavors instance variable in order to show the user all the flavors
#that are left in the dispenser. 


# 3. Initial Solution
#
=begin
class PezDispenser 

	def initialize(pezflavors)
		@pezflavors = pezflavors
	end
 
 	def pez_amount 
 		@pezflavors.length
 	end

 	def eat_pez
 		@pezflavors.pop
 	end

 	def add_pez(pezflavor)
 		@pezflavors.push(pezflavor)
 	end

 	def dispenser_contents
 		@pezflavors
 	end
end
=end

# 4. Refactored Solution

class PezDispenser 

	def initialize(pezflavors)
		@pezflavors = pezflavors
	end
 
 	def pez_amount 
 		@pezflavors.length
 	end

 	def eat_pez
 		@pezflavors.pop
 	end

 	def add_pez(pezflavor)
 		@pezflavors << pezflavor
 	end

 	def dispenser_contents
 		@pezflavors
 	end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

pezflavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(pezflavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_amount} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.dispenser_contents
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_amount} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.eat_pez}"
puts "Now you have #{super_mario.pez_amount} pez!"

def assert 
	raise "Error! There is something wrong!" unless yield
end

bestflavors = %w(watermelon dragonfruit strawberry pineapple steak sardines)
favflavors = PezDispenser.new(bestflavors)

assert {favflavors.dispenser_contents == ["watermelon", "dragonfruit", "strawberry", "pineapple", "steak", "sardines"] }
assert {favflavors.pez_amount == 6}

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#I found the whole idea behind this challenge to be quite fun! I also thought it was great that we practiced formulating our
#code by using the user stories provided for us! I didn't really face too many problems as the user stories really helped break down the 
#code into clear parts. 

#What questions did you have while coding? What resources did you find to help you answer them?
#Just reviewing the use of .pop and I found this on stakcoverflow.com

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#I didn't have any trouble with the concepts here. 

#Did you learn any new skills or tricks?
#Translating a user story into driver codes and solutions was fun !
 
#How confident are you with each of the learning objectives?
#Pretty confident. 

#Which parts of the challenge did you enjoy?
#Getting the output of the program in IRB and playing around with it. 

#Which parts of the challenge did you find tedious?
#None 