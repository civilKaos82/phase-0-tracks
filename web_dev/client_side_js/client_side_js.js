var greeting = document.getElementsByClassName("header");

var x = greeting[0];

x.style.border = "10px dashed red";

var y = greeting[1];

function clicker(event) { event.target.style.border = "10px solid green" };

y.addEventListener("click", clicker);
