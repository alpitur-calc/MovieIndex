const apiURL = "https://api.themoviedb.org/3/movie/";
const apiKEY = "?api_key=dc2d670278d03763e2694d2c963a117f&language=it";

let urlImages = "https://image.tmdb.org/t/p/original";
let watchMovies = document.querySelectorAll(".watchlist-list");

async function getInfos(){
    for(var i = 0; i<watchMovies.length; i++){
        let movieID = watchMovies[i].querySelector("#domMovieId").innerHTML;
        $.ajax({
            type: 'GET',
            url: apiURL + movieID + apiKEY,
            success: function (result) {
                let movieContainer = document.createElement("li");
                let moviePicContainer = document.createElement("div");
                let movieLink = document.createElement("a");
                movieLink.setAttribute("href", "/movie?movieId=" + result.id)
                let moviePic = document.createElement("img");
                moviePic.setAttribute("src", urlImages + result.poster_path);
                movieLink.appendChild(moviePic);
                moviePicContainer.appendChild(movieLink);
                let movieTitleContainer = document.createElement("div");
                let movieTitle = document.createElement("label");
                movieTitle.innerHTML = result.title;
                movieTitleContainer.appendChild(movieTitle);
                movieContainer.appendChild(moviePicContainer);
                //movieContainer.appendChild(movieTitleContainer);
                document.querySelector(".watchlist-list").appendChild(movieContainer);
            }
        });
    }
}

getInfos();