$.ajax({
  url: 'http://localhost:3001/api/dishes'
}).done(function(dishes) {

  dishes.forEach(function(dish) {

    var $dishItemDiv = $('<div>').addClass('dish-item');
    $dishItemDiv.html('<img src="' + dish.image_url + '">');  

    $('.container').append($dishItemDiv);  
  });

}).fail(function() {
  console.log('shit happens');
})


$('#add-dish-btn').on('click', function(){

  $.ajax({
    url: 'http://localhost:3000/api/dishes',
    method: 'post',
    data: { 
      name: $('#new-name').val(), 
      image_url: $('#new-image-url').val() 
    }
  }).done(function(dish) {
    var $dishItemDiv = $('<div>').addClass('dish-item');
    $dishItemDiv.html('<img src="' + dish.image_url + '">');  

    $('.container').append($dishItemDiv); 

  });
});