// Adds an event listener to the document that waits 
// for the entire page to load then runs the code
document.addEventListener('DOMContentLoaded', function() {

  // waits for a click on the document then runs the function
  document.addEventListener("click", (event) => {
    
    // event is the mouse click event
    // event.target is the element that was clicked on
    console.log(event.target)

    // Removes the element that was clicked on
    event.target.remove();
  });

  // saves the element with the id `comment-form` to the cForm variable
  var cForm = document.getElementById("comment-form");


  // var vs let vs const
  // scope and const can't be changed

});
