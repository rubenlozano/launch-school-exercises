// Create a simple tip calculator. The program should prompt for a bill amount
// and a tip rate. The program must compute the tip and then log both the tip
// and the total amount of the bill to the console. You can ignore input
// validation and assume that the user will put in numbers.

// What is the bill? 200
// What is the tip percentage? 15
//
// The tip is $30.0
// The total is $230.0

var billAmount = parseFloat(prompt('What is the bill amount?'));
var tipPercentage = parseFloat(prompt('What is the tip percentage?'));

var tip = billAmount * (tipPercentage / 100 );
var total = billAmount + tip;

console.log('The tip is $' + tip.toFixed(2));
console.log('The total is $' + total.toFixed(2));
