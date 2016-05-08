module MM
  def hello
    puts "MM"
    super
  end
end

module M
  include MM
  def hello
    puts "M"
    super
  end
end

module NN
  def hello
    puts "NN"
    super
  end
end

module N
  include NN
  def hello
    puts "N"
    super
  end
end

class A
  def hello
    puts "A"
  end
end

class B < A
  include N
  def hello
    puts "B"
    super
  end
end

class C < B
  include M
  def hello
    puts "C"
    super
  end
end

object = C.new
object.hello

p C.ancestors
