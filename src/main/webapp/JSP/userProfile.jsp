<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profilo utente</title>

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
                    <c:if test= "${ userlogged == null}">
                        <td>   <a href="/logIn"><label class="logIn">Log In</label></a></td>
                    </c:if>

                    <c:if test= "${ userlogged != null}">
                        <td> <div class="dropdown">
                            <button class="dropbtn">${userlogged}</button>
                            <div class="dropdown-content">
                                <a href="/userProfile">Profilo</a>
                                <a href="/doLogOut">Log out</a>
                                <a href="https://www.youtube.com/watch?v=blICnLXD65E">Sla</a>
                            </div>
                        </div></td>
                    </c:if>

                </tr>
            </table>
        </div>

    </div>

    <div class = "topProfile">
        <img class = "profilePicture" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBiGV23pC3lG71LeFA3IurV1aD7ouhU_IyOWrr3uSNanKOFL5qkZKwphXd8uWN6vmiaHk&usqp=CAU" alt="Immagine profilo non caricata">

        <h2 id = "userNameText">${ username }</h2>
        <a href = "/userData"><label class = "userSetting"> Cambia Dati </label> </a>
        <a href = "/userPassword"><label class = "userSetting"> Cambia Password </label> </a>
    </div>

    <div>
        <label class = "biography">${ biography } </label>
    </div>

    <div class = "watchlist">
        <div class = "title">
            <h2 id = "yourWatchlist">Your Watchlist</h2>
        </div>

        <table>
            <tr>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
            </tr>
            <tr>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
            </tr>
            <tr>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
                <td><label>PlaceHolder</label></td>
            </tr>

        </table>
    </div>

    <div class = "reviews"></div>

    <footer>
        <h3 class = "copyright">© copiadiritto cazzi e mazzi</h3>
    </footer>

</body>
</html>