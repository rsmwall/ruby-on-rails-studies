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
