function Review(author, rating, date, content){
    this.author = author;
    this.rating = rating;
    this.date = date;
    this.content = content;
}

let reviewsList = document.querySelector(".reviewsList ul");
const apiURL = "https://api.themoviedb.org/3/movie/";
const apiKEY = "?api_key=dc2d670278d03763e2694d2c963a117f&language=it";
const apiKEYeng = "?api_key=dc2d670278d03763e2694d2c963a117f&language=en";




function addReview(review){

    let listIndex = document.createElement("li");
    let reviewDiv = document.createElement("div");
    let ratingAndAuthorDiv = document.createElement("div");
    let authorDiv = document.createElement("div");
    let ratingDiv = document.createElement("div");
    let contentDiv = document.createElement("div");
    let para = document.createElement("p");
    let dateDiv = document.createElement("div");

    reviewDiv.setAttribute("class", "review");
    ratingAndAuthorDiv.setAttribute("class", "ratingAndAuthor");
    authorDiv.setAttribute("class", "author")
    authorDiv.innerHTML = review.author;
    ratingDiv.setAttribute("class", "rating");
    ratingDiv.innerHTML = review.rating + "/10";
    contentDiv.setAttribute("class", "reviewContent");
    dateDiv.setAttribute("class", "date");
    dateDiv.innerHTML = review.date;



    listIndex.appendChild(reviewDiv);
    reviewDiv.appendChild(ratingAndAuthorDiv);
    reviewDiv.appendChild(contentDiv);
    reviewDiv.appendChild(dateDiv);
    ratingAndAuthorDiv.appendChild(authorDiv);
    ratingAndAuthorDiv.appendChild(ratingDiv);

    let maxSize = 1000;
    if(review.content.length > maxSize){
        let firstPart = document.createTextNode(review.content.substring(0, maxSize));
        let lastPart = document.createElement("span");
        lastPart.setAttribute("class", "lastPart");
        lastPart.innerHTML = review.content.substring(maxSize + 1,review.content.length);

        let dotSpan = document.createElement("span");
        dotSpan.setAttribute("class", "dotSpan");
        dotSpan.innerHTML= "...";

        para.appendChild(firstPart);
        para.appendChild(dotSpan);
        para.appendChild(lastPart);


        let moreButton = document.createElement("button");
        moreButton.setAttribute("class", "moreButton");
        moreButton.innerHTML = "Read more";
        lastPart.style.display = "none";



        moreButton.addEventListener("click", function(){
            if (dotSpan.style.display === "none") {
                dotSpan.style.display = "inline";
                moreButton.innerHTML = "Read more";
                lastPart.style.display = "none";
            } else {
                dotSpan.style.display = "none";
                moreButton.innerHTML = "Read less";
                lastPart.style.display = "inline";
            }
        });


        contentDiv.appendChild(para);
        contentDiv.appendChild(moreButton);


    }

    else{
        para.innerHTML = review.content;
        contentDiv.appendChild(para);
    }






    reviewsList.appendChild(listIndex);

}



