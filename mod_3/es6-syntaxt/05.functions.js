


// Different forms of functions.


/* function declaration vs function expression vs arrow functions

  - functions create their own "execution context"

*/
// anonymous function assigned to a variable and becomes a function expression


/* What makes arrow functions different from function declaration and function expression? 

- Does NOT create it's own "execution context"
- But rather, takes it "lexically" (Meaning, you don't need to use the '.bind(this)')
- FYI: function delcaration and function expression both creates its own 'this' depending on the call(invocation)
*/

// constructor

// Hoisting

const num = 1;
//const printNum = undefined;

// printNum(num)

printNum = function (num) {
  console.log(num)
}

printNum(num)


// function printNum (num) {
//   console.log(num)
// }

let func = (params) => {
  return params
}