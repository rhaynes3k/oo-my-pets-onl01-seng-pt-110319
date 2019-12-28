class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  def initialize(name, owner, mood= "nervous")
    @name = name
    @owner = Owner.new(owner.name)
    @mood = mood
    @@all << self
  end
  
  def self.all
    @@all
  end
end