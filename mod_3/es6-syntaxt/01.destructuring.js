/* From the object spaceship,
please print out in your console the VALUES 
stored at pilot and chef */

const spaceship = {
  pilot: 'elon musk',
  guidance: 'mark zucc',
  chef: 'gordan ramsay'
}

// Normal way:
// console.log(spaceship.pilot)

// Destructuring way:
// const pilot = spaceship.pilot
// const { pilot, guidance, chef } = spaceship
// console.log(pilot)
// console.log(guidance)
// console.log(chef)


/* From the class below, please print out a 'mitch' instance. 
Then, print out 'name' and 'favColor' of that instance. 
You'll have to fill in the missing pieces, too. */

class Person {
  constructor({name, favColor}) {
    this.name = name;
    this.favColor = favColor;
  }
}
const mitchProp = { name: 'Mitchell', favColor: 'Red' }
const mitch = new Person(mitchProp);
console.log(mitch)

// Normal way:

// Destructuring way:







