
var car1 = {
  make: 'ford'
}

var car2 = {
  make: 'ford'
}

var accounts = {
  savings: {
    balance: 0,
    deposit: function(amount) {
      accounts.savings.balance += amount;
    },
    withdraw: function(amount) {
      if (amount <= accounts.savings.balance) {
        accounts.savings.balance -= amount;
        return accounts.savings.balance;
      } else {
        return false;
      }
    }
  },

  checkings: {

  }  
}


// dom related code

document.querySelector('button').addEventListener('click', function() {

  // grab the value from the input box
  var amount = document.querySelector('input').value;

  accounts.savings.deposit(amount);
});






