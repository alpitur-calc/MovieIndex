<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Morte a DB</title>
    <link rel="stylesheet" href = "../CSS/indexStyles.css">
    <link rel="stylesheet" href = "/CSS/navbar.css">

    <link href="data:image/x-icon;base64,AAABAAEAEBAAAAAAAABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAAU1NTABcXFwAqLSsALC0rAC8qKwD3+fkAMC4uAEVFRQAyLzEAHB8dAG1vcABdWFkA7OfoAF5cXAAiICAAnpmbAMbGxgBkYF8AEhISAGVlZQDy8/EAKSkpAJOTkwBxaGUA5ubmAKqqqgAdHB4ANC4vAG5ubgD7/f0AIRweAIOFhQAhHx4ACw0NAA0NDQBeX10AYV5aAF5gYADx6+wAYmFjALOzswATERAAOzs7AI6OjgAWFhYAGBYWADEqLQAZGxwA+vn7ADMuMAAzMTAAHx8fAHBycgBdXF4ASkpEAE5LRwCLhYYAS01NAA8REQBkX14APjo5AKKgoABsZmEAkJKSAC4sKwAYGhoALi8rABoaGgAyLysAcWlqAOfl5QAMDAwAJSMjAE5MSwDu7u4AUUxLABQQDwATFBIAPDs9AM3FxgATFRUAFRUVAGpoaADXxskAWVVUAFpVVABdVFEAHxwYAG1wbgBxcXEATEdGACIfIQBzcnQA3NfYABAQEACgm5wAEhAQADs5OAA/PDgAfHZ3ALa2tgA+Pj4AZmhpAGZraQAXGRkA5eDhABkZGQAuLy0AWldSAGxsbACqqKgAc2pmADIwMAAfHRwA2c7QAEdHRwA0MTMAwb+/AAsLCwA2NDMAT0pHAHV1dQBnX1gAZ2JhAMrIyAAUFBQAPD4/ABYUFABpZ2cALSsrAIB+fgAxMSsAMS8uABsdHQDp5OUAMzIuABshIABwcHAAdGxtAP3//wBfXVwA////AA8PDwARDw8AuK2vAFFPTgB5eXkAGRQVAFRUVAAYGBgA5N/gAKyfoQBsZ2gAMCssABoZGwBra2sA+Pr6AB4ZGwBHREAAMTAyAF1YVwBdXV0AYVlaADgzMgDIw8QADxIQADo4OACLi4sAJygkABMTEwDe3t4AQTw7AFdRTABbT08AQ0JEAFhYWAAyLi0AbW5sAOXn5wAeHR8Ar6eoAOnn5wBvb28A/P7+AP7+/gCEhoYA//7+AHNwcgAMDg4A3NHTACMkIgBMS00AoZmaACclJQBQTk0AUk5NAFRNSgA8PDwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKQE6wKJ0CAivDMZ/TysaAHpyQjCnnptraWJSaQKWkwBdbDyhW2N8RqM9OHB7iHoAvC14eAppBISpLVzCSQK3AFo3PxjDpHWgMwlxhQcWWQC3G7QfWL8FgkEvB2wcmmgAC0wSklYDLpSATk0qO49TAB2sV1VKrsRDMkWxmpqCZwCyNA+GNIZSpmFfvZCPvRQAbp9tecWtJS4jIkh3SCMmACREEIETNmAha8GZqg6YsACcfm+HiroNGjV2l4MsahEAKIm1UCBlSzGOjru4jrm5ABWrJz5mOVSNlaVHtp0ejACOu46OuAYZQKhzZFGLvn0Ajoy7jI6Ojo6MubN2XpEXAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAA=" rel="icon" type="image/x-icon" />
</head>
<body>

        <div class = "navbar">
            <div class = "tableNavbar">
                <table cellspacing="5" >
                    <tr>
                        <td> <a href = "/"> <img src="/images/mamma.png" class = "homeButton"></a></td>
                        <td><input type = "text" placeholder="Search movie..." class="searchBar"></td>
                        <!-- <td>   <a href="/logIn"><label class="signIn">Log In</label></a></td> -->
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

        <div class="trailersRoll">
            <table cellspacing="5" class="fixed">
                <tr>
                    <td><img src="../images/prev.png" class="trailerArrow prev"></td>
                    <td><a href = "/movie"><img class = "trailerImage" src="../images/trailerImages/0.jpg" ></a></td>
                    <td><img src = "../images/next.png" class="trailerArrow next"></td>
                </tr>
            </table>
        </div>

        <div class = "belowPart">

        </div>


        <script src="../JS/index.js" charset="utf-8"></script>
</body>
</html>