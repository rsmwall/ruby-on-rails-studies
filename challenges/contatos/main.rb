# frozen_string_literal: true

class Contact
  attr_reader :id, :name, :phone

  def initialize(id, name, phone)
    @id = id
    @name = name
    @phone = phone
  end
end

class App
  def menu
    puts '===== contacts ====='
    puts "\nnumber of contacts = 0"
    puts "\n1. add contacts\n2. delete contacts\n3. show contacts\n4. search contacts\n5. update contacts\n\n6. exit"
    puts "\nOption:"
    selected_option = gets.chomp.to_i
    option(selected_option)
  end

  def option(selected)
    option = selected

    case option
    when 1 then add_contacts
    when 2 then delete_contacts
    when 3 then show_contacts
    when 4 then search_contacts
    when 5 then update_contacts
    when 6 then puts 'Exiting...'
    else
      puts 'Invalid option. Try again!'
    end
  end
end

app = App.new
app.menu

