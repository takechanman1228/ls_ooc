class MyHash < Hash
  def ==(hash)
    if self.length != hash.length
      return false
    end
    hash.each{|key, value|
      if value.object_id != self[key].object_id
        return false
      end
    }
    return true
  end
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
