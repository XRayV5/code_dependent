console.log('life changing moment');

// $.ajax().done();
var doSomething = function(abc){
  console.log('yay got the movie');
  console.log(abc.Title);
};

// doSomething({ abc: 'sdfsdf'})

// $.ajax({
//   url: 'http://www.omdbapi.com/?t=jaws'
// }).done(doSomething);

console.log('my life has been renew');


$('#search-form').on('submit', function(event) {

  event.preventDefault(); // preventing the submit event

  var title = $('input').val();

  $.ajax({
    url: 'http://www.omdbapi.com/?t=' + title,
    method: 'get'
  }).done(function(movie) {

    $('#movie-info').html(movie.Title);

  });

})

// $('#search-btn').on('click', function() {})