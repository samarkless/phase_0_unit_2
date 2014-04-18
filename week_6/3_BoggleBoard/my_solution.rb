# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [with: Jake Huhn, Sam Arkless  ].


# 2. Pseudocode

# Create a new class, BoggleBoard, that initializes with a single parameter, board. Set @board equal to board to set up instance variable
# Define method, create_word, that takes a single parameter, *coords. Use #map to iterate through the coords array and find the first and last coordinates from the board array and join them together. 
# Define method, get_row, that takes a row number as its parameter, then returning the result of calling the array @board on the row element
# Define method, get_col, that takes a column number as its parameter, then returning the result of iterating thorugh the board instance variable using map and then accessing each column via the row number. 

# 3. Initial Solution

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
	    @board.map {|row| row[col]} 
	 end
end
 
dice_grid = [["b", "r", "a", "e"], 
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
# Printing given word 
# OUTPUT: 'dock' 
puts boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) 

# Printing every row 
# OUTPUT: 'brae', 'iodt', 'eclr', 'take'

4.times do |col|
 p boggle_board.create_word([col, 0],[col, 1],[col, 2],[col,3])
end
  
# Printing every column 
# OUTPUT: "biet", "roca", "adlk", "etre"

4.times do |row|
 p boggle_board.create_word([0, row], [1, row],[2, row], [3, row]) 
end 


# 4. Refactored Solution

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
	    @board.map {|row| row[col]} 
	 end
  
 	 def get_coord(coord) 
   		 @board[coord.first][coord.last]
  	 end

end
  
# 1. DRIVER TESTS GO BELOW THIS LINE

def assert 
  raise "Error! your code sucks!" unless yield
end

game = BoggleBoard.new(dice_grid)

assert { game.create_word([2,1], [1,1], [1,2], [0,3]) == 'code' } 
assert { game.get_row(1) == ['i','o','d','t'] }
assert { game.get_col(1) == ['r','o','c','a'] } 
assert { game.get_coord([3,2]) == 'k' }

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
#Continuing and adding to our challenge from last week was quite fun ! I had already refactored my code into classes and objects so 
#that gave us a bit of a head start when comemencing the challenge. 

#What questions did you have while coding? What resources did you find to help you answer them?
#Getting our code to print out specific words was a bit troublesome at first, but we logically worked through this challenging part
#by trial and error. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#Using assert to test our code in this challenge was a bit more difficult than the previous challenges and took a bit more thought. 

#Did you learn any new skills or tricks?
#Nothing new here. 
 
#How confident are you with each of the learning objectives?
#fairly confident. 

#Which parts of the challenge did you enjoy?
# Getting our specific word outputs. 

#Which parts of the challenge did you find tedious?
#None. 





