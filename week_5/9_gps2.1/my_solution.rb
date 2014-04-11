# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Sam Arkless, lasse sviland

# Our Refactored Solution

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

# You SHOULD change this driver code. Why? Because it doesn't make sense.
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

 
