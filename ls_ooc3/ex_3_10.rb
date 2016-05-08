module MyEnumerable
  def ==(x)
    if self.length != x.length
      return false
    end
    if self.class == MyHash and x.class == MyHash
      x.each{|key, value|
        if value.object_id != self[key].object_id
          return false
        end
      }
    elsif self.class == MyArray and x.class == MyArray
      x.each_with_index {|item, idx|
        if self[idx].object_id != item.object_id
          return false
        end
      }
    else
      return false
    end
    return true
  end
end

class MyHash < Hash
  include MyEnumerable
end


class MyArray < Array
  include MyEnumerable
end


h1 = MyHash[{"one" => 1, "two" => 2}]
h2 = MyHash[{"one" => 1, "two" => 2}]
puts h1 == h2

h1 = MyHash[{:one => 1, :two => 2}]
h2 = MyHash[{:one => 1, :two => 2}]
puts h1 == h2

h1 = MyHash[{:one => "1", :two => "2"}]
h2 = MyHash[{:one => "1", :two => "2"}]
puts h1 == h2

h1 = MyHash[{:two => 2, :one => 1}]
h2 = MyHash[{:one => 1, :two => 2}]
puts h1 == h2

a = MyArray.new(["one", "two", "three"])
b = MyArray.new(["one", "two", "three"])
p a == b

a = MyArray.new([:one, :two, :three])
b = MyArray.new([:one, :two, :three])
p a == b
