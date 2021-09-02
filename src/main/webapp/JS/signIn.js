var password = document.getElementById("password")
var repassword = document.getElementById("repassword");

function validatePassword(){
    if(password.value != repassword.value) {
        repassword.setCustomValidity("Passwords Don't Match");
    } else {
        repassword.setCustomValidity('');
    }
}

password.onchange = validatePassword;
repassword.onkeyup = validatePassword;