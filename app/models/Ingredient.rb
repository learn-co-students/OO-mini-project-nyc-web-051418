class Ingredient
  attr_accessor :name,:recipe

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def add_recipes(recipe)
    RecipeIngredient.new(recipe,self)
  end

  def self.most_common_allergen
  allergen_hash = Hash.new(0)
  Allergen.all.select do |allergen|
    allergen_hash[allergen.ingredient] += 1
  end

  allergen_hash.sort_by do |key, value|
    value
  end.last
  end
  
end
