class User
  attr_accessor :name, :recipe_cards, :recipe

  ALL = []

  def initialize(name)
    @name = name
    @recipe_cards = []
    ALL << self
  end

  def self.all
      ALL
  end

  def recipes
    self.recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def add_recipe_card(recipe_card)
    self.recipe_cards << recipe_card
  end

  def most_recent_recipe
      recipes.last
  end

  def top_three_recipes



  end

  def sort_rating
    my_array = self.recipe_cards.sort_by{|card| card.rating}
    descending_array = my_array.reverse
    top_3 = descending_array[0,3]


    top_3.map do |recipe_instance|
    #  binding.pry
        recipe_instance.recipe
    end


  end




  def declare_allergen
  end

  def allergens
  end


end

matt = User.new("Matt")
kayla = User.new("Kayla")
jeff = User.new("Jeff")
karen = User.new("Karen")



pizza = RecipeCard.new("pizza title", "pizza recipe", "052418", 4, "Matt")
pasta = RecipeCard.new("pasta title", "pasta recipe", "0915118", 2, "Matt")
taco = RecipeCard.new("taco title", "taco recipe", "111115", 5, "Matt")
pie = RecipeCard.new("pie title", "pie recipe", "021415", 1, "Matt")

 matt.add_recipe_card(pizza)
 matt.add_recipe_card(pasta)
  matt.add_recipe_card(taco)
   matt.add_recipe_card(pie)
