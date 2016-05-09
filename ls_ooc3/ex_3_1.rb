class Test
  def call_protected_method(o)
    o.protected_method
  end

  protected
  def protected_method()
    puts "succeeded in calling protected method"
  end
end

class Subtest < Test
  def call_protected_method_from_subclass(o)
    o.protected_method
  end
end

o1 = Test.new
o2 = Test.new
o3 = Subtest.new

# 同じクラスからprotectedメソッドの実行
o2.call_protected_method(o1)

# サブクラスからprotectedメソッドの実行
o3.call_protected_method(o1)
o3.call_protected_method_from_subclass(o1)
