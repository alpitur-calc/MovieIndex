<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Log in</title>
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href="/CSS/logInStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"> type="text/javascript"</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</head>

<body>
<div class = "navbar">
    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
            </tr>
        </table>
    </div>
</div>

<form class="logInBox" action="/doLogIn" method="post">
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
            <a href="/register" style="color:white" class="field">Registrati</a>
        </div>
        <div class="col">
            <a href="#" style="color:white" class="field">Password Dimenticata?</a>
        </div>
    </div>
</div>

</body>

</html>