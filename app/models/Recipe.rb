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

  def ingredients
    var = RecipeIngredient.all.select {|ri_instance| ri_instance.recipe == self }
    var.map {|ri_instance| ri_instance.ingredient}
  end

  def allergens

    var = Allergen.all.map do |ingredient|
      ingredient.ingredient
    end
    self.ingredients.select do |ingredient|
      var.include?(ingredient)
    end
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

    rc_list.each do |recipecard_instance|
          if count_hash.key?(recipecard_instance)
            count_hash[recipecard_instance] += 1
          else
            count_hash[recipecard_instance] = 1
          end

    end
    count_hash.max_by{|k,v| v}[0]
  end

end
