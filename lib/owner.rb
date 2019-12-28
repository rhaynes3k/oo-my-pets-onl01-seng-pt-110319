require 'pry'
class Owner
  attr_accessor :cats
  attr_reader :species
  @@all = []
  def initialize(name,species="human")
    @name = name
    @species = species
    @@all << self
  end
  
  def name
    @name
  end
  
  def say_species
    "I am a human."
    #binding.pry
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cats.all.select{|c|c.owner == self}
  end
end