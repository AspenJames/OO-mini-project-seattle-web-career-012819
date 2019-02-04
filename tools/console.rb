require_relative '../config/environment.rb'

hamburger = Recipe.new("Hamburger")
beef      = Ingredient.new("Beef")
wheat     = Ingredient.new("Wheat")
lettuce   = Ingredient.new("Lettuce")

puts hamburger.name
puts beef.name
puts

RecipeIngredient.new(hamburger, beef)
RecipeIngredient.new(hamburger, wheat)
RecipeIngredient.new(hamburger, lettuce)

puts RecipeIngredient.all
puts

hamburger.ingredients.each do |ing|
  puts ing.name
end
binding.pry
