# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Sam Arkless
# 2)lasse sviland

 # This is the file you should end up editing. 
 
--------------------------------------------------------
#input: The input will be the number of people that want each type of food. 
#output: The output will return what needs to be made in terms of pie, cake, and cookie quantity.  

#
=begin
def bakery_num(num_of_people, fav_food) #Here we define a new global method, bakery_num,  that has two arguments, num_of_people and fav_food.
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #This creates a new hash, which contains three key:value pairs.
  pie_qty = 0 #These three lines create new local variables, and each is set to equal 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false #creates new variable, has_fave, which is equal to the boolean, false. 

  my_list.each_key do |k| # This loops through the my_list hash using the each_key method.
    if k == fav_food # if the key is equal to fav_food, then has_fave is true and fav_food is equal to the key.
        has_fave = true 
        fav_food = k
    end
  end
  
  if has_fave == false #This is saying that if the has_fave variable is false, it will raise a new argument error.
    raise ArgumentError.new("You can't make that food")
  else
    fav_food_qty = my_list.values_at(fav_food)[0]#creates a new fav_food_qty that is equal to my_list hash values at the fav_food key
        if num_of_people % fav_food_qty == 0 #checks if num_of_people is divisible by fav_food_qty
            num_of_food = num_of_people / fav_food_qty# creates a new variable that is equal to our argument divided by fav_food_qty
            return "You need to make #{num_of_food} #{fav_food}(s)."#returns a string to the user, showing the quantity and what type of fodd needs to be made.
        else num_of_people % fav_food_qty != 0# if num_of_people is not divisible by fav_food_qty it does the fillowing:
            while num_of_people > 0# creates a while loop that repeats while num_of_people is greater than 0
                if num_of_people / my_list["pie"] > 0 # checks if num_of_people divided by the key value of pie is greater than 0
                     pie_qty = num_of_people / my_list["pie"]#creates a new local variable, pie_qty which is equal to num_of_people divided by the key value of pie
                     num_of_people = num_of_people % my_list["pie"]#sets num_of_people to num_of_people divided by pie's key value
                elsif num_of_people / my_list["cake"] > 0# checks if num_of_people divided by the key value of cake is greater than 0
                    cake_qty = num_of_people / my_list["cake"]#creates a new local variable, cake_qty, which is equal to num_of_people divided by the key value of cake
                    num_of_people = num_of_people % my_list["cake"]#sets num_of_people to num_of_people divided by cake's key value
                else
                    cookie_qty = num_of_people# sets cookie_qty to the number of people
                    num_of_people = 0 # make num_of_people 0
                end
            end
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."  # this returns the quantity of the type of food you need to make
        end
    end
end

=end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
#p bakery_num(24, "cake") == "You need to make 4 cake(s)."
#p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
#p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
#p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
#p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
#p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
 

#REFACTORED SOLUTION

def bakery_num(num_of_people, fav_food) 
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  food_qty = {"pie" => 0, "cake" => 0, "cookie" => 0}

  has_fave = false #creates new variable, has_fave, which is equal to the boolean, false. 

  my_list.each_key do |k| # This loops through the my_list hash using the each_key method
    if k == fav_food # if the key is equal to fav_food, then has_fave is true and fav_food is equal to the key.
        has_fave = true 
        fav_food = k
    end
end
  
  if has_fave == false #This is saying that if the has_fave variable is false, it will raise a new argument error.
    raise ArgumentError.new("You can't make that food")
  else
        #food_qty[fav_food] = my_list[fav_food][0]
        if num_of_people % my_list[fav_food] == 0 && num_of_people != 0
            num_of_food = num_of_people / my_list[fav_food]
            return "You need to make #{num_of_food} #{fav_food}(s)."
        else 
            my_list.each do |food, qty| 
                if num_of_people != 0
                    food_qty[food] = num_of_people / my_list[food]
                    num_of_people = num_of_people % my_list[food] 
                end
            end
        end
        return "You need to make #{food_qty['pie']} pie(s), #{food_qty['cake']} cake(s), and #{food_qty['cookie']} cookie(s)."
end



#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense. The driver used to not make any sense because it prioritised making pies instead of making cakes, which is the favorite food. 
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 
#What parts of your strategy worked? What problems did you face?
#This was a different type of challenge but a useful one nonetheless which really fine tuned and forced us to pay attention
#to minute details in the code that needed to be explained and refactored. Changing the endless if else statements into a 
#coherent refactored statement was quite difficult but very rewarding!
#
#What questions did you have while coding? What resources did you find to help you answer them?
#We just ran into general syntax problems while refactoring but we were able to put our heads together and figure it out
#through trial and error. 

#What concepts are you having trouble with, or did you just figure something out? If so, what?
#The refactoring was difficult but after a few tries we got our intended result. 

#Did you learn any new skills or tricks?
#Practicing refactoring another pre-made code was great experience. 
 
#How confident are you with each of the learning objectives?
#Confident. 
#
#Which parts of the challenge did you enjoy?
#seeing our code return the correct result!
#
#Which parts of the challenge did you find tedious?
#None. 

 