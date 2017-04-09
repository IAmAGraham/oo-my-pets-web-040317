class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {cats: [], dogs: [], fishes: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat

  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    pets[:dogs] << dog

  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood="happy"}

  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    number_of_fishes = pets[:fishes].length
    number_of_dogs = pets[:dogs].length
    number_of_cats = pets[:cats].length
    "I have #{number_of_fishes} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end


end
