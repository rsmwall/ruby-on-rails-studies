# frozen_string_literal: true

require_relative 'account'

# class Bank
class Bank
  def initialize
    @accounts = []
  end

  def acc
    @accounts
  end

  # Bank Management

  def register(account)
    @accounts << account if search(account.number).nil?
  end

  def search(number)
    @accounts.each do |account|
      return account if account.number == number
    end
    nil
  end

  def search_index(number)
    index = -1
    @accounts.each do |account|
      index += 1
      return index if account.number == number
    end
    nil
  end

  def update(account)
    index = search_index(account.number)
    @accounts[index] = account unless index.nil? || index.negative?
  end

  def delete(number)
    @accounts.delete_at(search_index(number))
  end

  def count_accounts
    @accounts.count
  end

  def total_balance
    total = 0
    @accounts.each do |account|
      total += account.balance
    end
    total
  end

  def average_balance
    total_balance / count_accounts
  end

  # Account Management

  def deposit(number, value)
    account = search(number)
    account&.deposit(value)
  end

  def withdraw(number, value)
    account = search(number)
    account&.withdraw(value)
  end

  def transfer(number_origin, number_dest, value)
    account_origin = search(number_origin)
    account_dest = search(number_dest)
    account_origin&.transfer(account_dest, value)
  end
end
