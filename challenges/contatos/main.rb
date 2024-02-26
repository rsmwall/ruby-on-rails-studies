# frozen_string_literal: true

class Contact
  attr_reader :name, :phone

  def initialize(name, phone)
    @name = name
    @phone = phone
  end
end

class ContactList
  def initialize
    @list = []
  end

  def add_contacts
    puts '===== contacts ====='
    print "\nName: "
    name = gets.chomp
    print "Phone: "
    phone = gets.chomp

    new_contact = Contact.new(name, phone)
    @list.push(new_contact)
  end
end

class App
  def initialize
    @clist = ContactList.new
  end

  def menu
    puts '===== contacts ====='
    puts "\nnumber of contacts = 0"
    puts "\n1. add contacts\n2. delete contacts\n3. show contacts\n4. search contacts\n5. update contacts\n\n6. exit"
    puts "\noption:"
    selected_option = gets.chomp.to_i
    option(selected_option)
  end

  def option(selected)
    option = selected

    case option
    when 1 then @clist.add_contacts
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

