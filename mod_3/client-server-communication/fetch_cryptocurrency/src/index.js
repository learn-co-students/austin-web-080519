document.addEventListener('DOMContentLoaded', function() {

  const url = "https://api.coindesk.com/v1/bpi/currentprice.json";

  // // Code from lecture
  // fetch(url)
  // .then(response => {
  //   return response.json();
  // })
  // .then(data => {
  //   // Display currency symbol and currency rate after clicking on a button
    
  //   const currencySymbol = document.getElementById('currency');
  //   const currencyRate = document.getElementById('currency_rate');

  //   // Using .querySelectorAll()
  //   const allButtons = document.querySelectorAll(".btn");
    
  //   // forEach method is like the each method in ruby
  //   allButtons.forEach(element => {
  //     element.addEventListener('click', event => {
  //       currencySymbol.innerText = element.innerText;
  //       currencyRate.innerText = data.bpi[element.innerText].rate;
  //     })
  //   })
  // })
  

  // Other approach: Practice breaking into smaller methods
  fetch(url)
  .then(response => {
    return response.json();
  })
  .then(data => {
    // On a button click, display information.
      displayInformation(data);
  })
  
  
})    


// On a button click, display information.
function displayInformation (data) {
  // Display our currency symbol
  addCurrencySymbol(data);
};


// Displays currency symbol to the DOM
function addCurrencySymbol(data) {
document.addEventListener('click', event => {
  // Displays currency symbol to the DOM
  let currency = event.target.dataset.name;
  
  if (currency) {
    document.getElementById("currency").innerHTML = currency;
    // Display currency rate to the DOM
    let currencyRate = findCurrencyRate(currency, data);
    console.log(currencyRate)
    document.getElementById("currency_rate").innerHTML = currencyRate;
  }
});
}

// Retrieve corresponding currency rate from data.
function findCurrencyRate (currency, data) {
console.log(currency)
let currencyDataList = data.bpi;
console.log(currencyDataList);
return currencyDataList[currency].rate;  
}  