<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Setting</title>

    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href = "/CSS/userSettingStyles.css">
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
    <img id="profile-pic" class = "profilePicture" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBiGV23pC3lG71LeFA3IurV1aD7ouhU_IyOWrr3uSNanKOFL5qkZKwphXd8uWN6vmiaHk&usqp=CAU" alt="Immagine profilo non caricata">

    <h2 id = "userNameText">${ username }</h2>
</div>

    <div class="container">
        <c:if test= "${ userlogged == null}">

        </c:if>

        <c:if test= "${ userlogged != null}">

            <c:if test= "${ setting == 'image' }">

                <input id="profileimage" type="file" name="profileimage" />
                <button class="confirm" type="submit" onclick="uploadFile()">Conferma</button>
                <button class="confirm" type="button"><a href="/userProfile">Annulla</a></button>

            </c:if>

            <c:if test= "${ setting == 'data' }">
                <form class="signInBox" action="/saveData" method="POST">

                    <label><b>Username</b></label>
                    <input class="field" type="text" name="username" value="${ username }" required>

                    <label><b>Biografia</b></label>
                    <textarea class = "biography" name="biography" rows="8" cols="80">${ biography }</textarea>

                    <button class="confirm" type="submit">Conferma</button>
                    <button class="confirm" type="button"><a href="/userProfile">Annulla</a></button>
                </form>

            </c:if>

            <c:if test= "${ setting == 'password' }">

                <c:if test= "${ wrongPassword == 'true' }">
                    <div class="alert">
                        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                        <strong>ATTENZIONE!</strong> Vecchia Password non corretta.
                    </div>
                </c:if>

                <form class="signInBox" action="/savePassword" method="POST">

                    <label><b>Vecchia Password</b></label>
                    <input class="field" type="password" placeholder="Password" name="oldpassword" required>

                    <label><b>Nuova Password</b></label>
                    <input class="field" type="password" placeholder="Password" name="password" id="password" required>

                    <label><b>Conferma Password</b></label>
                    <input class="field" type="password" placeholder="Password" name="repassword" id="repassword"  required>

                    <button class="confirm" type="submit">Conferma</button>
                    <button class="confirm" type="button"><a href="/userProfile">Annulla</a></button>
                </form>

            </c:if>

        </c:if>

    </div>
</form>

<footer>
    <h3 class = "copyright">© copiadiritto cazzi e mazzi</h3>
</footer>

    <script src="/JS/userSetting.js" charset="utf-8"></script>

</body>
</html>