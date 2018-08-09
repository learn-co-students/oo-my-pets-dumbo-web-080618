require 'pry'
require_relative 'animal.rb'
require_relative 'fish.rb'
require_relative 'cat.rb'
require_relative 'dog.rb'
class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def self.all  
    @@all
  end

  def self.reset_all  
    @@all = []
  end

  def self.count 
    @@all.size
  end

  def initialize(species)
    @species = species
    @pets = {
      :dogs => [],
      :cats => [],
      :fishes => []
    }
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def pets 
    @pets
  end

  def buy_animal(type_of, animal_name)
    animal = nil
    case type_of
    when :dogs
      animal = Dog.new(animal_name)
    when :fishes
      animal = Fish.new(animal_name)
    when :cats
      animal = Cat.new(animal_name)
    else
      "Sorry"
    end
    @pets[type_of].push(animal)
    animal
  end

  def buy_fish(name)
    # buy_animal(:fishes, name)
    buy_animal(:fishes, name)
  end

  def buy_dog(name)
    buy_animal(:dogs, name)
  end

  def buy_cat(name)
    buy_animal(:cats, name)
  end

  def change_all_animal_mood (animal_type, mood)
    @pets[animal_type].each{|creature|
    creature.mood = mood}
  end

  def walk_dogs
    change_all_animal_mood(:dogs, 'happy')
  end

  def play_with_cats
    change_all_animal_mood(:cats, 'happy')
  end

  def feed_fish
    change_all_animal_mood(:fishes, 'happy')
  end

  def sell_pets
    change_all_animal_mood(:dogs, 'nervous')
    change_all_animal_mood(:cats, 'nervous')
    change_all_animal_mood(:fishes, 'nervous')
    @pets = {
      :dogs => [],
      :cats => [],
      :fishes => []
    }
  end
  def list_pets
    dog_count = @pets[:dogs].count 
    cat_count = @pets[:cats].count 
    fish_count = @pets[:fishes].count 
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end