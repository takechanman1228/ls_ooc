class Test

  def call_m2(o)
    m2
  end

  private
  def m2()
    puts "m2"
  end

end





o1 = Test.new
o2 = Test.new

# 同じクラスからprivateメソッドの実行
o1.call_m2(o2)
