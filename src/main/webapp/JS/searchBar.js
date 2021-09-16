let urlImages = "https://image.tmdb.org/t/p/original";

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
