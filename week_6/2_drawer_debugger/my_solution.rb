# U2.W6: Drawer Debugger

# I worked on this challenge [ with: Jake Huhn, Sam Arkless ].

# 2. Original Code

class Drawer

	attr_reader :contents

   def initialize
		@contents = []
		@open = true
	end

   def open
	   @open = true
   end

	def close
		@open = false
	end 

    def add_item(item)
		@contents << item
	end

  def remove_item(item = @contents.pop) #what is `#pop` doing? The #pop here is 'popping' out the item from the contents array in order to remove it. 
		@contents.delete(item)
	end

  def dump  # what should this method return? This method should return an empty @contents array, therefore another line needed to be added below the puts statement. 
		puts "Your drawer is empty."
        @contents = [] 
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
  
    def eat 
      puts "You ate with the #{type}" 
    end 
   
end 

class Silverware
	attr_reader :type

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "Eating with the #{type}"
		@clean = false
	end

    def clean_silverware 
      @clean = true 
    end 
  
    def clean 
      @clean = true
      puts "You cleaned the #{type}"
    end
end

# DRIVER TESTS
  
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? This should return a well organized list of the various items that are currenlty in the object, in this case the utensils in the silverware drawer. 

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)

spoon = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
puts silverware_drawer 
puts silverware_drawer.remove_item(fork)
spoon.eat

#BONUS SECTION

puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion has failed!" unless yield
end

steak_knife = Silverware.new("steak_knife")
sharp_fork = Silverware.new("fork")

cutlery_drawer = Drawer.new
cutlery_drawer.add_item(steak_knife)

assert { puts cutlery_drawer.add_item(steak_knife) == cutlery_drawer.contents }
assert { puts cutlery_drawer.add_item(sharp_fork) == cutlery_drawer.contents }
assset { puts steak_knife.clean_silverware == true }
assert { puts sharp_fork.eat == false } 
  
# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#I thought this was a very fun exercise, I feel like any chance we get to analyse and debug a ready made code only helps us to fine tune our 
#own code creation. Using our IRB to go through each error was a fun process and one that is surely invaluable for our coding careers. 

#What questions did you have while coding? What resources did you find to help you answer them?
#If we ran into any problems during the exercise we simply examined which line of code was perpetrating the problem and put our heads together in
#order to solve the solution. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#No substantial problems here. Although having more practice with the assert syntax is helpful. 

#Did you learn any new skills or tricks?
#Just getting more confident with assert and yield. 
 
#How confident are you with each of the learning objectives?
# confident. 

#Which parts of the challenge did you enjoy?
# Using the IRB to debug the program. 

#Which parts of the challenge did you find tedious?
# None 