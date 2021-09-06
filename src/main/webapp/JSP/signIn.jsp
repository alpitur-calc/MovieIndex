<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>MovieIndex</title>
    <link href="/images/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href="/CSS/signInStyles.css">
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
            <c:if test= "${ userlogged == null}">
                <a href="/logIn"><label class="logIn">Log In</label></a>
            </c:if>

            <c:if test= "${ userlogged != null}">
                <div class="dropdown">
                    <button class="dropbtn">${userlogged}</button>
                    <div class="dropdown-content">
                        <a href="/userProfile">Profilo</a>
                        <a href="/doLogOut">Log out</a>
                        <a href="https://www.youtube.com/watch?v=blICnLXD65E">Sla</a>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</navbar>

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