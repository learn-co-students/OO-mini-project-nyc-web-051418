require 'pry'


class Recipe
  ALL = []

  #instance methods
  attr_accessor :name

  def initialize(name)
    @name = name

    ALL << self
  end

  def users
    var = RecipeCard.all.select {|rc_instance| rc_instance.recipe == self }
    var.map {|rc_instance| rc_instance.user}
  end

  def ingredients #make sure to test
    var = RecipeIngredient.all.select {|ri_instance| ri_instance.recipe == self }
    var.map {|ri_instance| ri_instance.ingredient}
  end

  def allergens #make sure to test

    var = Allergen.all.map do |ingredient|
      ingredient.ingredient
    end
    self.ingredients.select do |ingredient|
      var.include?(ingredient)
    end
    # binding.pry
  end

  def add_ingredients(ingredients)
    ingredients.each { |ingredient| RecipeIngredient.new(self, ingredient) }
  end

  #class methods
  def self.all
    ALL
  end

  def self.most_popular
    rc_list = RecipeCard.all.map do |rc|
      rc.recipe
    end

    count_hash = {}

    rc_list.each do |x|
      Recipe.all.each do |y|
          if count_hash.key?(x)
            if x == y
            count_hash[x] += 1
            end
          else
            if x == y
            count_hash[x] = 1
            end
          end
      end
    end
    value = count_hash.max_by{|k,v| v}[0]
end

end
