class Person
  # クラス変数
  @@population = 0
  def initialize
    @@population += 1
  end

  # クラスメソッド
  def self.population
    @@population
  end
  # クラスメソッド
  def Person.set_population(num)
    @@population = num
  end

  #通常のメソッド
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
