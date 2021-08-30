

function Review(author, rating, date, content){
    this.author = author;
    this.rating = rating;
    this.date = date;
    this.content = content;
}

let reviewsList = document.querySelector(".bottomContainer ul");



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
    ratingDiv.innerHTML = review.rating + "/100";
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
        moreButton.innerHTML = "Read More";
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

let cacca = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean non risus odio. Donec elementum hendrerit sapien, ut vulputate arcu ultrices nec. Duis ut mattis ipsum. Maecenas dictum libero eget massa ornare ultricies eu et sem. Duis maximus tortor sit amet sem euismod, vel consequat nisi congue. Praesent dignissim convallis sem. Vivamus facilisis aliquam diam, at feugiat mi. Morbi tempor arcu in interdum semper. Sed consequat arcu sit amet nibh aliquet semper. Pellentesque vitae facilisis diam, placerat dapibus nunc. Donec ullamcorper dui lorem. Mauris non aliquet risus. Aliquam eu tortor enim. Donec nec molestie erat. Suspendisse laoreet fringilla lacus, sit amet ultrices est condimentum non. Nullam sodales neque nisi, et eleifend felis convallis sed. Phasellus leo nisi, condimentum sed sollicitudin vel, laoreet finibus nisl. Pellentesque gravida ante eu purus sollicitudin, nec eleifend velit vehicula. Quisque vitae ex hendrerit, ultricies libero nec, porta velit. Suspendisse consectetur et odio nec iaculis. Integer ut posuere ipsum. Sed orci purus, egestas eget condimentum in, sollicitudin eu nulla. Vestibulum vel sem pellentesque, feugiat nulla non, laoreet dui. Ut ut tellus fringilla, porta ipsum non, dignissim sapien. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In sed urna ornare, posuere risus eu, ultricies metus. Suspendisse tristique lacus nec vulputate consectetur. Fusce a vulputate turpis, quis varius mi. Aliquam ut consequat nunc. Nullam eget molestie diam. Aliquam et mattis magna. Phasellus in placerat felis. Suspendisse potenti. Vivamus sodales libero eget vestibulum consectetur. Mauris sit amet finibus erat. Etiam efficitur orci a elit ultrices porta nec non odio. Cras quis consequat urna. Etiam augue tortor, hendrerit consequat tristique fermentum, sollicitudin vel sem. Sed sapien massa, pellentesque et faucibus vitae, fringilla et odio. Suspendisse ullamcorper, dolor nec accumsan molestie, libero mauris pretium nisi, ac molestie purus risus in elit. Aliquam ante quam, ornare ut tincidunt non, pulvinar non lorem. Cras non vestibulum arcu. Mauris tempor dignissim augue, laoreet rutrum ligula finibus in. Mauris ut lacus gravida, suscipit augue sed, feugiat urna. Pellentesque condimentum porta metus et faucibus. Fusce consequat dui in nibh cursus mollis in nec nunc. Sed fringilla libero magna, et tincidunt risus accumsan ac. Aenean hendrerit laoreet auctor. Duis at tempus neque. Fusce blandit, velit eget mattis semper, nisi metus maximus urna, quis sagittis mi massa sed lectus. Cras mollis augue a bibendum scelerisque. Sed vel elementum lectus. Vestibulum ut dolor eu neque egestas vehicula vel id mi. Phasellus non turpis rhoncus, consectetur lorem sit amet, faucibus metus. Mauris feugiat scelerisque elementum. Nulla rhoncus lacus non urna mollis iaculis. Suspendisse tincidunt dui et dapibus vulputate. Fusce pretium, nulla lobortis facilisis sodales, felis neque porttitor nunc, a accumsan massa dolor eget nisl. Vestibulum dignissim et dolor hendrerit auctor. Pellentesque at molestie tellus. Cras eu nunc in neque convallis molestie eu eu mauris. Nam non accumsan quam."
let sla = "Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla Sla "
let miaRecensione = new Review("Bo", "100", "23/23/23", cacca);

addReview(miaRecensione);
addReview(new Review("Mario Avolio Frocio", "10", "10/08/23", "A me personalmente non piace perchè non ci sono abbastanza tematiche lgbtq+ e negri"));
addReview(new Review("Dario Greggio", "0", "10/08/23", sla));
addReview(new Review("Lorenzo", "90", "10/08/23", "Bello"));
addReview(new Review("Stefano", "90", "10/08/23", "Bello"));
addReview(new Review("Emanuele", "90", "10/08/23", "Bello"));
addReview(new Review("Volpescu", "69", "10/08/23", "Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza Deh pefforza "));
addReview(new Review("Cippe", "11", "10/08/23", "Noh"));










