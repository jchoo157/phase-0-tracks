// ARRAYS of colors and horse names
var colors = ["red", "blue", "green", "yellow"];
var horse_names = ["Ed", "Fred", "Ted", "Ned"];

console.log(colors);
console.log(horse_names);

// Adding items to arrays
colors.push("purple");
console.log(colors);
horse_names.push("Zed");
console.log(horse_names);

// Creating an empty horses object to add key and value pairs using our ARRAYS above
var horses = {}

for (var i = 0; i < horse_names.length; i++) {
	horses[horse_names[i]] = colors[i]
}

console.log(horses)

// Creating a car CONSTRUCTOR that takes 3 parameters
function Car(color, model, year) {
  console.log("Our car:", this);
  this.color = color;
  this.model = model;
  this.year = year;

  this.start = function() { console.log("VROOOOM!!!")};
  console.log("Car has been initialized!")
}

// Driver code to test out new instances of the car
var hyundai = new Car("silver", "sonata", 2015);
console.log(hyundai);
console.log("Color: " + hyundai.color);
console.log("Model: " + hyundai.model);
console.log("Year: " + hyundai.year);
hyundai.start();
console.log("-----------------");

var toyota = new Car("black", "camry", 2013);
console.log(toyota);
console.log("Color: " + toyota.color);
console.log("Model: " + toyota.model);
console.log("Year: " + toyota.year);
toyota.start();
console.log("-----------------");

var honda = new Car("red", "civic", 2016);
console.log(honda);
console.log("Color: " + honda.color);
console.log("Model: " + honda.model);
console.log("Year: " + honda.year);
honda.start();
console.log("-----------------");
