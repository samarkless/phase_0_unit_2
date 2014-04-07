# U2.W4: Refactor Cipher Solution

# I worked on this challenge [by myself]

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 


def translate_to_cipher(sentence) #This is basically defining a new method, translate_to_cipher, which takes one parameter, sentence.
    alphabet = ('a'..'z').to_a # This is saying that the variable alphabet is equal to the alphabet which is then converted into an array. 
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #This is saying that the variable cipher is equal to a hash that compares the alphabet variable to a value when the alphabet is rotated by 4. 
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # This is saying that the variable spaces is equal to an array of symbols that will subsequently be used to fill out spaces in our cipher. 
    
    original_sentence = sentence.downcase # This is saying that the variable original_sentence is equal to a downcase version of the sentence.
    encoded_sentence = [] # This is saying that a new array is equal to the variable encoded_sentence.
    original_sentence.each_char do |element| # This is basically iterating through each character in our original_sentence variable.
      if cipher.include?(element) # This sees if our cipher variable includes the character in question.
        encoded_sentence << cipher[element] # if the above is correct, then the character from the cipher is pushed into the encoded_sentence variable.
      elsif element == ' ' #This sees or else if the character in questions is a space. 
        encoded_sentence << spaces.sample # if the above is correct, then we choose a random character and push that to the encoded_sentence variable.
      else 
        encoded_sentence << element # Otherwise, this says that we just push the original element. 
      end
     end
    
    return encoded_sentence.join # This returns to the user the encoded_sentence variable, which is joined into one string.
end


# Questions:
# 1. What is the .to_a method doing?
# This basically is turning the variable or element connected to it into an array. 
# 2. How does the rotate method work? What does it work on?
# The rotate method basically rotates elements in an array, it does this by rotating the middle element of an array so that it is the first element of the array. 
# In our example above, the elements in alphabet are being rotated 4 spaces to the left. 
# 3. What is `each_char` doing?
# This just iterates through each character in the string it pertains to. 
# 4. What does `sample` do?
# This randomly chooses an element from a given array. 
# 5. Are there any other methods you want to understand better?
# I deinitely want to revise the use and syntax for .zip and .rotate, they seem to be very useful methods!
# 6. Does this code look better or worse than your refactored solution of the original cipher code? What's better? What's worse?
#This code most definitely looks better! It is more clear and concise and refactored well. That being said we also managed to use rotate to refactor our code!
#  7. Is this good code? What makes it good? What makes it bad?
#The code seems very well refactored, which each line of code doing something key and integral to the overall functionality of the program.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? I do not think it does, considering we have used the .sample method above. This means that each time we take a random symbol
# for the space characters and thus the driver tests below wouldn't return the exact same thing everytime. 
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#This was, in my opinion, an absolutely excellent challenge to work through. It really helped with my understanding of the specific methods and
#how each one affected the line of coding it pertained to. 

#What questions did you have while coding? What resources did you find to help you answer them?
#I had to revise the meaning and use of .zip, used ruby docs. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Would like to practice more with .zip and .rotate. 

#Did you learn any new skills or tricks?
#Nothing completely new this time.

#How confident are you with each of the learning objectives?
# Quite confident

#Which parts of the challenge did you enjoy?
# Explaining and understanding each line of code was excellent!

#Which parts of the challenge did you find tedious?
# None.