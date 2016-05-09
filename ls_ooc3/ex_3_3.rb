class Test
  # privateメソッドはレシーバを指定できない　
  def call_private_method(o)
    private_method
  end

  private
  def private_method
    puts "succeeded in calling private method"
  end
end

o1 = Test.new
o2 = Test.new

# 同じオブジェクトでprivateメソッドの実行
o1.call_private_method(o1)
