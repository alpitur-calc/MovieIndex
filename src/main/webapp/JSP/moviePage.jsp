
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Morte a DB</title>
    <link rel="stylesheet" href = "/CSS/indexStyles.css">
    <link rel="stylesheet" href = "/CSS/navbar.css">
    <link rel="stylesheet" href = "/CSS/moviePage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"> type="text/javascript"</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
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



<div class = "mainDiv">

    <div class = "movieContainer">
        <div class = "topContainer" >
            <div class="leftPanel">
                <img src="https://media4.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif?cid=790b7611031c28a0d7248ce384de39e652baf2678c658b08&rid=giphy.gif&ct=g">
            </div>
            <div class = "rightPanel">
                <div class="title">
                    <h1>Titolo Film</h1>
                </div>

                    <h3>Genere: </h3>
                    <ul class = "movieGenres descRow">
                        <li></li>
                    </ul>

                    <div class = "movieDirector descRow">
                        <h3>Regista: </h3>
                        <p></p>
                    </div>

                    <h3>Attori pricipali: </h3>
                    <div class = "movieStars descRow">

                        <p id="attore1"></p>
                        <p id="attore2"></p>
                        <p id="attore3"></p>
                    </div>

                    <div class = "movieRuntime descRow">
                        <h3>Durata: </h3>
                        <p></p>
                    </div>
                <div class="releaseDate descRow">
                    <h3>Data di uscita: </h3>
                    <p></p>
                </div>



                <h3 class="overallRating">Voto: n/a</h3>
            </div>
        </div>



        <div class = "bottomContainer">


            <iframe width="560" height="315" src="https://www.youtube.com/embed/9YffrCViTVk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <h1 id = "trama">Trama: </h1>
            <h6 class="moviePlot"></h6>
            <div class = "correlatiTitolo">
            <h2>Film Correlati:</h2>
            </div>
            <div class="recommendedMovies">
                <ul>
                    <li><img src=""></li>
                </ul>
            </div>



            <c:if test= "${userlogged != null}">
            <form class = "addReview">
                <h1>Il tuo voto: </h1>
                <div class="rating-css">
                    <div class="star-icon">
                        <input type="radio" name="rating1" id="rating1">
                        <label for="rating1" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating2">
                        <label for="rating2" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating3">
                        <label for="rating3" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating4">
                        <label for="rating4" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating5">
                        <label for="rating5" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating6">
                        <label for="rating6" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating7">
                        <label for="rating7" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating8">
                        <label for="rating8" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating9">
                        <label for="rating9" class="fa fa-star"></label>
                        <input type="radio" name="rating1" id="rating10">
                        <label for="rating10" class="fa fa-star"></label>
                    </div>
                </div>
                <h1>Il tuo commento: </h1>

                <div class="reviewAndButton">
                    <textarea class = "reviewBox"></textarea>
                    <button>Invia</button>
                </div>

            </form>
            </c:if>

            <c:if test = "${userlogged == null}">


            </c:if>





            <div class="reviewsList">
                <ul></ul>
            </div>

        </div>
    </div>

    <script src="/JS/moviePage.js" charset="utf-8"></script>
</div>




</body>
</html>