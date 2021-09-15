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
            <ul>

            </ul>
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

    <div class = "watchlist-container">
        <div class = "title">
            <h2 class = "yourWatchlist">Film da vedere</h2>
        </div>

        <ul>

                <c:forEach var="movie" items="${ watchList }">

                    <div class="watchlist-list">

                        <div id = "domMovieId">
                                ${ movie }
                        </div>

                    </div>

                </c:forEach>

        </ul>

        </div>

    </div>

    <div class = "reviews"></div>
</div>

<script src="/JS/userProfile.js" charset="utf-8"></script>
<script src="/JS/searchBar.js" charset="utf-8"></script>

</body>

</html>

