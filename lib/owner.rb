require 'pry'

class Owner

  attr_reader :name, :species
  attr_accessor :pets
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def say_species
    return "I am a human."
  end

  def name=(name)
    @name = name
  end

  def walk_dogs
    dogs = pets[:dogs]
    dogs.map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    cats = pets[:cats]
    cats.map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = pets[:fishes]
    fishes.map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, owners_pets|
      owners_pets.each {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    fishes, cats, dogs = nil
    pets.each do |species, owners_pets|
      if species == :fishes
        fishes = owners_pets.size
      elsif species == :cats
        cats = owners_pets.size
      elsif species == :dogs
        dogs = owners_pets.size
      end
    end
    return "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
