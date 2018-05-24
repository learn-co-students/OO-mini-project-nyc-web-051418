class Ingredient
  attr_accessor :name, :id

  @@all = []
  def initialize(name)
    @name = name
    @id = nil
    @@all << self
  end

  def self.all?
      @@all
  end
  def self.most_common_allergen
    # should return the ingredient instance that the highest number of users are allergic to
  end
end
