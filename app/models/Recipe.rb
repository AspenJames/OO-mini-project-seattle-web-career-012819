class Recipe
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    # retuns the recipe instance with the highest number of users
  end

  def users
    # retuns the user instances who have recipe cards with this recipe
  end

  def ingredients
    # return all of the ingredients in this recipe
    recipe_ingredients = RecipeIngredient.all.select{|ri| ri.recipe == self}
    recipe_ingredients.map{|ri| ri.ingredient}
  end

  def allergens
    # returns all of the ingredients in this recipe that are allergens
  end

  def add_ingredients(ing = [])
    # accepts an array of ingredient instances, associates each of those ingredients with this recipe
  end
end