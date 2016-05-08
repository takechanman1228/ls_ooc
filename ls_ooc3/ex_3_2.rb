class Test

  def call_m2(o)
    m2
  end
  def call_self_m2(o)
    self.m2
  end
  def call_o_m2(o)
    o.m2
  end
end

class Test2
  protected
  def m2()
    puts "m2"
  end

end



o1 = Test.new
o2 = Test2.new
begin
  o1.call_m2(o2)
rescue => error
  puts error
end

begin
  o1.call_self_m2(o2)
rescue => error
  puts error
end

begin
  o1.call_o_m2(o2)
rescue => error
  puts error
end
