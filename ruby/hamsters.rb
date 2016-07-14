puts "what is the hamsters name?"
 hamstername = gets.chomp
 
puts "How loud is the hamster?"
 volume = gets.chomp.to_i
 
puts "What color is the hamster?"
 fur_color = gets.chomp
 
puts "was the hamster a good candidate for adoption?"
 adoption = gets.chomp
 
puts "How old is the hamster?"
 age = gets.chomp
 
if age == ""
 puts "nil"
end