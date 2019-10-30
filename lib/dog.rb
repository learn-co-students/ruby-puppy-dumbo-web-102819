class Dog

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name

  def initialize (dog_name)
    @name = dog_name
    save
  end

  def self.clear_all
    @@all=[]
  end

  def self.print_all
    @@all.each do
      |doggy|
      puts doggy.name
    end
  end

  def save
    @@all << self
  end

end
