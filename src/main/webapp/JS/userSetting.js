document.getElementById("profileimage").onchange = function() {
    if (this.files && this.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            document.getElementById('profile-pic').setAttribute('src', e.target.result);
        };
        reader.readAsDataURL(this.files[0]);
    }
}

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
}

async function getProfilePic(){
    $.ajax({
        type:'GET',
        success:function (result){
            $('#profilePicture').attr('src', `data:image/png;base64,` + result.body);
        }
    });
}

getProfilePic();