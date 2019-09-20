const fetch = require("node-fetch");

// What will get logged in what order?

// // Code #1
// console.log("A")

// function logB() {
//   console.log("B")
// }

// console.log("C")
// logB()


// Code #2
// const url = "https://api.coindesk.com/v1/bpi/currentprice.json"

// console.log("A");

// fetch(url)
//   .then(res => {
//     console.log("B")
//     return res.json()
//   })
//   .then(data => console.log("C"))

// console.log("D")


// Code #3
// 3 scenarios (url1, url2, changing settimeout)
// const url1 = "https://api.coindesk.com/v1/bpi/currentprice.json"
// const url2 = "https://www.google.com"
// // AEBCDF
// // AEBDF
// console.log("A")

// fetch(url2)
//   .then(res => {
//     console.log("B")
//     return res.json()
//   })
//   .then(data => {
//     console.log("C")
//   })
//   .catch(() => console.log("D"))

// console.log("E")

// setTimeout(() => console.log("F"), 5000)



// Some additional examples

// 1. fetch.then() What is it returning? What is the response?
  // Console logging the response in the .then()
  // PromiseValue is undefined. Why? 
  // B/c it is waiting for us to do something with it. 
  // Promise has been resolved. But no value yet without returnning it.

// fetch("http://api.open-notify.org/astros.json")

// fetch("http://api.open-notify.org/astros.json")
//   .then(response => console.log(response))

// fetch("http://api.open-notify.org/astros.json")
//   .then(response => response)

// // What methods are available for response? 
// // Why are we using .json() really?
// fetch("http://api.open-notify.org/astros.json")
//   .then(response => response.json())

// fetch("http://api.open-notify.org/astros.json")
//   .then(response => response.json())
//   .then(response => console.log(response))

//   fetch("http://api.open-notify.org/astros.json")
//   .then(response => response.json())
//   .then(response => response.people)


// 2. fetch GET, POST
  // How does the server and client know 
  // that it should be a JSON data format to communicate?
  