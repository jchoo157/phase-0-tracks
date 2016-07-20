#Delete numbers less than 5

my_number_list = [1,2,3,4,5,6,7,8,9,10]


my_number_list.delete_if do |number|
	number > 5 
end

puts my_number_list


#Keep numbers less than 5

my_number_list = [1,2,3,4,5,6,7,8,9,10]
new_number_list = []

my_number_list.each do |number|
	if number < 5
		new_number_list << number
	end 
end

puts new_number_list


#Selects numbers less than 5

my_number_list = [1,2,3,4,5,6,7,8,9,10]

my_number_list.select do |number|
	if number < 5
		number
	end
end


#Deletes numbers until condition is false

my_number_list = [1,2,3,4,5,6,7,8,9,10]

my_number_list.delete_if do |number|
	number < 8
end