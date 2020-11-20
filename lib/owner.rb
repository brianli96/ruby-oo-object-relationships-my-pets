class Owner
  attr_reader :name, :species

  @@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(cat_name)
    name = Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    name = Dog.new(dog_name, self)
  end

  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end
  end

    def feed_cats
      self.cats.each do |cat|
        cat.mood = "happy"
      end
    end

    def sell_pets
      all_pets = self.dogs.concat(self.cats)
      all_pets.each do |pet|
        pet.mood = "nervous"
      end
    end
end