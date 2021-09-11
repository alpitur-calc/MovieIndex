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
    <link rel="stylesheet" href = "/CSS/moviePage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">


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


<div class = "mainDiv">

    <div class = "movieContainer">
        <div class = "topContainer" >
            <div class="leftPanel">
                <img src="https://media4.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif?cid=790b7611031c28a0d7248ce384de39e652baf2678c658b08&rid=giphy.gif&ct=g">

                <button class = "listButton">Aggiungi alla lista</button>


                <c:if test= "${ userlogged == null }">
                    <script type = "text/javascript">
                        document.querySelector(".listButton").style.visibility = 'hidden';
                    </script>
                </c:if>




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


            <iframe width="560" height="315" src="" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                        <button type = "button" id = "sendReviewButton">Invia</button>

                    </div>

                </form>
                <script type = "text/javascript">
                    <!--Ho dovuto mettere qui lo script altimenti quando l'utente non è loggato prova ad aggiungere un listener su un pulsante che non esiste-->
                    let sendReviewButton = document.querySelector("#sendReviewButton");
                    sendReviewButton.addEventListener("click", makeReview);

                    let form = document.querySelector(".addReview");

                    async function sendReview(rating, content){
                        $.ajax({
                            type: 'POST',
                            url: '/addReviewToMovie',
                            data: {
                                movieId: movieID,
                                rating: rating,
                                content: content
                            },
                            success: function (result){
                                alert("Recensione aggiunta");
                            },
                            error: function (result){
                                alert("coglione");
                            }
                        })
                    }

                    function makeReview(){
                        let content = form.querySelector("textarea").value;
                        let rating = 5;
                        sendReview(rating, content);
                    }
                </script>
            </c:if>

            <c:if test = "${userlogged == null}">

                <div class = "cantAddReview">
                    <a href="/logIn"><label class = "logInforReview">Accedi per aggiungere una recensione</label></a>
                </div>

            </c:if>

            <div class="reviewsList">
                <ul></ul>
            </div>

        </div>
    </div>

    <div id = "domMovieId">
        ${movieId}
    </div>
    <script src="/JS/moviePage.js" charset="utf-8"></script>
</div>


<!--cazzo-->

</body>
</html>