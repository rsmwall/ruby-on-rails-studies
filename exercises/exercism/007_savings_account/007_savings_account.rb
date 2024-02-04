# frozen_string_literal: true

# SavingsAccount module
module SavingsAccount
  def self.interest_rate(balance)
    if balance.negative? then 3.213
    elsif balance < 1000 then 0.5
    elsif balance < 5000 then 1.621
    elsif balance >= 5000 then 2.475
    end
  end

  def self.annual_balance_update(balance)
    balance + balance * (interest_rate(balance) / 100)
  end

  def self.years_before_desired_balance(balance, desired_balance)
    count = 0
    while balance < desired_balance
      balance = annual_balance_update(balance)
      count += 1
    end
    count
  end
end

puts SavingsAccount.annual_balance_update(898_124_017.826_243_404_425)