let miaRecensione = new Review("Lorenzo", "10", "oggi", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla non sagittis turpis, ut aliquam augue. Fusce euismod dolor sed ex mollis mollis ac a orci. Aliquam vel lacus at tortor condimentum volutpat et in ligula. Etiam elementum metus ac ligula tincidunt, sed venenatis quam eleifend. Aliquam dapibus neque vel risus rutrum mollis. Etiam scelerisque imperdiet justo, et condimentum eros tristique vel. Integer eu nisi ac sem bibendum dictum at sit amet lacus. In nisl nisi, scelerisque non consectetur non, finibus ut ligula. Nam vel nisl congue, tristique nibh sed, consequat massa.Aliquam porttitor vel augue id maximus. Mauris gravida diam eu turpis sollicitudin, sit amet ullamcorper arcu tristique. Nulla non sagittis nunc, in scelerisque eros. Maecenas magna orci, ultricies nec imperdiet id, pellentesque eget ipsum. Donec facilisis varius congue. Nulla consectetur dignissim eros eu aliquam. Proin id pulvinar neque, quis suscipit enim. Vestibulum eget volutpat orci. Duis diam quam, pharetra tempus nisl non, porta porttitor sem. Nulla posuere et justo sit amet luctus. Aliquam erat volutpat. Fusce tempor tincidunt elit vel aliquam. Nunc nec dictum velit.");





let movieID = document.querySelector("#domMovieId").innerHTML;
let movieDetailsURL = apiURL + movieID + apiKEY;
let movieImagesURL = apiURL + movieID + "/images" + apiKEY;
let movieReccomendationsURL = apiURL + movieID + "/recomendations" + apiKEY;
let movieCreditsURL = apiURL + movieID + "/credits" + apiKEY;
let urlImages = "https://image.tmdb.org/t/p/original";
let castURL = apiURL + movieID + "/credits" + apiKEY;
let videosURL = apiURL + movieID + "/videos" + apiKEYeng;
let recommendationsURL = apiURL + movieID + "/recommendations" + apiKEY;
let imagesURL = apiURL + movieID + "/images" + apiKEY;


async function getInfos(){
    $.ajax({
        type: 'GET',
        url: apiURL + movieID + apiKEY,
        success: function (result) {
            let genres = result.genres;
            let plot = result.overview;
            let title = result.title;
            let releaseDate = result.release_date.slice(0,4);
            let runtime = result.runtime + " min";
            let averageScore = "Voto: " + result.vote_average + "/10";
            let img = urlImages + result.poster_path;
            let sfondo = urlImages + result.backdrop_path;
            document.querySelector(".moviePlot").innerHTML = plot;
            document.querySelector(".rightPanel h1").innerHTML = title;
            document.querySelector(".overallRating").innerHTML = averageScore;
            document.querySelector(".leftPanel img").setAttribute("src", img);
            document.querySelector(".releaseDate p").innerHTML = releaseDate;
            document.querySelector(".movieRuntime p").innerHTML = runtime;
            document.querySelector("body").style.backgroundImage = "url('" + sfondo + "')";

            for (var i =0; i<numOfGenres; i++){
                let listItem = document.createElement("li");
                let genre = document.createElement("p");
                genre.innerHTML = genres[i].name;
                listItem.appendChild(genre);
                document.querySelector(".movieGenres").appendChild(listItem);
            }

        }
    });
}

let director = null;
let actors = [];
const numOfActors = 3;
const numOfGenres = 4;
async function getCast(){
    $.ajax({
        type:'GET',
        url: apiURL + movieID + "/credits" + apiKEY,
        success: function (result){
            for(var i = 0; i<result.crew.length; i++){
                let elem = result.crew[i];
                if (elem.job === "Director") {
                    director = elem.original_name;
                }
            }

            for (var k = 0; k<result.cast.length; k++){
                let elem = result.cast[k].original_name;
                actors.push(elem);
            }

            document.querySelector(".movieDirector p").innerHTML = director;
            document.querySelector(".movieStars #attore1").innerHTML = actors[0];
            document.querySelector(".movieStars #attore2").innerHTML = actors[1];
            document.querySelector(".movieStars #attore3").innerHTML = actors[2];
        }


    });
}


async function getVideos(){
    $.ajax({
        type: 'GET',
        url: apiURL + movieID + "/videos" + apiKEYeng,
        success: function (result){
            let videoLink = "https://www.youtube.com/embed/" + result.results[0].key;
            document.querySelector("iframe").setAttribute("src", videoLink);
        }
    });
}

async function  getRecommended(){
    $.ajax({
        type:'GET',
        url: apiURL + movieID + "/recommendations" + apiKEY,
        success: function (result){
            let correlati = result.results;
            for(var i = 0; i<correlati.length; i++){
                let raccomandato = document.createElement("a");
                raccomandato.setAttribute("href", "/movie?movieId=" + result.results[i].id) //TODO: controller link moviePage
                let locandina = document.createElement("img");
                locandina.setAttribute("src", urlImages + result.results[i].poster_path);
                raccomandato.appendChild(locandina);
                let li = document.createElement("li");
                li.appendChild(raccomandato);
                document.querySelector(".recommendedMovies ul" ).appendChild(li);
            }
        }
    });
}

async function  addToWatchList(){
    $.ajax({
        type: 'POST',
        url: '/addMovieToWatchlist',
        data: {
            movieId: movieID
        },
        success: function (result){

        }
    });
}

async function  removeFromWatchList(){
    $.ajax({
        type: 'POST',
        url: '/removeMovieFromWatchlist',
        data: {
            movieId: movieID
        },
        success: function (result){

        }
    });
}

async function checkWatchList(){
    $.ajax({
        type: 'POST',
        url: '/isMovieAdded',
        data: {
            movieId: movieID
        },
        success: function (result){


            document.querySelector(".listButton").innerHTML = "Rimuovi dalla lista";
            document.querySelector(".listButton").style.backgroundColor = "red";
        },
        error: function (result){
            document.querySelector(".listButton").innerHTML = "Aggiungi alla lista";
            document.querySelector(".listButton").style.backgroundColor = "#4dbf00";
        }

    })
}


async function swapList(){
    $.ajax({
        type: 'POST',
        url: '/isMovieAdded',
        data: {
            movieId: movieID
        },
        success: function (result){
            removeFromWatchList();
            document.querySelector(".listButton").innerHTML = "Aggiungi alla lista";
            document.querySelector(".listButton").style.backgroundColor = "#4dbf00";
            //console.log("rimosso");
        },
        error: function (result){
            document.querySelector(".listButton").innerHTML = "Rimuovi dalla lista";
            document.querySelector(".listButton").style.backgroundColor = "red";
            addToWatchList();
            //console.log("aggiunto");
        }

    })
}



document.querySelector(".listButton").addEventListener("click", swapList);

async function getReviews(){
    await sleep(1000)
    $.ajax({
        type: 'GET',
        url: '/getReviews',
        data: {
            movieId: parseInt(movieID)
        },
        success : function (result){
            reviewsList.innerHTML = "";
            for( let i = 0; i< result.results.length; i++){
                addReview(new Review(result.results[i].iduser, result.results[i].rating, result.results[i].date, result.results[i].content));
            }
        },
    });
}

function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

let searchbar = document.querySelector(".searchBar");
searchbar.addEventListener("keyup", searchMovies);

const searchURL = "https://api.themoviedb.org/3/search/movie/?query=";

async function searchMovies(val) {
    let list = document.querySelector(".searchBar-container ul");
    let content = searchbar.value;
    let nRisultati = 5;
    if (document.querySelector(".searchBar").value === "" ){
        list.innerHTML = "";
    }
    else{
        $.ajax({
            type: 'GET',
            url: searchURL + content + "&api_key=dc2d670278d03763e2694d2c963a117f&language=it",
            success: function (result) {
                list.innerHTML = "";
                for (let i = 0; i < nRisultati; i++) {
                    let li = document.createElement("li");
                    let movie = document.createElement("div");
                    movie.setAttribute("class", "searchResult");
                    let anchor = document.createElement("a");
                    anchor.setAttribute("href", "/movie?movieId=" + result.results[i].id)
                    let poster = document.createElement("img");
                    poster.setAttribute("src", urlImages + result.results[i].poster_path);
                    let title = document.createElement("h2");
                    title.innerHTML = result.results[i].title;
                    anchor.appendChild(poster);
                    anchor.appendChild(title)
                    movie.appendChild(anchor);
                    li.appendChild(movie);
                    list.appendChild(li);
                }
            }
        });
    }
}

window.addEventListener("click", function (){
    document.querySelector(".searchBar-container ul").innerHTML = "";
})

getInfos();
getCast();
getVideos();
getRecommended();
checkWatchList();
getReviews();

function mi(x) {
    if (x.matches) {
        document.querySelector(".logo").innerHTML = "MI";
    }
    else{
        document.querySelector(".logo").innerHTML = "MovieIndex";
    }
}

var x = window.matchMedia("(max-width: 1160px)")
mi(x) // Call listener function at run time
x.addListener(mi) // Attach listener function on state changes

mi();