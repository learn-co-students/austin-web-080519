class Dog {
  constructor(name, age) {
    this.name = name
    this.age = age
  }

  bark() {
    console.log(this, "Barking")
    return this.name
  }
}

const snoopy = new Dog('Snoopy', 100)
const toto = new Dog('Toto', 3)

snoopy.bark()
toto.bark()
// Using bind here in your class????