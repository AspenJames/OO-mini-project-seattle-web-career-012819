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
end