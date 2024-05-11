# frozen_string_literal: true

require_relative 'account'
require_relative 'bank'

# class App
class App
  def initialize
    @bank = Bank.new
    @menu = <<~END_MENU
      1. Register     2. Search     3. Withdraw
      4. Deposit      5. Delete     6. Transfer
      7. Statistics   8. Yield Interest
      0. Exit
    END_MENU
  end

  def menu
    system('clear')
    puts "> RafaBank\n\n"
    puts @menu
    print "\nEnter an option\n> "
    option = gets.chomp.to_i

    action(option)
  end

  def action(option)
    case option
    when 1 then register
    when 2 then search
    when 3 then withdraw
    when 4 then deposit
    when 5 then delete_acc
    when 6 then transfer
    when 7 then statistics
    when 8 then yield_interest
    end
  end

  def enter_key
    puts "\nPress Enter to return to the menu..."
    key = gets
    menu if key == "\n"
  end

  def register
    system('clear')
    puts "> Register Account\n\n"
    print "Enter the account number:\n> "
    number = gets.chomp

    print "This is a savings account? (y/n):\n> "
    option = gets.chomp

    if option.downcase == 'y'
      print "Interest tax:\n> "
      tax = gets.chomp
      account = Savings.new(number, 0, tax)
    else
      account = Account.new(number, 0)
    end

    @bank.register(account)

    system('clear')
    puts 'Account registered successfully!'
    enter_key
  end

  def search
    system('clear')
    puts "> Search Account\n\n"
    print "Enter the account number:\n> "
    number = gets.chomp

    system('clear')
    account = @bank.search(number)
    search_result(account)
  end

  def search_result(account)
    if account.nil?
      puts 'Account not found!'
    else
      print "Account found!\n\n"
      puts account.instance_of?(Savings) ? "Savings Account\n" : "Standard Account\n"
      puts "\nNumber: #{account.number}"
      puts "Balance: #{account.balance}"
      puts "Interest tax: #{account.interest_tax}" if account.instance_of?(Savings)
    end
    enter_key
  end

  def withdraw
    system('clear')
    puts "> Withdraw\n\n"
    print "Enter the account number:\n> "
    number = gets.chomp
    print "\nEnter the value:\n> "
    value = gets.chomp.to_f

    @bank.withdraw(number, value)

    system('clear')
    enter_key
  end

  def deposit
    system('clear')
    puts "> Deposit\n\n"
    print "Enter the account number:\n> "
    number = gets.chomp
    print "\nEnter the value:\n> "
    value = gets.chomp.to_f

    @bank.deposit(number, value)

    system('clear')
    enter_key
  end

  def delete_acc
    system('clear')
    puts "> Delete Account\n\n"
    print "Enter the account number:\n> "
    number = gets.chomp

    @bank.delete(number)

    system('clear')
    puts 'Account deleted successfully!'
    enter_key
  end

  def transfer
    system('clear')
    puts "> Transfer\n\n"
    print "Enter the origin account number:\n> "
    number_origin = gets.chomp
    print "\nEnter the destination account number:\n> "
    number_dest = gets.chomp
    print "Enter the value:\n> "
    value = gets.chomp.to_f

    @bank.transfer(number_origin, number_dest, value)

    system('clear')
    enter_key
  end

  def statistics
    system('clear')
    puts "> Statistics\n\n"
    puts "Number of accounts: #{@bank.count_accounts}"
    puts "Total balance amount: #{@bank.total_balance}"
    puts "Balance average: #{@bank.average_balance}"

    enter_key
  end

  def yield_interest
    system('clear')
    puts "> Yield Interest\n\n"
    print "Enter the account number:\n> "
    number = gets.chomp

    @bank.yield_interest(number)

    system('clear')
    puts 'Successful operation!'
    enter_key
  end
end

app = App.new
app.menu
