<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Sign in</title>
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href="/CSS/signInStyles.css">
</head>

<body>
<div class = "navbar">

    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                <td>   <a href="/logIn"><label class="logIn">Log In</label></a></td>
                <td> <div class="dropdown">
                    <button class="dropbtn">Nome Utente</button>
                    <div class="dropdown-content">
                        <a href="/userProfile">Profilo</a>
                        <a href="#">Log out</a>
                        <a href="https://www.youtube.com/watch?v=blICnLXD65E">Sla</a>
                    </div>
                </div></td>
            </tr>
        </table>
    </div>

</div>

<form class="signInBox" action="/doRegister" method="POST">

    <div class="container">
        <label><b>Username</b></label>
        <input class="field" type="text" placeholder="Username" name="username" required>

        <label><b>Email</b></label>
        <input class="field" type="email" placeholder="Email" name="email" required>

        <label><b>Password</b></label>
        <input class="field" type="password" placeholder="Password" name="password" id="password" required>

        <label><b>Conferma Password</b></label>
        <input class="field" type="password" placeholder="Conferma Password" name="repassword" id="repassword"  required>

        <button class="register" type="submit">Registrati</button>
    </div>

</form>

<script src="/JS/signIn.js" charset="utf-8"></script>
</body>

</html>