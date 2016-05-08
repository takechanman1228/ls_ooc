class Person
  @@population = 0
  def initialize
    @@population += 1
  end

  def self.population
    @@population
  end

  def self.set_population(num)
    @@population = num
  end

  def die
    @@population -= 1
  end
end

alice = Person.new
bob = Person.new
puts Person.population

Person.set_population(5)
puts Person.population

alice.die
puts Person.population
