require 'pry'


class User
  ALL = []

  #instance methods
  attr_accessor :name

  def initialize(name)
    @name = name

    ALL << self
  end

  #class methods
  def self.all
    ALL
  end

end
