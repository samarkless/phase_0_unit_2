# U2.W4: Homework Cheater

# I worked on this challenge [by myself]

# 2. Pseudocode

# Input: The input here will be a method called essay_cheat which takes a number of variables such as
# title, topic, date, thesis, pronoun, and pronoun2 as parameters.
# 
# Output: The output here will be an essay-like paragraph created from the input. 
# 
# Steps: First off start by creating three hashes for each essay and give each 6 elements: title, topic,
# date, thesis, pronoun, pronoun2. These will act as the structure for our essay paragraph.
# Next, create our method, essay_cheat which takes the same 6 elements as above as parameters. 
# We use essay_template to create our essay paragraph and call the elements from the hashes to fill the essay_template.
# This then returns our ouput to the user which is the essay paragraph.


# 3. Initial Solution

	first_essay = {
		"title"=> "Basketball God",
		"topic"=> "Lebron James",
		"date"=> 1984,
		"thesis"=> "An American professional basketball player for the Miami Heat and widely considered to be the best player in the world! standing 6ft 8in and weighing 250lb, he is unstoppable!",
		"pronoun"=> "him",
		"pronoun2"=> "he"
	}

	second_essay = {

		"title"=> "Greek King",
		"topic"=> "Leonidas I",
		"date"=> 540,
		"thesis"=> "The warrior king leader of the Greek city-state of Sparta. He led the Spartan forces during the Persian War with Greece and reached untold levels of heroic brilliance at the Battle of Thermopylae",
		"pronoun"=> "him",
		"pronoun2"=> "he"
	}
	
	third_essay = {
	
		"title"=> "Tennis Girl",
		"topic"=> "Maria Sharapova",
		"date"=> 1987,
		"thesis"=> "A Russian professional tennis player who has won 29 WTA singles titles, pretty impressive! She made her pro breakthrough at the tender age of 17!",
		"pronoun"=> "her",
		"pronoun2"=>"she"
	}

def essay_cheat(title, topic, date, thesis, pronoun, pronoun2)

	essay_template= title + "\n" + topic + " was important in the year " + date.to_s + ". "	+ thesis + ". we should all bow down to " + pronoun + ",  " + pronoun2 + " is the best!."
	puts essay_template
end

essay_cheat(first_essay["title"],first_essay["topic"], first_essay["date"], first_essay["thesis"], first_essay["pronoun"], first_essay["pronoun2"])
essay_cheat(second_essay["title"],second_essay["topic"], second_essay["date"], second_essay["thesis"], second_essay["pronoun"], second_essay["pronoun2"])
essay_cheat(third_essay["title"],third_essay["topic"], third_essay["date"], third_essay["thesis"], third_essay["pronoun"], third_essay["pronoun2"])


# 4. Refactored Solution

def essay_cheat(title, topic, date, thesis, pronoun, pronoun2)

	p title + "\n" + topic + " was important in the year" + date.to_s + ". "	+ thesis + ". we should all bow down to " + pronoun + ",  " + pronoun2 + " is the best!."
	
end

essay_cheat("Basketball God", "Lebron James", 1984, "An American professional basketball player for the Miami Heat and widely considered to be the best player in the world! standing 6ft 8in and weighing 250lb, he is unstoppable!", "him", "he")
essay_cheat("Greek King", "Leonidas I", 540, "The warrior king leader of the Greek city-state of Sparta. He led the Spartan forces during the Persian War with Greece and reached untold levels of heroic brilliance at the Battle of Thermopylae", "him", "he")
essay_cheat("Tennis Girl", "Maria Sharapova", 1987, "A Russian professional tennis player who has won 29 WTA singles titles, pretty impressive! She made her pro breakthrough at the tender age of 17!", "her", "she")


# 1. DRIVER TESTS GO BELOW THIS LINE

puts first_essay.is_a? Hash
puts second_essay.is_a? Hash
puts third_essay.is_a? Hash
puts first_essay.size == 6

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
# This exercise caused me a lot of problems, and took a while to get through. Writing the pseudo code piece by piece was
# again, very helpful. The problem here was that I started off using hashes and then realised my refactored code was much simpler without using them.
# The problem was that my driver tests were based around my hashes. 

#What questions did you have while coding? What resources did you find to help you answer them?
# Wondering about what extra driver tests I could conduct on my refactored code. I'm still trying to find some.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#As above, I need to review driver tests and I want to find different ways I can test my refactored code.

#Did you learn any new skills or tricks?
#I used driver tests on hashes for the first time. 

#How confident are you with each of the learning objectives?
# ok confident

#Which parts of the challenge did you enjoy?
# thinking of what tests to write was exciting, I wish I could have thought of better ones!

#Which parts of the challenge did you find tedious?
# None.


















