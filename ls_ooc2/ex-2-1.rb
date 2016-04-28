class Human
  def initialize(name)
    @name = name
  end

  def profile
    puts "My name is #{@name}"
  end
end

class Student < Human
  def initialize(name,id)
    super(name)
    @id = id
  end
  def profile
    super()
    puts "My Student ID is #{@id}"
  end
end

s = Student.new("Jack", 100)
s.profile
