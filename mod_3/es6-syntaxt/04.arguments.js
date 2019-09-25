/* Arguments in a function

  - All functions have an 'arguments'
  - What are the 'arguments'? // Array-like object
    - What is an array-like object? // What do you have access to?
    - Can't use them in arrow functions.

*/

argSumFunc(2, 4, 6, 8, 10)

function argSumFunc(...arguments) {
  console.log(arguments)
  // let sum = num1 + num2 + num3;
  // console.log(sum)
  // return sum
}

// let testFunc = (num1, num2, num3) => {
//   console.log(arguments)
//   let sum = num1 + num2 + num3;
//   // console.log(sum)
//   return sum
// }

// testFunc(2, 4, 6, 8, 10)
