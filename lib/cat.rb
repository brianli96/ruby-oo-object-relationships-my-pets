class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@cats = []

  def self.all
    @@cats
  end

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@cats << self
  end

end