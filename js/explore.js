// FUNCTION that reverses a word by iterating through each 
// letter from end to start in a VARIABLE.
function reverse(word) {
	var reversed_word = "";
	for (var i = word.length - 1; i >= 0; i--) {
		reversed_word+=word[i];
	};
	console.log(reversed_word);
}

reverse("welcome")

if (1 == 1) {
  reverse_hello = reverse("hello");
}