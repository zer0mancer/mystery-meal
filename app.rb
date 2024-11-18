require "sinatra"
require "sinatra/reloader"
require "http"
require "json"



get("/") do
  redirect("/homepage")
end

get("/homepage") do
    erb(:homepage)
end



get("/random_recipe") do
  raw_data = HTTP.get("https://www.themealdb.com/api/json/v1/1/random.php")
  parsed_data = JSON.parse(raw_data).fetch("meals")
  @meal = parsed_data.at(0).fetch("strMeal")
  @ingredients = []

  @ingredient1 = parsed_data.at(0).fetch("strIngredient1")
  @ingredient2 = parsed_data.at(0).fetch("strIngredient2")
  @ingredient3 = parsed_data.at(0).fetch("strIngredient3")
  @ingredient4 = parsed_data.at(0).fetch("strIngredient4")
  @ingredient5 = parsed_data.at(0).fetch("strIngredient5")
  @ingredient6 = parsed_data.at(0).fetch("strIngredient6")
  @ingredient7 = parsed_data.at(0).fetch("strIngredient7")
  @ingredient8 = parsed_data.at(0).fetch("strIngredient8")
  @ingredient9 = parsed_data.at(0).fetch("strIngredient9")
  @ingredient10 = parsed_data.at(0).fetch("strIngredient10")
  @ingredient11 = parsed_data.at(0).fetch("strIngredient11")
  @ingredient12 = parsed_data.at(0).fetch("strIngredient12")
  @ingredient13 = parsed_data.at(0).fetch("strIngredient13")
  @ingredient14 = parsed_data.at(0).fetch("strIngredient14")
  @ingredient15 = parsed_data.at(0).fetch("strIngredient15")
  @ingredient16 = parsed_data.at(0).fetch("strIngredient16")
  @ingredient17 = parsed_data.at(0).fetch("strIngredient17")

  @image = parsed_data.at(0).fetch("strMealThumb")

  @instructions = parsed_data.at(0).fetch("strInstructions")


  erb(:mystery_meal)
end
