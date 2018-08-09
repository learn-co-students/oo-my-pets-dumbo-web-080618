require 'pry'
class Owner
  attr_reader  :species
  attr_accessor :name, :pets, :cat, :dog, :fish
  @@owners = []
  #@@owners.length ## count owner array
  #@@owners.clear  ## reset the array to 0 of all owners

  def initialize(name)
    @name = name
    @species = 'human'
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end

  def self.all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |obj|
      obj.mood = 'happy'
    end
  end

  def play_with_cats
    self.pets[:cats].each do |obj|
      obj.mood = 'happy'
    end
  end

  def feed_fish
    self.pets[:fishes].each do |obj|
      obj.mood = 'happy'
    end
  end

  def sell_pets
    self.pets.each do |pet_name_key, pet_array|
      pet_array.each do |pet|
        pet.mood = 'nervous'
      end
      pet_array.clear
    end
  end

  def list_pets
      return "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
