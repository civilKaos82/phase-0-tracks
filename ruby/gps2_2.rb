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


def create_list
  method_shopping_list = {}
  return method_shopping_list
end

def list_additem(shopping_items)
  shopping_list_insertion_hash = {}
  key_array = shopping_items.split(' ')
  initial_quantity = 1
  key_array.each do |key_insert|
    shopping_list_insertion_hash[key_insert] = initial_quantity
  end
  return shopping_list_insertion_hash
end

def list_remitem(shopping_list, shopping_items)
  key_removal_array = shopping_items.split(' ')
  key_removal_array.each do |key_remove|
    shopping_list.delete(key_remove)
  end
  return shopping_list
end

def list_moditem(shopping_list, shopping_items, item_mod_quantity)
  shopping_list.store(shopping_items, item_mod_quantity)
end

puts "Let's begin, shall we?
Would you like to create a (new) list, (add) items to your ShppNgLst, (remove)
items from your ShppNgLst, (modify) quantities of items on your ShppNgLst,
or would you just like us to (show) you your ShppNgLst?"
avail_action = ["new", "add", "remove", "modify", "show"]
user_action = ""

while user_action != "done"
  user_action = gets.chomp

  if user_action == avail_action[0]
    shopping_list = create_list
    p shopping_list

  elsif user_action == avail_action[1]
    puts "Enter items for the ShppNgLst. Provide a space between each item."
    insertion_hash = list_additem(gets.chomp)
    shopping_list.merge!(insertion_hash)

  elsif user_action == avail_action[2]
    puts "Enter items to be removed from the ShppNgLst. Provide a space between each item."
    shopping_list = list_remitem(shopping_list, gets.chomp)

  elsif user_action == avail_action[3]
    puts "Enter an item to modify on the ShppNgLst."
    shopping_items = gets.chomp
    puts "Enter the new quantity for #{shopping_items}."
    item_mod_quantity = gets.chomp.to_i
    shopping_list[shopping_items] = item_mod_quantity

  elsif user_action == avail_action[4]
    puts "You need to buy the following items:"
    shopping_list.each{|key, value| puts "#{value} #{key}."}

  else
  end
end
