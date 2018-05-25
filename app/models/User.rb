class User
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def find_allergen
    Allergen.all.select { |a| a.user = self}
  end

  def allergens
    find_allergen.map { |a| a.ingredient}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def find_user
    RecipeCard.all.select { |r| r.user == self }

  end

  def recipes
    find_user.map{ |x| x.recipe}
  end

  def ratings
    find_user.map { |x|  x.rating }
  end

  def most_recent_recipe
    recipes.last
  end

  def top_three_recipes
    find_user.sort_by{|obj| obj.rating}.last(3)
  end
end
