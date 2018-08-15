require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0
    def initialize(name) # onlt wanted name of the owner
    @species = "human" #species initializes with a species to eq"human"
    @name = name
    @@all << self #keeps track of the owners that have been created
    @@count += 1 # increasing
    @pets = {
    :fishes => [],
    :dogs => [],
    :cats => []
    }
  end
  def self.all
    @@all
  end
  def self.count
    @@count #can count how many owners have been created
  end
  def self.reset_all
    @@count = 0 #can reset the owners that have been created. to zero!!1
  end
  def say_species
    "I am a #{@species}."
    # binding.pry
  end
  def pets
    @pets
  end
  def buy_fish(name) #if we pass an argument on the method the same needs to be done below
    new_fish = Fish.new(name) #set it to variable so that its easier to call upon this
    @pets[:fishes] << new_fish #this is saying every time we creat a new pet we are going to shovel it into our array initialized in :fish array of @pets hash
  end
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
def walk_dogs
  @pets[:dogs].each{ |dog| dog.mood = "happy"} #single equal is what we want to set our variable to, while double equal is a boolean used in condotionals
end
def play_with_cats
  @pets[:cats].each{|cat| cat.mood = "happy"}
end
def feed_fish
  @pets[:fishes].each{|fish| fish.mood = "happy"}
end
def sell_pets
pets_mood = @pets.each{|pets, types| types.each{|feeling| feeling.mood = "nervous"}} #some moods were happy bcuz of the methods above that changed their mood to happy so now we must set all to nervous
  pets.clear
# pets_mood<- no need to re-wrte this since ruby returns the last line we enter
end
def list_pets
string = "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
# binding.pry
end
end
