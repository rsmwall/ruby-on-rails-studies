class User
  @@user_account = 0
  def add(name)
    puts "User #{name} adicionado!"
    @@user_account += 1
    puts @@user_account
  end
end

fist_user = User.new
fist_user.add('Rafael')

second_user = User.new
second_user.add('Ana')