// Who invoked the function? That who is the 'this'.

const person = {
  name: 'Andy',
  whoAmI: function() {
    console.log(this)
  }
}
// person.whoAmI()


const whoIsThis = person.whoAmI;
// whoIsThis();


const btn1 = document.getElementById('btn1');
// btn1.addEventListener('click', person.whoAmI);


// const btn2 = document.getElementById('btn2');
// btn2.addEventListener('click', whoIsThis);


// const btn3 = document.getElementById('btn3');




// Using .bind()

// const bindedWhoAmI = whoIsThis.bind(person);
// bindedWhoAmI();

// btn3.addEventListener('click', bindedWhoAmI);


let func = num1 => num1+num2+num3

