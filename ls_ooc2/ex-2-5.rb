require 'pp'
class A
  def m
    p "method m in class A"
  end
end
class B < A
  def n
    p "method n in class B"
  end
  def m
    pp self
    self.n()
    super()
  end
end

class C < B
  def n
    p "method n in class C"
  end
end

c = C.new()
c.m()
