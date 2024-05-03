# frozen_string_literal: true

# class Account
class Account
  attr_reader :name, :balance

  def initialize(name, balance)
    @name = name
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

acc = Account.new('Rafael', 1500)
acc2 = Account.new('Ana', 1000)

acc.transfer(acc2, 5000)
puts acc.name, acc.balance
puts acc2.name, acc2.balance
