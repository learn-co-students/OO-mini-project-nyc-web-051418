require_relative 'Ingredient'
class RecipeIngredient
  attr_accessor :ingredient, :recipe, :id

  @@all = []
  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @id = nil
    @@all << self
  end

  def self.all
    @@all
  end
end
