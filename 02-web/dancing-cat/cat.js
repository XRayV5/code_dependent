var movePixels = 5;
var scale = 1.0;
var cat = document.getElementsByTagName('img')[0];
var goRight = true;

function catWalk() {
  var currentLeft = parseInt(cat.style.left);

  if (goRight) {
    cat.style.left = (currentLeft + movePixels) + 'px';
  } else {
    cat.style.left = (currentLeft - movePixels) + 'px';    
  }

  if (currentLeft > (window.innerWidth - cat.width)) {
    goRight = false;
    cat.style.transform = 'scaleX(-1)';
  } else if (currentLeft <= 0) {
    goRight = true;
    cat.style.transform = 'scaleX(1)';
  }
}

function startCatWalk() {
  setInterval(catWalk, 20);
}

// document.querySelector('#start').addEventListener('click', startCatWalk)

var startBtn = document.getElementById('start');
startBtn.addEventListener('click', startCatWalk);