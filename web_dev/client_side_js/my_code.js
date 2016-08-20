function changeSentence() {
  document.getElementById("change").innerHTML = "The sentence has been changed!";
};

function bigFont() {
  document.getElementById('bigger_font').style.fontSize='50px';
};

function addYellowBorder(event) {
	console.log("click happened");
	console.log(event);
	event.target.style.border="10px solid yellow";
};

var photo = document.getElementById("godzilla");
photo.addEventListener("click", addYellowBorder)