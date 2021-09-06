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

    <div class = "topProfile">
        <img class = "profilePicture" src="getProfilePic()" alt="Immagine profilo non caricata">
        <a href = "/userImage"><label class = "editPicture">  :pencil2:</label></a>
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
<script>
    async function getProfilePic(){
        $.ajax({
            type:'GET',
            url: '/getProfileImage',
            success:function (result){
                $('#profilePicture').attr('src', `data:image/png;base64,` + result.body);
            }
        });
    }

    getProfilePic();
</script>
</html>