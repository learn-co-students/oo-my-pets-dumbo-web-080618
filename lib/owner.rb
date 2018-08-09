require 'pry'

class Owner


attr_reader :species
attr_accessor :pets, :name

@@owners = []



  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
    @species = "human"
end

def self.count
  @@owners.count
end


#
def self.all
  @@owners
end

def self.reset_all
 @@owners = []
end

def say_species
  "I am a #{self.species}."
end

def name
  @name
end

def list_pets
  x = @pets[:fishes].length
  y = @pets[:dogs].length
  z = @pets[:cats].length
  "I have #{x} fish, #{y} dog(s), and #{z} cat(s)."
end


def buy_dog(name)
  pet = Dog.new(name)
  @pets[:dogs] << pet
end

def buy_cat(name)
  pet = Cat.new(name)
  @pets[:cats] << pet
end

def buy_fish(name)
  pet = Fish.new(name)
  @pets[:fishes] << pet
end

def sell_pets
  @pets.each do |pet, array|
    array.each do |mood|
      mood.mood = 'nervous'
  end
end
return @pets.clear
end

def walk_dogs
  @pets[:dogs].each do |mood|
    mood.mood = 'happy'
  end
end


def feed_fish
  @pets[:fishes].each do |food|
    food.mood = 'happy'
  end
end


def play_with_cats
  @pets[:cats].each do |play|
    play.mood = 'happy'
  end
end

# def feed_fish
#   .mood = 'happy'
# end
  # code goes here
end
