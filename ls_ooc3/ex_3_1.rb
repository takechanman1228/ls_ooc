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

  protected
  def m2()
    puts "m2"
  end

end

class Subtest < Test

end



o1 = Test.new
o2 = Test.new
o3 = Subtest.new

# 同じクラスからprotectedメソッドの実行
o1.call_m2(o2)
o1.call_self_m2(o2)
o1.call_o_m2(o2)

# サブクラスからprotectedメソッドの実行
o3.call_m2(o2)
o3.call_self_m2(o2)
o3.call_o_m2(o2)
