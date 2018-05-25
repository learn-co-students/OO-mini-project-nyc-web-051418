class RecipeIngredient
  @@all = []
  attr_accessor :ingredients, :recipe
  def initialize(ingredients, recipe)
    @recipe = recipe
    @ingredients = ingredients
    @@all << self
  end
  def self.all
    @@all
  end
end
