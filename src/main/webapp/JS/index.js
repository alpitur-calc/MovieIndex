const apiURL = "https://api.themoviedb.org/3/movie/";
const apiKEY = "?api_key=dc2d670278d03763e2694d2c963a117f&language=it";
const apiKEYeng = "?api_key=dc2d670278d03763e2694d2c963a117f&language=en";
const discoverURL = "https://api.themoviedb.org/3/discover/movie/";

async function  getMovies(url, type){
    let query = "#"+type+" ul";
    $.ajax({
        type:'GET',
        url: url,
        success: function (result){
            let correlati = result.results;
            for(var i = 0; i<correlati.length; i++){
                let raccomandato = document.createElement("a");
                raccomandato.setAttribute("href", "/movie?movieId=" + result.results[i].id)
                let locandina = document.createElement("img");
                locandina.setAttribute("src", urlImages + result.results[i].poster_path);
                raccomandato.appendChild(locandina);
                let li = document.createElement("li");
                li.appendChild(raccomandato);
                document.querySelector(query ).appendChild(li);
                if(type === "new-movies" && i==0){
                    getVideos(result.results[0].id)
                    document.querySelector("body").style.backgroundImage = "url('" + "https://image.tmdb.org/t/p/original" + result.results[0].backdrop_path + "')";
                }
            }
        }
    });
}

async function getVideos(id){
    $.ajax({
        type: 'GET',
        url: apiURL + id + "/videos" + apiKEYeng,
        success: function (result){
            let videoLink = "https://www.youtube.com/embed/" + result.results[0].key;
            document.querySelector("iframe").setAttribute("src", videoLink);
        }
    });
}

getMovies(apiURL + "top_rated" + apiKEY, "best-movies");
getMovies(apiURL + "upcoming" + apiKEY, "new-movies");
getMovies(apiURL + "popular" + apiKEY, "popular-movies");

getMovies(discoverURL + apiKEY + "&genre", "popular-movies");



