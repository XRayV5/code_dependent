
var $listing = $('.listing');

var movieView = function(movie) {

    var $card = $(  Handlebars.templates.tomato( movie )  )

    $card.find('.star').on('click', function() {
      console.log(movie.Title);
    });

    return $card;
}

$.ajax({
  url: 'http://www.omdbapi.com/?s=jaws'
}).done(function(response) {

  var movies = response.Search;
  movies.forEach(function(movie) {
    // var $card = movieView(movie);
    $listing.append( movieView(movie) );

  });
});

$('.listing').on('click', '.star', function(event) {
  // console.log( $(event.target).closest('.ui-card').find('h2').text() );

  console.log(this);
  // console.log(event.target);

  // $(event.target).closest('.image').find('.word').html('liked');
});


var coolPerson = {
  fullname: 'Tad',

  intro: function() {
    console.log('hi my name is ' + this.fullname);
  }
}

var boss = {
  fullname: 'dt'
}

coolPerson.intro()

// var fullname = 'dt';

var greetings = coolPerson.intro;

greetings(); // window


