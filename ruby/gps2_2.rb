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
		puts "#{key}: #{quantity}"
	end
end


list = create_list("juice apples oranges")

#p add_item
add_item(list, "cookies", 2)
remove_item(list, "juice")
update_quantity(list, "apples", 5)
print_list(list)
p list

store_list = create_list("baseball bat hat")
p store_list

add_item(store_list, "Lemonade", 2)
add_item(store_list, "Tomatoes", 3)
add_item(store_list, "Onions", 1)
add_item(store_list, "Ice Cream", 4)

remove_item(store_list, "Lemonade")
update_quantity(store_list, "Ice Cream", 1)
print_list(store_list)

# What did you learn about pseudocode from working on this challenge?
#   It helps others to better understand your code and it has certain guidelines that should be followed.

# What are the tradeoffs of using arrays and hashes for this challenge?
#   For this challenge, it made more sense to use a hash because it's more readable to store things in a key and value sort of fashion.
#   Arrays would have been better if it were just strictly items without quantities but that wasn't the case for this challenge.

# What does a method return?
#   The method returns whatever is on the last thing called is unless you do an early return or break.

# What kind of things can you pass into methods as arguments?
#   You can pass strings, arrays, integers as arguments to methods and some others.

# How can you pass information between methods?
#   You can pass information between methods by using methods within other methods.  You can also have a method take a method that is set into a variable and pass it in that way.

# What concepts were solidified in this challenge, and what concepts are still confusing?
#   I have a better understanding of utilizing methods with other methods and how to pass information around.  I was mostly confused on how to best tackle this challenge and it was all explained along the way so I'm all set!

