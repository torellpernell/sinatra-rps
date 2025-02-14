# /app.rb

require "sinatra"
require "sinatra/reloader"
 
get("/") do
  erb(:home)
end

get("/app/rock") do
  @computer_choice = rand(1..3)

  erb(:rock)
  
end

get("/app/paper") do
  @computer_choice = rand(1..3)
	
  erb(:paper)

end

get("/app/scissors") do
  @computer_choice = rand(1..3)

  erb(:scissors)
end
