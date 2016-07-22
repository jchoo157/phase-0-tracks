#Swaps first and last name and uses other methods to convert each letter properly
def alias_manager(name)
  split_name = name.split(' ')
  swap_name = (split_name[0], split_name[1] = split_name[1], split_name[0])
  vowels = %w{a e i o u}

  swap_name.map do |n|
	n.split('').map do |letter|
	  if vowels.include?(letter.downcase)
	    next_vowel(letter.downcase)
	  else
	    next_consonant(letter.downcase)
	  end
	end.join('').capitalize
  end.join(' ')

end

#Changes a vowel to the next vowel
def next_vowel(vowel)
  vowels = %w{a e i o u}
  if vowel == 'u'
  	vowels[0]
  else
  	vowels[vowels.index(vowel) + 1]
  end
end

#Changes a consonant to the next consonant
def next_consonant(consonant)
  vowels = %w{a e i o u}
  if vowels.include?(consonant.next)
    consonant.next.next
  else
    consonant.next
  end
end

p alias_manager("Felicia Torres")
p alias_manager("aeiou bdf")

#Asks user to enter first and last name.  Get any amount of names converted to an alias.
name_storage = []
loop do
  puts "Please enter your first and last name.  Type 'quit' to exit"
  name = gets.chomp

  if name == "quit"
    puts "Exiting program"
    break
  else
    puts "Your new name is #{alias_manager(name)}"
    name_storage << [name, alias_manager(name)]
  end
end

#Tells the user who the alias actually is
name_storage.each do |n|
  puts "#{n[1]} is actually #{n[0]}"
end
