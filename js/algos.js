//DBC 7.3 Algorithm Practice - Michael H. Glaser

//Release 0//
function longestPhrase(array){

	var phrase = array[0];
	for ( i=0 ; i < array.length ; i++) {
		if ((array[i].length) > (phrase.length)) {
			phrase = array[i];}
		}
		return phrase
	}

  var array = ["long phrase","longest phrase","longer phrase"];

  console.log(longestPhrase(array));
