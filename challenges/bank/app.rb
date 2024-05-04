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
      7. Statistics
      0. Exit
    END_MENU
  end

  def menu
    loop do
      system('clear')
      puts "Welcome\n\n"
      puts @menu
      print "\nEnter an option\n> "
      option = gets.chomp.to_i
      break unless option != 0
    end
  end
end

app = App.new
app.menu

# acc = Account.new('1111', 1500)
# acc2 = Account.new('2222', 1000)
# acc3 = Account.new('3333', 1000)
# bk = Bank.new

# bk.register(acc)
# bk.register(acc2)

# puts bk.acc[0].balance
# puts bk.acc[1].balance
# bk.transfer('1111', '2222', 200)
# puts bk.acc[0].balance
# puts bk.acc[1].balance
# puts bk.register(acc3)
# puts bk.count_accounts
# puts bk.total_balance
# puts bk.average_balance
