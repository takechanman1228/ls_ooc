class Array

  def ==(array)
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

a = Array.new(["one", "two", "three"])
b = Array.new(["one", "two", "three"])
p a == b

a = Array.new([1, 2, 3])
b = Array.new([1, 2, 3])
p a == b
