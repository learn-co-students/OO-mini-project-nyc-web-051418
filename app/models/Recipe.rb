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
    #get a list of all the recipe card instances (recipe to user)
    rc_list = RecipeCard.all.map do |rc|
      rc.recipe
    end
    #create a hash to count each time a recipe has a user
    count_hash = {}
    #iterate over each recipe instance
    rc_list.each do |x|
      #iterate over each recipe
      Recipe.all.each do |y|
        if count_hash.key?(y)
          count_hash[x] += 1
        else
          count_hash[x] = 1
        end
      end
      value = count_hash.max_by{|k,v| v}[0]
    binding.pry
  end
end

end
