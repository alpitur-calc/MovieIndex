<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Log In</title>
    <link href="/images/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href = "/CSS/commonStyle.css">
    <link rel="stylesheet" href="/CSS/logInStyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"> type="text/javascript"</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="589054609085-1refjr6uf58re3nvl7ok6tgrpbebld4a.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
</head>

<body>
<navbar>
    <div class="navbar-container">
        <div class = "logo-container">
            <a href="/"><h1 class="logo">MovieIndex</h1></a>
        </div>
        <div class = "searchBar-container">
            <input type="text" class="searchBar" placeholder="Cerca il titolo di un film...">
            <ul>

            </ul>
        </div>
        <div class="profile-container">
            <c:if test= "${ userlogged == null}">
                <a href="/logIn"><label class="logIn">Log In</label></a>
            </c:if>

            <c:if test= "${ userlogged != null}">
                <div class="dropdown">
                    <button id="dropbtn" class="dropbtn">${userlogged}</button>
                    <div class="dropdown-content">
                        <a href="/userProfile">Profilo</a>
                        <a href="/doLogOut" onclick="signOut()">Log out</a>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</navbar>

<div class="logIn-container">

    <div class="logInBox">

        <div class="col ext">

            <div id="my-signin2" class="google"></div>

        </div>

        <div class="bar">

        </div>

        <form class="col form" action="/doLogIn" method="post">

            <c:if test="${ username != null}">
                <input class="logInObj field" type="text" name="username" placeholder="Username" value="${username}" required>
            </c:if>

            <c:if test="${ username == null}">
                <input class="logInObj field" type="text" name="username" placeholder="Username" required>
            </c:if>

            <br>

            <c:if test="${ password != null}">
                <input class="logInObj field" type="password" name="password" placeholder="Password" value="${password}" required>
            </c:if>

            <c:if test="${ password == null}">
                <input class="logInObj field" type="password" name="password" placeholder="Password" required>
            </c:if>

            <br>

            <label>

                <c:if test="${ username != null}">
                    <c:if test="${ password != null}">
                        <input type="checkbox" name="rememberMe" class="remember" id="checkbox1" value="yes" checked> Resta connesso
                    </c:if>
                </c:if>

                <c:if test="${ username == null}">
                    <c:if test="${ password == null}">
                        <input type="checkbox" name="rememberMe" class="remember" id="checkbox1" value="no"> Resta connesso
                    </c:if>
                </c:if>

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

<script src="/JS/searchBar.js" charset="utf-8"></script>
<script src="/JS/googleSignOut.js" charset="utf-8"></script>

<script>

    $("#checkbox1").on('change', function() {
        if ($(this).is(':checked')) {
            $(this).attr('value', 'yes');
            console.log($('#checkbox1').val());
        } else {
            $(this).attr('value', 'no');
            console.log($('#checkbox1').val());
        }

    });

    window.onbeforeunload = function(e){
        gapi.auth2.getAuthInstance().signOut();
    };

    function onSuccess(googleUser) {
        var profile = googleUser.getBasicProfile();
        $.ajax({
            type: 'GET',
            url: '/doGoogleLogIn',
            data: {
                username: profile.getName(),
                email: profile.getEmail(),
                password: "googleUserPassword",
            },
            success : function (){
                location.href="/";
            },
        });
    }

    function onFailure(error) {
        console.log(error);
    }

    function renderButton() {
        gapi.signin2.render('my-signin2', {
            'scope': 'profile email',
            'width': 200,
            'height': 40,
            'longtitle': true,
            'theme': 'dark',
            'onsuccess': onSuccess,
            'onfailure': onFailure
        });
    }

</script>

</body>

</html>
