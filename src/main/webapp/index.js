trailerImage = document.querySelector(".trailerImage");
prevButton = document.querySelector(".prevButton");
nextButton = document.querySelector(".nextButton");


let nextImageNumber = 0;
let numOfImages = 7;

nextButton.addEventListener("click", function(){
    setTimeout(function(){
        nextButton.setAttribute("src", "images/next.png")
    }, 100);
    nextImageNumber = (nextImageNumber + 1) % numOfImages;
    trailerImage.setAttribute("src", "images/trailerImages/" + nextImageNumber + ".jpg");
    nextButton.setAttribute("src", "images/nextPressed.png")
});

prevButton.addEventListener("click", function(){
    setTimeout(function(){
        prevButton.setAttribute("src", "images/prev.png")
    }, 100);
    nextImageNumber = ((nextImageNumber - 1) % numOfImages + numOfImages) % numOfImages;
    trailerImage.setAttribute("src", "images/trailerImages/" + nextImageNumber + ".jpg");
    prevButton.classList.add(".pressed");
    prevButton.setAttribute("src", "images/prevPressed.png")
});

