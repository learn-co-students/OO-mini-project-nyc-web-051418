require 'pry'


class Allergen
  ALL = []

  #instance methods
  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient

    ALL << self
  end

  #class methods
  def self.all
    ALL
  end


end
