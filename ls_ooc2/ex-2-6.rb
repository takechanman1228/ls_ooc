class MyArray < Array

  def ==(array)
    if self.length != array.length
      return false
    end
    array.each_with_index {|item, idx|
      if self[idx].object_id != item.object_id
        return false
      end
    }
    return true
  end
end

a = Array.new(["one", "two", "three"])
b = Array.new(["one", "two", "three"])
p a == b

a = MyArray.new(["one", "two", "three"])
b = MyArray.new(["one", "two", "three"])
p a == b

a = MyArray.new([1, 2, 3])
b = MyArray.new([1, 2, 3])
p a == b
