require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  @@count = 0
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    "I am a #{self.species}."
  end



  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat= Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog= Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|element| element.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|element| element.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|element| element.mood = "happy"}
  end

  def sell_pets
    @pets.each do |animal, array|
      array.each do |element|
        element.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    nemo = @pets[:fishes]
    air_bud =@pets[:dogs]
    satan =@pets[:cats]
    return "I have #{nemo.length} fish, #{air_bud.length} dog(s), and #{satan.length} cat(s)."


  end



end
