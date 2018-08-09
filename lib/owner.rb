require 'pry'

class Owner
  # code goes here
  @@all = []

  attr_accessor :name, :pets
  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end



  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
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

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end

  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |k, v|
      v.each do |attribute|
        attribute.mood = "nervous"
      end
      v.clear
    end
  end

  def list_pets
    # binding.pry
    cat_count = @pets[:cats].count
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count



    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end



end
