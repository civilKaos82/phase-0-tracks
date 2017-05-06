#Release 0
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Add item_names to an array.
  # Add an empty hash.
  # Add loop to add items to empty hash.
  # Set default value to 0.
  # print the list to the console [can you use one of your other methods here?]
# output: Data type should be a hash with keys with values of 0.

# Method to add an item to a list
# input: list, item name, and optional quantity
# Steps: example hash_name[new item name] = new item value
# output: print the new hash w/ keys & values.

# Method to remove an item from the list
# input: input a key value to delete.
# steps:use .delete method to delete a key value pair.
# output: print a new hash minus deleted values

# Method to update the quantity of an item
# input: input item name first.  Input updated value.
# steps: example_hash[key]! = new value
# output:print a new hash with updated values.

# Method to print a list and make it look pretty
# input: Finalized hash.
# steps: puts the finalized hash.
# output: printed out hash.

#Release 1:
puts "
Welcome to ShppNgLst! Silicon Valley's newest startup with no vowels!!!

                           You got a list?

                         Is it for shopping?

                                Boom.

                             ShppNgLst!

Why carry a simple piece of paper when you can show off with your phone?

                             ShppNgLst."

initial_quantity = 0
shopping_list = {}

def list_additem()
  puts 'Type "done" when you\'ve finished adding to your list.'
  name_input = ""
  while name_input != "done"
    puts "Enter an item for the ShppNgLst."
    name_input = gets.chomp
    break if name_input == "done"
    puts "Enter a quantity for that ShppNgLst item."
    quantity_input = gets.chomp

    shopping_list[name_input] = quantity_input
  end
  puts shopping_list
end

def list_remitem(name_remov)
  puts 'Type "done" when you\'ve finished removing items from your list.'
  name_remov = ""

  while name_remov != "done"

    puts "Name an item to remove from your ShppNgLst."
    name_remov = gets.chomp
    break if name_remov == "done"

    shopping_list.delete(name_remov)
  end

  shopping_list.each{|key, value| p "You need to buy #{value} #{key}."}
end

def list_moditem(name_modif)
  puts 'Type "done" when you\'ve finished removing items from your list.'
  name_modif = ""

  while name_modif != "done"

    puts "Name an item to remove from your ShppNgLst."
    name_modif = gets.chomp
    break if name_modif == "done"

    shopping_list.delete(name_modif)
  end

  shopping_list.each{|key, value| p "You need to buy #{value} #{key}."}
end

puts "Let's begin with a new list."

#def item_delete(list_item)
#shopping_list = {
#    "carrots" => 2,
#    "onions" => 3,
#    "tomato" => 1
#  }

#p shopping_list
#shopping_list["carrots"] = 5
#p shopping_list
#shopping_list.delete("carrots")
#p shopping_list
#
#shopping_list.each{|key, value| p "You need to buy #{value} #{key}."}
