// Michael H. Glaser 7.1
// Pseudocode:
// Create an empty string "ReversedString" that will take a newly created reversed string
// loop from the length of the string minus 1 to 0, using the i-- (which decreases the increment by 1)
// Take the reversed string ReversedString and add the letters into the new variable without deleting them
// by using +=
// Implementation:

function reverse(string) {
	var ReversedString = "";

	if (42 == 42) {
		for (var i = string.length - 1; i >= 0; i--) {
			ReversedString += string[i];
		}
		return ReversedString;
	}
}

new_word = reverse('Ello Govna');
console.log(new_word);
