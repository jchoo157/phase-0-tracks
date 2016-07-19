#Hash that will contain client information
client_details = {}

#Questions to get client information into the client_details hash above
puts "What is your name?"
client_details[:name] = gets.chomp

puts "How old are you?"
client_details[:age] = gets.chomp

puts "How many children do you have?"
client_details[:children] = gets.chomp

puts "What is your prefered decor theme?"
client_details[:decor_theme] = gets.chomp

#Displays the hash after all information has been given
p client_details

#Allows user to update any information
puts "If you would like to update anything, please enter the key name otherwise enter 'none'."
response = gets.chomp

if client_details.include?(response.to_sym)
	puts "What would you like to change it to?"
	client_details[response.to_sym] = gets.chomp
	puts "Here is you're updated information!"
	p client_details
else
	puts "Looks like you're good to go!"
end



