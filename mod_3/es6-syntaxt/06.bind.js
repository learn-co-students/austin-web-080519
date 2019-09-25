const dog = {
  name: 'winfield',
  favSnacks: ['cheese', 'peanut', 'carrots'],
  
  sayName: function() {
    return this.name
  },
  barkName: () => {
    return this.name + 'BARK!'
  },
  
  sayFavFoods: function() {
    this.favSnacks.forEach((snack) => {
      console.log(`${this.name} likes ${snack}`)
    })
  },
  sayFavFoodsNoArrow: function() {
    this.favSnacks.forEach(function(snack) {
      console.log(`${this.name} likes ${snack}`)
    })
  }
}



const dogName = dog.sayName() //winfield

// const barkName = dog.barkName() //???
// console.log(barkName)

// dog.sayFavFoods()

// dog.sayFavFoodsNoArrow()