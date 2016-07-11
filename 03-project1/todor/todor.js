

var btn = document.getElementById('addBtn');
var newTodoInput = document.getElementById('newTodoInput');
var todoList = document.getElementById('todos');
var completedList = document.getElementById('completed');

// var listItems = document.getElementsByTagName('li');

// for() {
//   listItems[i].addEventListener('click', function(event) {

//   });  
// }

// listItem.addEventListener('click', function() {
//   console.log('list item clicked');
// });


btn.addEventListener('click', function(event) {
  
  var todoText = newTodoInput.value;

  var newListItem = document.createElement('li');
  var newTextNode = document.createTextNode(todoText);

  newListItem.appendChild(newTextNode);
  todoList.appendChild(newListItem);
});

newTodoInput.addEventListener('keypress', function(event) {
  console.log(event.which);

  // var todoText = newTodoInput.value;

  // var newListItem = document.createElement('li');
  // var newTextNode = document.createTextNode(todoText);

  // newListItem.appendChild(newTextNode);
  // todoList.appendChild(newListItem);  

})

todoList.addEventListener('click', function(event) {
  console.log(event.target);
  console.log(this);
  // console.log('something within ul is clicked');
  // console.log(event.target);

  if(event.target.tagName === 'SPAN') {

    // get the text within the target list item
    var origText = event.target.innerText;

    // create a new list item elem
    var newListItem = document.createElement('li');

    // create a new text node with the text from the orig list item
    var textNode = document.createTextNode(origText);

    // append text node into new list item
    newListItem.appendChild(textNode);

    // if (newListItem.style.textDecoration === 'line-through') {
    //   newListItem.style.textDecoration = '';
    // } else {

    newListItem.className = 'done';

    // newListItem.style.textDecoration = 'line-through';
    // }

    // append new list item to completed unordered list
    completedList.appendChild(newListItem);

    // remove the original list item from the todos ul 
    todoList.removeChild(event.target);

    
  }
});

completedList.addEventListener('click', function(event) {


  var text = event.target.innerText;


});




