class User
  attr_accessor :name
  attr_reader :id

  @@all = []

  def initialize(name)
    @name = name
    @id = nil
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
  end

  def add_recipe_card(recipe, date, rating)
  end

  def declare_allergen(ingredient)
  end

  def allergens
  end

  def top_three_recipes
  end

  def most_recent_recipe
  end
end
