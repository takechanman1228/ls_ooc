class Person
  @name
  @age
  @score
  def initialize(name, age)
    @name = name
    @age = age
    @score = rand(0..100)
  end

  def comfirm_age(other_person)
    if @age > other_person.get_age
    puts "#{get_name} is #{get_age} years old."
    puts "#{other_person.get_name} is #{other_person.get_age} years old."
    end
  end

  def check_my_score
    puts "#{self.get_name}'s score is #{get_score}" #private メソッドへのアクセス
  end

  def check_other_score(other)
    begin
      # privateメソッドはレシーバを明示して書くことが許されない
      # (他オブジェクトのprivateメソッドを呼び出せない)
      other.get_score
    rescue => error
      puts error.message
    end
  end

  def get_name
    @name
  end

  protected #Personクラスから生成されたインスタンスならアクセス可能
  def get_age
    @age
  end

  private #同じオブジェクトからしかアクセス不可
  def get_score
    @score
  end
end

alice = Person.new("Alice", 30)
bob = Person.new("Bob", 25)
alice.comfirm_age(bob)
alice.check_my_score
alice.check_other_score(bob)
