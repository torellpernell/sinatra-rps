# /app.rb

require "sinatra"
require "sinatra/reloader"
 
get("/") do
  erb(:home)
end

get("/rock") do
  @computer_choice = rand(1..3)

  erb(:rock)
  
end

get("/paper") do
  @computer_choice = rand(1..3)
	
  erb(:paper)

end

get("/scissors") do
  @computer_choice = rand(1..3)

  erb(:scissors)
end
