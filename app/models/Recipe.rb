require_relative 'RecipeIngredient'
require_relative 'RecipeCard'
class Recipe
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def get_recipe_ingredients
    RecipeIngredient.all.select do |info|
      info.recipe == self
    end
  end

  def ingredients
    recipe_ingredients = get_recipe_ingredients
    recipe_ingredients.map do |info|
      info.ingredient
    end
  end

  def self.all
    @@all
  end

  def get_recipe_card_with_recipe
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    cards = get_recipe_card_with_recipe

    users = cards.map do |info|
      info.user
    end
    users.uniq!
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
end

#
# a = Recipe.new("cheezits")
# a.add_recipe_card(a, "11/23/30", 5)
