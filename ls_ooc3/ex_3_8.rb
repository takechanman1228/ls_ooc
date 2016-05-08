module HasName
  def > (other)
    if self.name < other.name
      return self.name
    else
      return other.name
    end
  end

  def initial
    return @name[0, 1]
  end

  def capital_name
    return @name.upcase
  end
end

class Person
  include HasName
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

class City
  include HasName
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end

alice = Person.new("Alice")
bob = Person.new("Bob")
puts alice.initial
puts alice.capital_name
puts alice > bob

kyoto = City.new("Kyoto")
tokyo = City.new("Tokyo")
puts kyoto.initial
puts kyoto.capital_name
puts kyoto > tokyo
