function changeImage(source){
    document.querySelector(".profilePicture").setAttribute("src", source);
    document.querySelector(".profileimage").setAttribute("value", source);
}

/*
async function uploadFile() {
    let formData = new FormData();
    formData.append("profileimage", profileimage.files[0]);
    let response = await fetch('/saveImage', {
        method: "POST",
        body: formData

    });

    if (response.status == 200) {
        alert("File successfully uploaded.");
    }
}*/