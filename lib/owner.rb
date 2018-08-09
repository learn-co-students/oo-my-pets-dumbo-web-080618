require 'pry'

class Owner
  attr_accessor :name, :pets
  @@all = []

  def initialize (name)
    @name = name
    @pets = {
            fishes:[],
            dogs: [],
            cats: []
           }
    @@all << self

  end

  def species
    @species = "human"
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    pets[:dogs][-1].mood  = "happy"
  end

  def play_with_cats
    pets[:cats][-1].mood = "happy"
  end

  def feed_fish
    pets[:fishes][-1].mood = "happy"
  end

  def sell_pets
    pets[:dogs].each do  |o| o.mood = "nervous" end
    pets[:cats].each do  |o| o.mood = "nervous" end
    pets[:fishes].each do  |o| o.mood = "nervous" end
      self.pets = []
  end

  def list_pets
    num_dogs = pets[:dogs].count
    num_cats = pets[:cats].count
    num_fishes = pets[:fishes].count
    "I have #{num_fishes} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

end
