console.log('help me jquery');


// $ denotes its a jquery object
var $addBtn = $('#addBtn');
// add click event to button
$addBtn.on('click', function() {

  // create new dom element and append to todos
  // dom object use .value
  var todoText = $('#newTodoInput').val();
  var $newListItem = $('<li><span class="content">'+ todoText +'</span><span class="doneBtn">done</li>');

  $('#todos').append($newListItem);
});


$('#todos').on('click', '.doneBtn', function(event) {

  // closest is going up - ancestors
  // find is going down - descendants
  var todoText = $(event.target).closest('li').find('.content').text();
  console.log(this);
  var $newItem = $('<li><span class="content">'+ todoText +'</span><span class="doneBtn">done</li>');
  $('#completed').append($newItem);
  $(event.target).closest('li').remove();
});

$('#completed').on('click', '.doneBtn', function(event) {
  var todoText = $(event.target).closest('li').find('.content').text();
  var $newItem = $('<li><span class="content">'+ todoText +'</span><span class="doneBtn">done</li>');
  $('#todos').append($newItem);
  $(event.target).closest('li').remove();
})


