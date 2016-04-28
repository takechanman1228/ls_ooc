class Person
  def say
    puts "I am a human"
  end
end

class Teacher < Person
  def greet
    puts "I am a teacher"
  end
end

class Student < Person
  def greet
    puts "I am a student"
  end
end

obj1 = Teacher.new
obj1.greet
obj1.say

obj2 = Student.new
obj2.greet
obj2.say
