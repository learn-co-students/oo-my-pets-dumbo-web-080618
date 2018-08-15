require "pry"
class Cat
  # can change its mood
  attr_accessor :mood
  # can't change its name
  attr_reader :name
  # initializes with a nervous mood
  # can initialize a cat
  # initializes with a name
  def initialize(name, mood = "nervous")
    @name = name
    @mood = "nervous"
  end
  # def self.new
  #   @name
  # end



end
