<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>MovieIndex</title>
    <link href="/images/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href = "/CSS/commonStyle.css">
    <link rel="stylesheet" href = "/CSS/indexStyles.css">
    <link rel="stylesheet" href = "/CSS/moviePage.css">

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
                        <a href="/doLogOut" onclick="signOut()">Log out</a>
                    </div>
                </div>
            </c:if>
        </div>
    </div>
</navbar>




<div class = "mainDiv">

    <h1>Guarda oggi al cinema: </h1>
    <iframe width="560" height="315" src="" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

    <div class="sliders">


        <div class = "slider">
            <div class = "sliderTitle">
                <h2>Ultime Uscite:</h2>
            </div>
            <div class="moviesSlide" id = "new-movies">
                <ul>
                    <li><img src=""></li>
                </ul>
            </div>
        </div>

        <div class = "slider">
            <div class = "sliderTitle">
                <h2>Film Popolari:</h2>
            </div>
            <div class="moviesSlide" id = "popular-movies">
                <ul>
                    <li><img src=""></li>
                </ul>
            </div>
        </div>


        <div class = "slider">
            <div class = "sliderTitle">
                <h2>I film Migliori:</h2>
            </div>
            <div class="moviesSlide" id = "best-movies">
                <ul>
                    <li><img src=""></li>
                </ul>
            </div>
        </div>
    </div>


    <div id = "domMovieId">
        ${movieId}
    </div>

</div>

    <script src="../JS/index.js" charset="utf-8"></script>
    <script src="/JS/searchBar.js" charset="utf-8"></script>
    <script src="/JS/googleSignOut.js" charset="utf-8"></script>

</body>
</html>