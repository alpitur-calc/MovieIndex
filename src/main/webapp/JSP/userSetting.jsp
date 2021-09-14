<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Setting</title>

    <link rel="stylesheet" href = "/CSS/commonStyle.css">
    <link rel="stylesheet" href = "/CSS/userSettingStyles.css">

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

        <h2 class = "userNameText">${ username }</h2>
    </div>

    <div class="container">
        <c:if test= "${ userlogged == null}">

        </c:if>

        <c:if test= "${ userlogged != null}">

            <c:if test= "${ setting == 'image' }">

                <form class="formSetting-profile" action="/saveImage" method="POST">
                    <label class="profile-label"><b>Seleziona immagine di Profilo</b></label>

                    <div class="imageSelection">
                        <img class="profileSelection" src="/images/pp1.png" onclick="changeImage(src)">
                        <img class="profileSelection" src="/images/pp2.png" onclick="changeImage(src)">
                        <img class="profileSelection" src="/images/pp3.png" onclick="changeImage(src)">
                        <img class="profileSelection" src="/images/pp4.png" onclick="changeImage(src)">
                        <img class="profileSelection" src="/images/pp5.png" onclick="changeImage(src)">
                        <input class="profileimage" name="profileimage" type="hidden">
                    </div>
                    <br>
                    <button class="confirm" type="submit">Accetta</button>
                    <a href="/userProfile"><button class="confirm" type="button">Annulla</button></a>
                </form>

            </c:if>

            <c:if test= "${ setting == 'data' }">
                <form class="formSetting" action="/saveData" method="POST">

                    <div class="setting-div">
                        <label class="setting-label"><b>Username:</b></label>
                        <input class="field" type="text" name="username" value="${ username }" required>
                    </div>

                    <br>

                    <div class="setting-div">
                        <label class="setting-label"><b>Biografia:</b></label>
                        <br>
                        <textarea class = "biography" name="biography" rows="8" cols="80">${ biography }</textarea>
                    </div>

                    <br>

                    <button class="confirm" type="submit">Conferma</button>
                    <a href="/userProfile"><button class="confirm" type="button">Annulla</button></a>
                </form>

            </c:if>

            <c:if test= "${ setting == 'password' }">

                <c:if test= "${ wrongPassword == 'true' }">
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <strong>ATTENZIONE!</strong> Vecchia Password non corretta.
                    </div>
                </c:if>

                <form class="formSetting" action="/savePassword" method="POST">

                    <div class="setting-div">
                        <label class="setting-label"><b>Vecchia Password:</b></label>
                        <input class="field-password" type="password" placeholder="Password" name="oldpassword" required>
                    </div>

                    <br>

                    <div class="setting-div">
                        <label class="setting-label"><b>Nuova Password:</b></label>
                        <input class="field-password" type="password" placeholder="Password" name="password" id="password" required>
                    </div>

                    <br>

                    <div class="setting-div">
                        <label class="setting-label"><b>Conferma Password:</b></label>
                        <input class="field-password" type="password" placeholder="Password" name="repassword" id="repassword"  required>
                    </div>

                    <br>

                    <button class="confirm" type="submit">Conferma</button>
                    <a href="/userProfile"><button class="confirm" type="button">Annulla</button></a>
                </form>

            </c:if>

        </c:if>

    </div>

</div>

    <script src="/JS/userSetting.js" charset="utf-8"></script>
    <script src="/JS/searchBar.js" charset="utf-8"></script>

</body>

</html>