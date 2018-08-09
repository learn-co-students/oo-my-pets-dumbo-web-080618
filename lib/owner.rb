require 'pry'

class Owner
  # code goes here

  attr_reader :owner
  attr_accessor :name, :pets

  @@all = []

  def initialize(owner)
    @owner = owner
    @name = name
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    @@all << self
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

  def species
    @owner
  end

  def say_species
    "I am a #{owner}."
  end

  def name
    @name
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |name|
      name.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |name|
      name.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |name|
      name.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |k, v|
      v.each do |pet|
        pet.mood = "nervous"
      end
      v.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
