class Ingredient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.most_common_allergen
    # returns the ingredient instance that most users are allergic to
  end

end
