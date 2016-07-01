console.log('functions');


function makeCake() {
  console.log('go to the shop');
  console.log('buy cake');
  console.log('pretend i made it');
}



function calcCircleArea(radius) {
  console.log('calculating');

  return Math.PI * radius * radius;
}

var area = calcCircleArea(5);

var className = 'code_dependent';

// do area crap

console.log(area);

function sayHello(firstname, lastname) {
  var remark = 'i hate you';
  console.log(className);
  return 'hello ' + firstname + ' ' + lastname + ' ' + remark;
}

console.log( sayHello(['code'], 'dependent') );


