require 'pry'

class Owner
  # code goes here

  attr_reader :species, :name
  attr_accessor :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def name=(new_name)
    @name = new_name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    # @pets[:dogs].mood = "happy"
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |animal, array|
      array.each do |vibe|
        vibe.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    nemos = pets[:fishes]
    aprils = pets[:dogs]
    gramfels = pets[:cats]
    "I have #{nemos.length} fish, #{aprils.length} dog(s), and #{gramfels.length} cat(s)."
  end

  # binding.pry

end
