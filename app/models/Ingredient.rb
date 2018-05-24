class Ingredient
  attr_accessor :name, :id

  @@all = []
  def initialize(name)
    @name = name
    @id = nil
    @@all << self
  end

  def self.all
      @@all
  end
  def self.most_common_allergen
    # should return the ingredient instance that the highest number of users are allergic to
    highest_count = 0
    highest_allergen = nil
    Ingredient.all.each do |ingredient|
      count = Allergen.all.select do |allergen|
        allergen.ingredient == ingredient
      end
      if count.length > highest_count
        highest_count = count.length
        highest_allergen = ingredient
      end
    end
    highest_allergen
  end
end
