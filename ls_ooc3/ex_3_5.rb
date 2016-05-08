class Company
  #給与振り込み
  def transfer(other)
  end
end

class Person
  #給与引き出し
  def withdraw(other, amount)
    puts "給与引き出し"
    other.withdraw(amount)
  end
end

class Bank
  @balance

  def initialize(amount)
    @balance = amount
  end

  protected
  def _amount
    @balance
  end

  public
  def show_balance
    puts self._amount
  end

  def deposit(amount)
    @balance += amount
    self.show_balance
  end

  def set_amount(amount)
    instance_variable_set(:@amount, amount)
    self.show_balance
  end


  def withdraw(amount)
    @balance -= amount
    self.show_balance
  end
end

ufj = Bank.new(10000)
ufj.show_balance
ufj.set_amount(7777)

alice = Person.new
alice.withdraw(ufj, 1000)
