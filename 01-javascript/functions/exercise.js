//  1. Write a function `lengths` that accepts a single parameter as an argument, namely
// an array of strings. The function should return an array of numbers where each
// number is the length of the corresponding string.


function lengths(arr) {
  // create a new arr
  var newArr = [];

  for (var index = 0; index < arr.length; index++) {
    newArr.push( arr[index].length );
  } 

  return newArr;
}

var resultArr = lengths( ['ruby', 'js'] );
console.log( resultArr );


// 2. Write a Javascript function called `transmogrifier`
// This function should accept three arguments, which you can assume will be numbers.
// Your function should return the "transmogrified" result
//
// The transmogrified result of three numbers is the product of the first two numbers,
// raised to the power of the third number.

function transmogrifier(num1, num2, num3) {
  var product = num1 * num2;
  var result = Math.pow(product, num3);
  return result; 
}

// 3. Write a function `wordReverse` that accepts a single argument, a string. The
// method should return a string with the order of the words reversed. Don't worry
// about punctuation.

function wordReverse(sentence) {
  var newString = '';

  var splitedSentence = sentence.split(' ');
  var reversedSentence = splitedSentence.reverse();

  return reversedSentence.join(' ');
}

// 'the is crap'
// ['the','is','crap']
// 'crap is the'