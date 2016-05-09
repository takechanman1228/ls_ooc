class Test
  protected
  def protected_method(o)
    puts "succeeded in calling protected method"
  end
end

class Test2
  def call_protected_method(o)
    o.protected_method
  end
end

o1 = Test.new
o2 = Test2.new

begin
  o2.call_protected_method(o1)
rescue => error
  puts error
end
