<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Log in</title>
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href="/CSS/signInStyles.css">
</head>

<body>
<div class = "navbar">

    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/index.html"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                <td>   <a href="/HTML/signIn.html"><label class="signIn">Sign In</label></a></td>
                <td> <div class="dropdown">
                    <button class="dropbtn">Nome Utente</button>
                    <div class="dropdown-content">
                        <a href="/HTML/userProfile.html">Profilo</a>
                        <a href="#">Log out</a>
                        <a href="https://www.youtube.com/watch?v=blICnLXD65E">Sla</a>
                    </div>
                </div></td>
            </tr>
        </table>
    </div>

</div>

<form class="logInBox" action="index.html" method="post">

    <div class="container">
        <label><b>Username</b></label>
        <input class="field" type="text" placeholder="Username" name="uname" required>

        <label><b>Password</b></label>
        <input class="field" type="password" placeholder="Password" name="psw" required>

        <button class="log" type="submit">Accedi</button>
        <label>
            <input type="checkbox" checked="checked" name="remember"> Resta connesso
        </label>
    </div>

</form>

</body>

</html>