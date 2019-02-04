class User
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.all.select do |rc|
      rc.user == self
    end.map{|rc| rc.recipe}
  end

  def add_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def top_three_recipes
    recipe_cards.sort_by(&:rating).map(&:recipe).last(3)
  end
end