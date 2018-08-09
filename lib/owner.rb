require 'pry'
class Owner

@@owners = []
  attr_reader :species
  attr_accessor :pets, :owner, :name

  def initialize(owner)
    @owner = owner
    @@owners << self
    @species = 'human'
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  def self.all
    @@owners
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    Owner.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |k, v|
      v.each do |l|
      l.mood = "nervous"
    end
    end
    pets.clear
  end

  def list_pets
    d_count = pets[:dogs].count
    f_count = pets[:fishes].count
    c_count = pets[:cats].count

    "I have #{f_count} fish, #{d_count} dog(s), and #{c_count} cat(s)."
  end


end
