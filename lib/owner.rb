require 'pry'

class Owner

  attr_accessor :pets, :name #:owner
  attr_reader :species

  #@@count = 0
  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
    #@@count += 1
    #binding.pry
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    #owner.pets[:fishes].count
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
   @pets.collect do |species, instances|
     if species == :cats
       instances.each do |cat|
         cat.mood = "happy"
       end
     end
   end
 end

 def feed_fish
   @pets.collect do |species, instances|
     if species == :fishes
       instances.each do |fish|
         fish.mood = "happy"
       end
     end
   end
 end

 def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    num_fish = @pets[:fishes].size
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

end
