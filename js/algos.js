// Create a FUNCTION that takes an ARRAY of words
// Create an empty STRING VARIABLE named longest
//   ITERATE through ARRAY
//   IF current ARRAY item length is greater than the VARIABLE longest, set it equal to the current item.
// Once ITERATION is complete, print out the VARIABLE longest

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


// Create a FUNCTION that takes two HASH TABLE PARAMETERS
// Iterate through HASH TABLES
//  IF there are any key value matches, return true
//  ELSE return false if no key value matches are found

// FUNCTION that takes 2 OBJECTS and finds returns true if any key value matches occur
function key_value_match(object1, object2) {
	var keys = Object.keys(object1);
	var keys2 = Object.keys(object2);
	for (var i = 0; keys.length > i; i++) {
		if (object1[keys[i]] == object2[keys[i]]) {
			return console.log(true)
		}
	}
	console.log(false)
}

// Create a FUNCTION that takes a takes a INTEGER
// Create VARIABLE and set it to equal the alphabet from a-z
// Create a VARIABLE named result that will be used to store the final results
//   Set a variable that will randomly generate a number from 1-10.  This will be used to determine the length of a word we create.
//   ITERATE through the alphabet VARIABLE and grabs X amount of random letters, X being the randomly generated number.
//   Once the random letters are grabbed, PUSH it into the result VARIABLE
// Return the result

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
key_value_match({name: "Lemar", age: 2, race: "Asian"}, {name: "Lex", age: 51, gender: "Male"})

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

