//DBC 7.3 Algorithm Practice - Michael H. Glaser

//Release 0//
function LongestPhrase(array){

	var phrase = array[0];
	for ( i=0 ; i < array.length ; i++) {
		if ((array[i].length) > (phrase.length)) {
			phrase = array[i];}
		}
		return phrase
}

  var array = ["long phrase","longest phrase","longer phrase"];

  console.log(LongestPhrase(array));

//Release 1//
function SimilarCheck (hash1, hash2) {
   var similar = false;

   for (var key1 in hash1) {
	     for (var key2 in hash2) {
		        if ((key1 === key2) && (hash1[key1] === hash2[key2])) {
			            similar = true;}
		}
	}
	return similar;
}

var TestObject1 = {name: "Mike", eyes: "brown"};
var TestObject2 = {name: "Bob", eyes: "brown"};
var TestObject3 = {name: "Bill", eyes: "blue"};
var TestObject4 = {name: "Bill", eyes: "aqua"};

console.log("Are", TestObject1, "and", TestObject2, "similar?");
console.log(SimilarCheck(TestObject1, TestObject2));

console.log("Are", TestObject2, "and", TestObject3, "similar?");
console.log(SimilarCheck(TestObject2, TestObject3));

console.log("Are", TestObject3, "and", TestObject4, "similar?");
console.log(SimilarCheck(TestObject2, TestObject3));

//Release 2//
function RandWordGen(WordQuantityInput) {
  var WordArray = [];
  var Characters = 'abcdefghijklmnopqrstuvwxyz'
  for (i = 0; i < WordQuantityInput; i++) {
    var output = '';
    var length = Math.floor((Math.random() * 10) + 1);
    for (var j = length; j > 0; --j) {
      output += Characters[Math.floor(Math.random() * Characters.length)];
    }
    WordArray.push(output);
  }
  return WordArray
}

for (var x = 10; x > 0; x--) {
  var RandomArrayLength = Math.floor(Math.random() * 5) + 2;
  var CheckRandomArray = RandWordGen(RandomArrayLength);
  console.log(CheckRandomArray);
  console.log("The longest phrase is:", LongestPhrase(CheckRandomArray));
}
