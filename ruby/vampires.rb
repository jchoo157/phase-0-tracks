puts "How many employees will be processed?"
number_of_employees = gets.chomp

idx = 0
while idx < number_of_employees.to_i
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp

	puts "What year were you born?"
	year = gets.chomp

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	want_bread = gets.chomp

	puts "Would you like to enroll in the company's health insurance?"
	want_insurance = gets.chomp

	allergies = []
	puts "Type your allergies one at a time.  Type done when finished."
	until allergies.include?("done")
		allergy = gets.chomp
		allergies << allergy
		if allergy == "sunshine"
			break
		end
	end

	if (name == "Drake Cula" || name == "Tu Fang")
		puts "Definitely a vampire."
	elsif allergies.include?("sunshine")
		puts "Probably a vampire."
	elsif (age.to_i == Time.now.year - year.to_i) && (want_bread == "yes") && (want_insurance == "yes")
		puts "Probably not a vampire."
	elsif (age.to_i != Time.now.year - year.to_i) && (want_bread == "no") && (want_insurance == "")
		puts "Probably a vampire."
	elsif (age.to_i != Time.now.year - year.to_i) && (want_bread == "no") && (want_insurance == "no")
		puts "Almost certainly a vampire."
	else
		puts "Results inconclusive."
	end

	idx += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."