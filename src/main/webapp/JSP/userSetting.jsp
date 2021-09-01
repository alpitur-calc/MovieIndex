<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Setting</title>

    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href = "/CSS/userProfileStyles.css">
</head>
<body>


<div class = "navbar">

    <div class = "tableNavbar">
        <table cellspacing="5" >
            <tr>
                <td> <a href = "/"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                <td>  <a href="/logIn"><label class="logIn">Log In</label></a></td>
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

<div class = "topProfile">
    <img class = "profilePicture" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBiGV23pC3lG71LeFA3IurV1aD7ouhU_IyOWrr3uSNanKOFL5qkZKwphXd8uWN6vmiaHk&usqp=CAU" alt="Immagine profilo non caricata">
    <label class = "editPicture">  ✏️</label>
    <h2 id = "userNameText">Nome Utente</h2>
</div>

<form class="signInBox" action="/saveChanges" method="POST">
    <div class="container">
        <c:if test= "${ userlogged == null}">

        </c:if>


        <c:if test= "${ userlogged != null}">
            <label><b>Username</b></label>
            <input class="field" type="text" placeholder="Username" name="username" value="${ username }" required>

            <label><b>Password</b></label>
            <input class="field" type="password" placeholder="Password" name="password" id="password" required>

            <label><b>Conferma Password</b></label>
            <input class="field" type="password" placeholder="Conferma Password" name="repassword" id="repassword"  required>

            <label><b>Biografia</b></label>
            <textarea class = "biography" name="biography" rows="8" cols="80" value="${ biography }"></textarea>

            <button class="confirm" type="submit">Conferma</button>
        </c:if>

    </div>
</form>

<footer>
    <h3 class = "copyright">© copiadiritto cazzi e mazzi</h3>
</footer>

</body>
</html>