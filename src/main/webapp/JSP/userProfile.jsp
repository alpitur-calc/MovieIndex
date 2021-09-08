<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profilo utente</title>

    <link rel="stylesheet" href = "/CSS/commonStyle.css">
    <link rel="stylesheet" href = "/CSS/userProfileStyles.css">
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

<div class="main-container">
    <div class = "topProfile">
        <c:if test= "${ profileimage == 'default' }">
            <img id="profile-pic" class = "profilePicture" src="/images/defaultUserImage.jpg" alt="Immagine profilo non caricata">
        </c:if>

        <c:if test= "${ profileimage != 'default' }">
            <img id="profile-pic" class = "profilePicture" src="${ profileimage }" alt="Immagine profilo non caricata">
        </c:if>

        <a href = "/userImage"><img class = "editPicture" src="/images/pencil-png.png"></a>
        <h2 class = "userNameText">${ username }</h2>

        <div class = "biography-container">
            <textarea class = "biography" readonly>${ biography }</textarea>
        </div>

        <div class="setting-container">
            <a href = "/userData"><label class = "userSetting"> Cambia Dati </label> </a>
            <a href = "/userPassword"><label class = "userSetting"> Cambia Password </label> </a>
        </div>
    </div>

    <div class = "watchlist">
        <div class = "title">
            <h2 class = "yourWatchlist">Your Watchlist</h2>
        </div>

        <ul>

            <c:forEach var="movie" items="${ watchList }">

                <li> ${ movie }</li>



            </c:forEach>

        </ul>

    </div>

    <div class = "reviews"></div>
</div>

</body>

</html>

