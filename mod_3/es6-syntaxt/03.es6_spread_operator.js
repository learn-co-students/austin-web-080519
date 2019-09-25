const mud = {
  blood: 'it iz spooky season rn'
}
const obj = { a: 'a', b: 'B'}
/* Create a copy of the mud and add the following key/value pair
  
  parents: 'expectations'

*/
// Hint: Use the spread operator.
const mudCopy = { mud, parents: 'expectations' }
console.log(mudCopy)



/* Create another copy of the mudCopy with the Object.assign()
*/

const mudCopy2 = Object.assign({}, mudCopy)
// console.log(mudCopy2)
