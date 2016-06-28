console.log('it works');

var numberOfChildren = 25;
var partnerName = 'Donald';
var geoLocation = 'Sunshine';
var jobTitle = 'pet food tester';

var forture = 'You will be a ' + jobTitle + ' in ' + geoLocation + ' married to ' + partnerName + ' with ' + numberOfChildren;

console.log(forture);

// var name = prompt("Please enter you name");
// var favouriteColour = prompt('Please enter your favourite colour');

// console.log('hello ' + name + ', I like ' + favouriteColour + " too");

if (3 > 4) {
  console.log('i love maths');
}

var code_dependent_rule = true;

if (code_dependent_rule) {
  console.log('yay code_dependent');
} 

// truthy or falsey

var name = '';
if (name) {
  console.log('hello ' + name);
}

// empty string '' is falsey

var points = 0;
if (points) {
  console.log('you have ' + points + ' points');
}

// number 0 is also falsey

var firstname;
if (firstname) {
  console.log('your name is ' + firstname);
}

// undefined and null is false 

