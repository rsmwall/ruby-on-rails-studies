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
  attr_reader :interest_rate

  def initialize(number, balance, interest_rate)
    super(number, balance)
    @interest_rate = interest_rate
  end

  def yield_interest
    deposit(@balance * (@interest_rate / 100))
  end
end

# class TaxAccount
class TaxAccount < Account
  attr_reader :discount_rate

  def initialize(discount_rate)
    super(number, balance)
    @discount_rate = discount_rate
  end

  def withdraw(value)
    return false if (@balance - value).negative?

    discount_value = @balance * @discount_rate / 100
    super.withdraw(value + discount_value)
  end
end
