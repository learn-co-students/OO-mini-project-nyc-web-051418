class RecipeIngredient
  attr_accessor :ingredient, :recipe, :id

  @@all = []
  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @id = nil
  end

  def self.all
    self.all
  end
end
