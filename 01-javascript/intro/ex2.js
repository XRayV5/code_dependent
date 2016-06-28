console.log('ex2');

var theYear = 2018;
if (Number(theYear) === 2016) {
  console.log('I am present');
} else if (theYear > 2016) {
  console.log('future');
} else {
  console.log('blast from the past');
}

var food = 'apple';

switch(food) {
  case 'apple':
    console.log('i like apples');
    break;
  case 'pear':
    console.log('i like pears');
    break;
  default:
    console.log('i like everything');
}
