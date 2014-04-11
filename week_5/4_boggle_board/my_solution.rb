# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# Firstly we create a method, create_word, which has two parameters, board and *coords.
# We then use .map to iterate through our coordinates, effectively taking the first coordinate and second coordinate, 
# then putting them together using .join. 

# Initial Solution

=begin

def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

=end

# Refactored Solution

def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) 
puts create_word(boggle_board, [3,0], [3,1], [3,2], [3,3])

#Reflection 

#What parts of your strategy worked? What problems did you face?
#We were provided with this example by DBC on github.com, so there wasent much to do here except 
#understand whats going on in our method and then setting our driver codes. 
#
#What questions did you have while coding? What resources did you find to help you answer them?
#I had to review the function of .map and .join to fully understand what was happening with our coordinates. 
#Used stackoverflow.com

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#No problems here. 
#
#Did you learn any new skills or tricks?
#Nothing new here. 
 
#How confident are you with each of the learning objectives?
#confident. 

#Which parts of the challenge did you enjoy?
#Setting my driver codes to return the words that I wanted!

#Which parts of the challenge did you find tedious?
#None. 


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# Here, we firstly define a method called get_row, which takes the row number as its parameter. 
# We then return the result of calling the array boogle_board, on our row element. 


# Initial Solution

def get_row(row)
   boggle_board =[["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
   boggle_board[row]
end

# Refactored Solution

def get_brd_row(board, row)
		board[row]
end

# DRIVER TESTS GO BELOW THIS LINE

puts get_row(0) == ["b", "r", "a", "e"]
puts get_row(2) == ["e", "c", "l", "r"]

 # Reflection 

#What parts of your strategy worked? What problems did you face?
#Working through the initial solution was simple enough however the refactoring was a bit more difficult for me. 
#
#What questions did you have while coding? What resources did you find to help you answer them?
#No questions here. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#This was a logical continuation of the previous part and wasent too troubling. 

#Did you learn any new skills or tricks?
#Nothing new here. I suppose the refactoring of our method was different to previous methods.
 
#How confident are you with each of the learning objectives?
#Confident. 

#Which parts of the challenge did you enjoy?
#getting the output from our boggle board. 

#Which parts of the challenge did you find tedious?
#None. 


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# Firstly, we start by creating our method, get_col, and assign it a single parameter, col. 
# We then set our vairable, boggle_board equal to an array of strings. 
# We set another variable, col_arr equal to an empty array. 
# Another variable, row_num is set to equal the length of the array in boggle_board.
# We then use the loop, .times on row_num and call the row. 
# We then return the column array and push our boggle_board array row and column(minus 1) into col_arr. 
# We also return our row plus 1.
# We then return col_arr. 

# Initial Solution

def get_col(col)
 boggle_board = [
	 				["b", "r", "a", "e"],
	                ["i", "o", "d", "t"],
	                ["e", "c", "l", "r"],
	                ["t", "a", "k", "e"]
	            							]
col_arr = []
row_num = boggle_board.length
row_num.times do |row| 
	col_arr << boggle_board[row][col-1]
	row+=1
  end
col_arr
end

# Refactored Solution (this is the whole code from parts 1-3 refactored, this seemed like the logical way to express the whole
# code seeing as we were in the midst of learning about classes.)

class BoggleBoard 
	 
	 def initialize (board)
	 	@board = board
	 end

	 def create_word(*coords)
	 	coords.map { |coord| @board[coord.first][coord.last]}.join("")
	 end

	 def get_row(row)
	 	@board[row]
	 end

	 def get_col(col)
	 	col_arr = []
		row_num = @board.length
		row_num.times do |row| 
			col_arr << @board[row][col-1]
			row+=1
  		end
		col_arr
	 end
end

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

# DRIVER TESTS GO BELOW THIS LINE
game = BoggleBoard.new(boggle_board)

p game.create_word([2,1], [1,1], [1,2], [0,3])
p game.create_word( [3,0], [3,1], [3,2], [3,3])
p game.get_row(1)
p game.get_col(1)

p get_col(1)
p get_col(2)
p get_col(3)
p get_col(4)

puts ["b", "i", "e", "t"] == get_col(1)

# Reflection 

#What parts of your strategy worked? What problems did you face?
#This part of the challenge was much more difficult for me. I had to revise multiple methods and syntaxes
#Writing out the pseudo code really helped to break down the code.

#What questions did you have while coding? What resources did you find to help you answer them?
#I had to revise the syntax and use of "do", <<, and +=, stackoverflow.com and tutorialspoint.com.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#The refactoring here was a big breakthrough for me and deciding to simply make the whole code a class really cleaned things
#up nicely. 
#Did you learn any new skills or tricks?
#just getting more confident using classes. 
 
#How confident are you with each of the learning objectives?
#reasonably confident. 

#Which parts of the challenge did you enjoy?
#Refactoring the whole thing into a class was great!

#Which parts of the challenge did you find tedious?
#None. 