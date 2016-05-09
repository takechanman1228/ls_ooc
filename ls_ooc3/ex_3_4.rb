class Test
  def call_private_method(o)
    # privateメソッドはレシーバを指定できないので
    # 自身のもつオブジェクトしか実行することができない
    private_method

    begin
      # 異なるオブジェクトを実行することができない
      o.call_protected_method()
    rescue => error
      puts error
    end

  end

  private
  def private_method
    puts "succeeded in calling private method"
  end
end

o1 = Test.new
o2 = Test.new
o1.call_private_method(o2)
