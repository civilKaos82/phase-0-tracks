var colors = ["Black", "Brown", "Grey", "White"];
var names = ["Bob", "Bridget", "Jones", "Indiana"];

//add color to array
colors.push("magenta");
names.push("Yolo");

var horses = {}


for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];
}

console.log(horses)

//Cars

function Cars(make, model, color){
	this.make = make;
	this.model = model;
	this.color = color;
	this.accelerate = function () {console.log('The car begins to accelerate');}
}

var NewCar = new Cars("Chevy", "Blazer", "rusted");
NewCar.accelerate()
console.log(NewCar)
console.log(new Cars("Ford", "Bronco", "more rusted"))
