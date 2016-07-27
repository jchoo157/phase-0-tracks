# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create method that takes Parameter 
  # takes parameter and use split method to seperate items 
  # create a hash variable 
  # iterate through the array and pass into hash variable using .each 
  # set default quantity equal to 1 
  # print the list to the console [can you use one of your other methods here?]
# output: hash 

# variable list to store the hash

# Method to add an item to a list
# input: create method that takes item name and quantity  
# steps: push that item name and quantity into the hash variable 
# 
# output: updated hash 

# Method to remove an item from the list
# input: create method that removes item, takes item as parameter
# steps: remove item from list 
# output: updated hash 

# Method to update the quantity of an item
# input: create method that takes item name and quantity as parameter
# steps: once item and quantity is passed it will seach for item and update
# output: updated hash 

# Method to print a list and make it look pretty
# input: method that prints hash 
# steps: iterate through hash to print out each line with item and quantity
# output: current list looking pretty 


def create_list(items)
	current_items = items.split(' ')
	list = {}
	current_items.each do |item|
		list[item] = 1 
	end
	list 
end

def add_item(list, item, quantity)
	list[item] = quantity 
	list
end

def remove_item(list, item)
	list.delete(item)
	list
end

def update_quantity(list, item, quantity)
	list[item] = quantity
	list
end

def print_list(list)
	list.each do |key, quantity|
		puts "Item: #{key} Quantity: #{quantity} "
	end
end


list = create_list("juice apples oranges")

#p add_item
add_item(list, "cookies", 2)
remove_item(list, "juice")
update_quantity(list, "apples", 5)
print_list(list)
p list

list2 = create_list("baseball bat hat")
p list2 

add_item(list2, "Lemonade", 2)
add_item(list2, "Tomatoes", 3)
add_item(list2, "Onions", 1)
add_item(list2, "Ice Cream", 4)

remove_item(list2, "Lemonade")
update_quantity(list2, "Ice Cream", 1)
print_list(list2)


