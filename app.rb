require "sinatra"
require "sinatra/reloader"
require "http"
require "json"



get("/") do
  erb(:homepage)
end


get("/random_recipe") do
  raw_data = HTTP.get("https://www.themealdb.com/api/json/v1/1/random.php")
  parsed_data = JSON.parse(raw_data).fetch("meals")
  @meal = parsed_data.at(0).fetch("strMeal")

  erb(:mystery_meal)
end
