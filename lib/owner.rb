


require 'pry'

class Owner
  attr_accessor :pets, :name

  @@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all<< self
    @name = name

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all= []
  end

  def self.count
    @@all.count
    # binding.pry
  end

  def species
    species = "human"
  end

  def say_species
    owners_species  = self.species
    "I am a #{owners_species}."
  end

  def pets
    @pets
  end

  def name
    @name
  end

  def buy_fish(fish)
    fish = Fish.new("Bubbles")
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new("Crookshanks")
    self.pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new("Snuffles")
    self.pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs][0].mood = "happy"
    #binding.pry
  end

  def play_with_cats
    pets[:cats][0].mood = "happy"
    #binding.pry
  end

  def feed_fish
    pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
