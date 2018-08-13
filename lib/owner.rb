require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  OWNERS = []

  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    OWNERS.clear
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.count
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs][0].mood = 'happy'
  end

  def play_with_cats
    self.pets[:cats][0].mood = 'happy'
  end

  def feed_fish
    self.pets[:fishes][0].mood = 'happy'
  end

  def sell_pets
    pets.each do |species, data|
      data.each do |type|
        type.mood = 'nervous'
      end
      data.clear
    end
  end

  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
