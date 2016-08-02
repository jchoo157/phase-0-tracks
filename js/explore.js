// FUNCTION that reverses a word by iterating through each 
// letter from end to start in a VARIABLE.
function reverse(word) {
	// Create an empty STRING VARIABLE
	var reversed_word = "";
	// FOR statement creating a new VARIABLE i that equals the length of word
	// from there, we start at the end of given word and iterate towards the start
	// and store it in the reversed_word variable
	for (var i = word.length - 1; i >= 0; i--) {
		reversed_word+=word[i];
	};
	console.log(reversed_word);
}

// Driver code
reverse("welcome");

if (1 == 1) {
  reverse_hello = reverse("hello");
}