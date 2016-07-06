console.log('dont wait when you need to go');

function exclaim(word) {
  console.log(word + '!');
}

function doSomething() {
  console.log('i did something');
}

var reminder = function() {
  alert('time to take my meds');
}

// setTimeout(function() {
//   exclaim('ha');
// }, 5000);

console.log('hello everyone');

var poop = function() {
  document.body.style.backgroundColor = 'darkolivegreen';
}

var poopBtn = document.getElementById('poopBtn');

poopBtn.addEventListener('click', poop);


var flush = function() {
  document.body.style.backgroundColor = 'mintcream';
}


var flushBtn = document.getElementsByTagName('button')[1];

flushBtn.addEventListener('click', flush);
