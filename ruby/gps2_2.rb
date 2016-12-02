# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split on empty spaces
  # Create hash to sort items
  # Iterate through the array to push items as keys, 
  # set default quantity == 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash with item as keys, and quantities as values

def create_list(items)
  grocery_list = {}
  items.split(" ").each do |item|
    grocery_list[item] = 1
  end
  print_list(grocery_list)
  grocery_list
end

# Method to add an item to a list
# input: (grocery_list, item name and optional quantity)
# steps:
  # add item and quantity to grocery_list
# output: updated list

def add_item(grocery_list, item, quantity = 1)
  grocery_list[item] = quantity
  grocery_list
end

# Method to remove an item from the list
# input: the list, and the name of the item to remove
# steps:
# Find the item by name of item and delete.
# output: updated list

def delete_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end


# Method to update the quantity of an item
# input: the list, the item, and the new quantity
# steps:
  # find the item and reassign the value to the new quantity
# output: updated list

def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity
  grocery_list
end

# Method to print a list and make it look pretty
# input: grocery_list
# steps:
  # introduce the list
  # place each item and each quantity on their own line
# output: Prettified list

def print_list(grocery_list)
  puts "Here is the current list:"
  grocery_list.each do |item, quantity|
    puts "#{item}#{line_item(item.length)}#{quantity}"
  end
  puts ""
end

# Helper Method to standardize the length of each line
# input: item's character length 
# steps:
  # create a dot
  # 20 times minus item's character length, dot += "."
# output: length specific dot string

def line_item(num)
  dot = "."
  (20 - num).times { dot += "." }
  dot
end

#Driver code

list = "carrots apples cereal pizza"
grocery_list = create_list(list)
add_item(grocery_list, "beer", 6)
print_list(grocery_list)

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
print_list(grocery_list)

delete_item(grocery_list, "lemonade")
update_quantity(grocery_list, "ice cream", 1)
print_list(grocery_list)

