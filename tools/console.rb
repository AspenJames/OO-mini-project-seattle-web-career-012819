require_relative '../config/environment.rb'

hamburger = Recipe.new("Hamburger")
bad_sandwich = Recipe.new("Bad Sandwich")
toast = Recipe.new("Toast")
taco = Recipe.new("Taco")

beef      = Ingredient.new("Beef")
wheat     = Ingredient.new("Wheat")
lettuce   = Ingredient.new("Lettuce")

puts hamburger.name
puts beef.name
puts

RecipeIngredient.new(hamburger, beef)
RecipeIngredient.new(hamburger, wheat)
RecipeIngredient.new(hamburger, lettuce)

RecipeIngredient.new(bad_sandwich, wheat)
RecipeIngredient.new(bad_sandwich, lettuce)


pat = User.new("Pat")
terri = User.new("Terri")

RecipeCard.new(terri, hamburger, 9)
RecipeCard.new(pat, hamburger, 8)
RecipeCard.new(pat, bad_sandwich, 2)
RecipeCard.new(pat, toast, 5)
RecipeCard.new(pat, taco, 9)
puts RecipeIngredient.all
puts

hamburger.ingredients.each do |ing|
  puts ing.name
end

puts "Pat should have two recipes."
puts pat.recipes.length == 2

puts "Most popular recipe should be 'Hamburger'."
puts Recipe.most_popular == hamburger
binding.pry
