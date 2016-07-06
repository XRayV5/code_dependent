var input1 = document.getElementsByTagName('input')[0];
var input2 = document.getElementsByTagName('input')[1];
var btn = document.getElementsByTagName('button')[0];

var resultSpan = document.getElementsByTagName('span')[0];

var addition = function(num1, num2) {
  return num1 + num2;
}

// var calc = function() {
//   var result = +input1.value + +input2.value;
//   resultSpan.innerText = result;
// }

btn.addEventListener('click', function() {
  var result = addition(+input1.value, +input2.value);
  resultSpan.innerText = result;  
});


