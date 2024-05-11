# frozen_string_literal: true

# class Account
class Account
  attr_reader :number, :balance

  def initialize(number, balance)
    @number = number
    @balance = balance
  end

  def deposit(value)
    @balance += value
  end

  def withdraw(value)
    return false if (@balance - value).negative?

    @balance -= value
  end

  def transfer(account_dest, value)
    return false unless withdraw(value)

    account_dest.deposit(value)
  end
end

# class Savings
class Savings < Account
  attr_reader :interest_tax
  
  def initialize(number, balance, interest_tax)
    super(number, balance)
    @interest_tax = interest_tax
  end

  def yield_interest
    deposit(@balance * (@interest_tax / 100))
  end
end
