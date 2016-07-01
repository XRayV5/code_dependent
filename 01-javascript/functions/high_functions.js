console.log('higher order functions');

var currentClass = ['andrew','tad','jordan','ray','magda'];

var group = ['dean','raymond','andrew','tad','magda','jordan','anthony','maggie','dennis','sam'];

// var survivors = [];

// console.log('survivors array', survivors);

// for (var index = 0; index < currentClass.length; index++) {
//   console.log( currentClass[index] );

//   if ( currentClass[index].length <= 5 ) {
//     survivors.push( currentClass[index] );
//   }
// }

// console.log('after elimination', survivors);

function namesLessThanFive(name) {
  if (name.length < 5) {
    return true;
  } else {
    return false;
  }
}

function namesStartWithA(name) {
  if (name[0] === 'a') {
    return true;
  } else {
    return false;
  }
}

function eliminate(list, func) {
  var survivors = [];

  for (var index = 0; index < list.length; index++) {
    if (func( list[index] )) {
      survivors.push( list[index] );
    }
  }
  return survivors;  
}

function printName(name) {
  console.log(name)
}

group.forEach( printName );
var numbers = [1,2,3,4,5];

numbers.forEach( function(number) { 

  console.log(number); 

});

var survivors = [];

group.forEach(function(name) {
  if (name.length <= 5) {
    survivors.push(name);
  }
});

var languages = ['ruby','js','c++'];
// [4, 2, 3]

var lengthsArr = []; // [4, 2, 3]

languages.forEach( function(elem) {

  lengthsArr.push( elem.length );

});

console.log( lengthsArr );





