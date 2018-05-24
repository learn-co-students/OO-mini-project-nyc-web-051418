require_relative 'Allergen'
class Ingredient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.most_common_allergen
    ingredients = Allergen.all.map do |info|
      info.ingredient
    end

    most_common = ingredients.count(ingredients[0])
    ingredient = ingredients[0]
    i = 1
    while i < ingredients.length
      if ingredients.count(ingredients[i]) > most_common
        most_common = ingredients.count(ingredients[i])
        ingredient = ingredients[i]
      end
      i+=1
    end
    ingredient
  end

  def self.all
    @@all
  end
end
