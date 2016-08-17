
var $listing = $('.listing');

var movieView = function(movie) {
    var $card = $('<div>').addClass('ui-card');
    
    var $header = $('<div>').addClass('content card-header');
    var $image = $('<div>').addClass('image');
    var $content = $('<div>').addClass('content');
    var $footer = $('<div>').addClass('content');

    $header
      .append( $('<span>').addClass('right').text('15h') )
      .append( $('<img>').addClass('avatar').attr('src', 'http://placehold.it/200x200') )
      .append(' DT');

    $image
      .append( $('<img>').attr('src', 'http://placehold.it/500x500') )
      .append( $('<span>').addClass('star').html('&#9733') );

    $content
      .append( $('<h2>').text(movie.Title) )
      .append( $('<h4>').text(movie.Year) );

    $footer
      .append( $('<span>').addClass('right').text('123') )
      .append( $('<span>').addClass('mark').text('bookmark') );

    $card
      .append( $header )
      .append( $image )
      .append( $content )
      .append( $footer )

    $card.find('.star').on('click', function() {
      console.log(movie.Title);
    });

    $card.find('.mark').on('click', function(event) {
      $(event.target).text('marked!');
    });

    return $card;
}

$.ajax({
  url: 'http://www.omdbapi.com/?s=jaws'
}).done(function(response) {

  var movies = response.Search;

  movies.forEach(function(movie) {

    var $card = movieView(movie);
    $listing.append( $card );

  });
});

// $('.listing').on('click', '.star', function(event) {
//   console.log( $(event.target).closest('.ui-card').find('h2').text() );
// });