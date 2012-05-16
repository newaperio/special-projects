# Before

class Fruit1
  attr_accessor :color, :shape, :seeds, :bites
  
  def initialize
    @bites = 5
  end
  
  def eat!
    @bites = [@bites - 1, 0].max
  end
  
  def fruit?
    true
  end
  
  def seeded?
    seeds === true
  end
end

class Apple1 < Fruit1
  def initialize
    @color = "red"
    @shape = "round"
    @seeds = true
    super
  end
end

# After

class Fruit2
  attr_accessor :bites
  
  def initialize
    @bites = 5
  end
  
  def self.attributes=(obj)
    @@attributes = obj
  end
  
  def self.attributes
    @@attributes
  end
  
  def self.attribute(type, value)
    @@attributes ||= Hash.new
    @@attributes[type] = value
    define_method type do
      if value.class == TrueClass || FalseClass
        value
      else
        value.to_s
      end
    end
  end
  
  def eat!
    @bites = [@bites - 1, 0].max
  end
  
  def fruit?
    true
  end
  
  def seeded?
    self.seeds === true
  end
end

class Apple2 < Fruit2
  attribute :color, :red
  attribute :shape, :round
  attribute :seeds, true
end