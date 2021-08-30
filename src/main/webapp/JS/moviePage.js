

function Review(author, rating, date, content){
    this.author = author;
    this.rating = rating;
    this.date = date;
    this.content = content;
}

reviewsList = document.querySelector(".bottomContainer ul");

function addReview(review){

    let listIndex = document.createElement("li");
    let reviewDiv = document.createElement("div");
    let ratingAndAuthorDiv = document.createElement("div");
    let authorDiv = document.createElement("div");
    let ratingDiv = document.createElement("div");
    let contentDiv = document.createElement("div");
    let para = document.createAttribute("p");
    let dateDiv = document.createAttribute("div");
    reviewDiv.setAttribute("class", "review");
    ratingAndAuthorDiv.setAttribute("class", "ratingAndAuthor");
    authorDiv.setAttribute("class", "author")
    authorDiv.innerHTML = review.author;
    ratingDiv.setAttribute("class", "rating");
    ratingDiv.innerHTML = review.rating;
    contentDiv.setAttribute("class", "reviewContent");
    para.innerHTML = review.content;
    dateDiv.setAttribute("class", "date");
    dateDiv.innerHTML = review.date;

    listIndex.appendChild(reviewDiv);
    reviewDiv.appendChild(ratingAndAuthorDiv);
    reviewDiv.appendChild(contentDiv);
    reviewDiv.appendChild(dateDiv);
    ratingAndAuthorDiv.appendChild(authorDiv);
    ratingAndAuthorDiv.appendChild(ratingDiv);
    contentDiv.appendChild(para);

    reviewsList.appendChild(listIndex);

}

miaRecensione = Review("Lorenzo", "10", "23/23/23", "cacca puzza");

addReview(miaRecensione);
alert("cazzo");
