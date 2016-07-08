console.log('todor');

var newTodoBtn = document.querySelector('#newTodoBtn');
var todoInput = document.querySelector('#todoInput');
var todos = document.querySelector('#todos');

// function expression
var addTodo = function() {
  var todoText = todoInput.value;

  var newLi = document.createElement('li');
  var textNode = document.createTextNode(todoText);
  newLi.appendChild(textNode);

  console.log(newLi);

  todos.appendChild(newLi);
  todoInput.value = '';
}

newTodoBtn.addEventListener('click', addTodo);

// function declaration
// function addTodo() {

// }