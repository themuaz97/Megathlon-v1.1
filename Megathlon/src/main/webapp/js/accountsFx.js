//Function for hiding/showing pass in register page
function password_show_hide() {
  var x = document.getElementById("pass");
  var y = document.getElementById("pass2");
  var show_eye = document.getElementById("show_eye");
  var hide_eye = document.getElementById("hide_eye");
  hide_eye.classList.remove("d-none");
  if (x.type === "password" || y.type == "password") {
    x.type = "text";
    y.type = "text";
    show_eye.style.display = "none";
    hide_eye.style.display = "block";
  } else {
    x.type = "password"; 
    y.type = "password";  
    show_eye.style.display = "block";
    hide_eye.style.display = "none";
  }
}
//Function for hiding/showing pass in login page
function password_show_hide_Login() {
  var x = document.getElementById("pass");
  
  var show_eye = document.getElementById("show_eye");
  var hide_eye = document.getElementById("hide_eye");
  hide_eye.classList.remove("d-none");
  if (x.type === "password") {
    x.type = "text";
    show_eye.style.display = "none";
    hide_eye.style.display = "block";
  } else {
    x.type = "password"; 
    show_eye.style.display = "block";
    hide_eye.style.display = "none";
  }
}
//Checks for matching password
function matchPassword() {  
  var pw1 = document.getElementById("pass");  
  var pw2 = document.getElementById("pass2");  
  if(pw1 != pw2)  
  {   
    alert("Passwords did not match");  
  } else {  
    alert("Password created successfully");  
  }  
}
/*//Checks for input, enable submit button when all are filled
function mustHaveInput(){
	let inputs = document.querySelectorAll('input');
let buttonSend = document.getElementById('submitbtn');

let inputValidator = {
  "name": false,
  "email": false,
  "password": false,
  "pass2": false
}

inputs.forEach((input) => {
  input.addEventListener('input', () => {
    let name = Event.target.getAttribute('name');
    if (Event.target.value.length > 0) {
      inputValidator[name] = true;
    } else {
      inputValidator[name] = false;
    };

    let allTrue = Object.keys(inputValidator).every((item) => {
      return inputValidator[item] === true
    });

    if (allTrue) {
      buttonSend.disabled = false;
    } else {
      buttonSend.disabled = true;
    }
  })
})
}*/