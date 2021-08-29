<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Log in</title>
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href="/CSS/logInStyles.css">
</head>

<body>
<div class = "navbar">

    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/index.html"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                <td>   <a href="/HTML/signIn.html"><label class="signIn">Log In</label></a></td>
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
        <div class="row">
            <div class="vl"></div>

            <div class="col">
                <a href="#" class="field fb btn">
                    <i class="fa fa-facebook fa-fw"></i> Login con Facebook
                </a>

                <a href="#" class="field google btn">
                    <i class="fa fa-google fa-fw"></i> Login con Google+
                </a>
            </div>

            <div class="col">

                <input class="field" type="text" name="username" placeholder="Username" required>
                <input class="field" type="password" name="password" placeholder="Password" required>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Resta connesso
                </label>
                <input class="field log" type="submit" value="Accedi">

            </div>

        </div>
    </div>
</form>

<div class="bottom-container">
    <div class="row">
        <div class="col">
            <a href="/HTML/signIn.html" style="color:white" class="field">Registrati</a>
        </div>
        <div class="col">
            <a href="#" style="color:white" class="field">Password Dimenticata?</a>
        </div>
    </div>
</div>

</body>

</html>