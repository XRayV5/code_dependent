console.log('life time supply calculator');

var age = 40;
var maxAge = 135;
var amountPerDay = 24;

var yearsRemaining = maxAge - age;
var daysRemaining = yearsRemaining * 365.25;
var supply = daysRemaining * amountPerDay;

console.log('you will need ' + supply + ' to last you until the ripe old age of ' + age);

