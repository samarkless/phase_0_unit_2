# U2.W5: Virus Predictor

# I worked on this challenge [with: Jake Huhn, Sam Arkless].

# EXPLANATION OF require_relative
# Allows you to load a file that is required for the methods within the code. 
# Require_relative supports the various methodology within a certain file. 

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) # This is the initiliaze method for the VirusPredictor class. This accounts for the variuos inputs by the user when calling the class by translating the parameters into instance variables.  
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  
  def virus_effects  #HINT: What is the SCOPE of instance variables? An instance variable is bound to an instance of a class and together forms the state of an object.
       predicted_deaths
       speed_of_spread
  end
  private  #what is this?  what happens if it were cut and pasted above the virus_effects method? Private alters the visibility of the method, meaning that the user cannot explicity access the method / variable / anything that is contained within its start and end. In this case, this is useful to shield the user from possibly disturbing information. 

  def predicted_deaths # Takes three parameters and computes the values based on the inputs. 
    case  
    when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak" # This returns the values. 

  end 

  def speed_of_spread #Calculates the speed of the spread in months. 
    speed = 0.0
    case 
    when @population_density >= 200 then speed += 0.5
    when @population_density >= 150 then speed += 1
    when @population_density >= 100 then speed += 1.5
    when @population_density >= 50 then speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n" # This returns the value to the user.

  end 

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 
STATE_DATA.each { |key, val| 
  VirusPredictor.new(key, val[:population_density], val[:population], val[:region], val[:regional_spread]).virus_effects
}

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

# STATE_DATA is a hash that is filled with another hash. The first is made up of the state names as the keys, and the data as the value. 
# Then the second hash within that hash is made up of symbols that serve as keys which serves as a placeholder for the statistics that are the values. 






