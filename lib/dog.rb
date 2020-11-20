class Dog
  attr_accessor :owner, :mood
  attr_reader :name

  @@dogs = []

  def self.all
    @@dogs
  end

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
  end

end