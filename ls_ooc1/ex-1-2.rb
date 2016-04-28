class Teacher
  def say
    puts "I am a human"
  end
  def greet_teacher
    puts "I am a teacher"
  end
end

class Student
  def say
    puts "I am a human"
  end
  def greet_student
    puts "I am a student"
  end
end

obj1 = Teacher.new
obj1.say
obj1.greet_teacher

obj2 = Student.new
obj2.say
obj2.greet_student
