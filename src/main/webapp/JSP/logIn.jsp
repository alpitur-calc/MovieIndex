<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>MovieIndex</title>
    <link href="/images/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href = "/CSS/commonStyle.css">
    <link rel="stylesheet" href="/CSS/logInStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"> type="text/javascript"</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</head>

<body>
<navbar>
    <div class="navbar-container">
        <div class = "logo-container">
            <a href="/"><h1 class="logo">MovieIndex</h1></a>
        </div>
        <div class = "searchBar-container">
            <input type="text" class="searchBar" placeholder="Cerca il titolo di un film...">
        </div>
        <div class="profile-container">
                <label class="logIn">Log In</label>
        </div>
    </div>
</navbar>

<div class="logIn-container">

    <div class="logInBox">

        <div class="col ext">

            <a href="#" class="logInObj fb btn">
                <i class="fa fa-facebook fa-fw"></i> Login con Facebook
            </a>
            <br>
            <a href="#" class="logInObj google btn">
                <i class="fa fa-google fa-fw"></i> Login con Google+
            </a>

        </div>

        <div class="bar">

        </div>

        <form class="col form" action="/doLogIn" method="post">

            <input class="logInObj field" type="text" name="username" placeholder="Username" required>
            <br>
            <input class="logInObj field" type="password" name="password" placeholder="Password" required>
            <br>
            <label>
                <input type="checkbox" checked="checked" name="remember" class="remember"> Resta connesso
            </label>
            <br>
            <input class="logInObj log" type="submit" value="Accedi">

        </form>

    </div>

    <div class="bottom-container">
            <a href="/register" class="bottom">Registrati</a>
            <a href="#" class="bottom">Password Dimenticata?</a>
    </div>
</div>

</body>

</html>
