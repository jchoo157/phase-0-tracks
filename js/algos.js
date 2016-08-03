// FUNCTION that takes an ARRAY as a PARAMETER and finds the longest STRING
function longest_word(words) {
	var longest = "";
	// Set i as a VARIABLE to iterate while i is less than phrases length and iterates by 1
	for (var i = 0; i < words.length; i++) {
		if (words[i].length > longest.length) {
			longest = words[i];
		}
	}
	console.log(longest)
}

// FUNCTION that takes 2 OBJECTS and finds returns true if any key value matches occur
function key_value_match(object1, object2) {
	if (object1.name == object2.name || object1.age == object2.age) {
		console.log(true);
	}
	else {
		console.log(false);
	}
}

// Takes an integer for length and builds and returns an array of strings of the given length
function random_letters(number) {
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var result = [];
	for (var i = 0; i < number; i++) {
		// Generates a random number from 1 to 10
		var random_number = Math.floor((Math.random() * 10) + 1);
		var rand_word = "";
		for (var i2 = 0; i2 < random_number; i2++) {
			// This will add a random letter from the alphabet VARIABLE to rand_word
			rand_word += alphabet[Math.floor(Math.random() * alphabet.length)];
		}
		result.push(rand_word)
	}
	return result
}

// Driver code
longest_word(["long phrase","longest phrase","longer phrase"])
longest_word(["a", "aa", "aaa", "aaaaa", "aa", "a"])
longest_word(["hello", "hi", "hey", "welcome", "hola"])

console.log("-------------")

key_value_match({name: "Steven", age: 54}, {name: "Tamir", age: 54})
key_value_match({name: "Todd", age: 20}, {name: "Tam", age: 30})
key_value_match({name: "Lemar", age: 33}, {name: "Lemar", age: 51})

console.log("-------------")

random_letters(1)
random_letters(2)
random_letters(3)
random_letters(8)

console.log("--------------")

// Generates an array, prints the array, feeds the array to 
// your "longest word" function, and prints the result.
for (var i = 0; i < 10; i++) {
	var rand_num = Math.floor((Math.random() * 10) + 1);
	var word_collection = random_letters(rand_num);
	console.log(word_collection);
	console.log("Longest Word:")
	longest_word(word_collection);
	console.log("-------------")
	console.log()
}

