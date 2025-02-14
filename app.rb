# /dice.rb

require "sinatra"
require "sinatra/reloader"
 
get("/") do
  erb(:home)
end

get("/app/rock") do
  # first_die = rand(1..6)
  # second_die = rand(1..6)
  # sum = first_die + second_die
	
  # @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  @rolls = []    # Create a blank array

  2.times do    # 100 times...
    die = rand(1..6)    # Generate a random number

    @rolls.push(die)    # Add the random number to the array 
  end

  erb(:rock)
  
end

get("/app/paper") do
  # first_die = rand(1..10)
  # second_die = rand(1..10)
  # sum = first_die + second_die
	
  # @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  @rolls = []    # Create a blank array

  2.times do    # 100 times...
    die = rand(1..10)    # Generate a random number

    @rolls.push(die)    # Add the random number to the array 
  end
	
  erb(:paper)
end

get("/app/scissors") do
 	
  @rolls = []    # Create a blank array

  1.times do    # 100 times...
    die = rand(1..20)    # Generate a random number

    @rolls.push(die)    # Add the random number to the array 
  end

  erb(:scissors)
end
