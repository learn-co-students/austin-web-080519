// 
document.addEventListener('DOMContentLoaded', function() {

  // 
  document.addEventListener("click", (event) => {
    console.log(event.target)
    // event.preventDefault();
    // console.log(event.target);
    event.target.remove();
  });

  var cForm = document.getElementById("comment-form");

  console.log(cForm);


  // var vs let vs const
  // scope and const can't be changed

});
