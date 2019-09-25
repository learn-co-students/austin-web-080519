const pizza = 'pepperoni'
const restaurant = 'sbarros authentic New York Pizza'

const pizzaObj = {
  pizza: pizza,
  restaurant: restaurant
}

// Is there a shorter way to do this?
const pizzaObj2 = { pizza, restaurant }
console.log(pizzaObj2)
// Is pizzaObj and pizzaObj2 the same? true of false.
console.log(pizzaObj == pizzaObj2)
