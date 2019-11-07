class BankAccount
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end
  
  def deposit(money)
    self.balance += money
  end
  
  def display_balance
    self.class.balance
  end
  
  def valid?
    self.status == 'open' && self.balance > 0
  end
  
  def close_account
    self.status = 'close'
  end
end
