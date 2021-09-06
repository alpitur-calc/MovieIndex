let password = document.getElementById("password")
let repassword = document.getElementById("repassword");

function validatePassword(){
    if(password.value != repassword.value) {
        repassword.setCustomValidity("Le password non combaciano");
    } else {
        repassword.setCustomValidity('');
    }
}

password.onchange = validatePassword;
repassword.onkeyup = validatePassword;
