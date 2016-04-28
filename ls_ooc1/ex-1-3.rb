class Parent
  def my_method()
      print "parent"
  end
end


class Child < Parent
  def my_method()
    print "child"
  end
end

object = Child.new()
object.my_method
