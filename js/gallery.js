function on(id) {
    // document.getElementById("overlay").style.display = "block";
    // $(`${id}, .lightbox-img`).fadeIn();
    // $(`${id}, .overlay`).fadeIn();
    // $(`${id}`).fadeIn();

    $(id).fadeIn();
    console.log("in");
    console.log(id);
}

function off(id) {
    // document.getElementById("overlay").style.display = "none";
    // $(id).fadeIn();
    // $(`${id}, .lightbox-img`).fadeOut();
    // $(`${id}, .overlay`).fadeOut();
    // $(`${id}`).stop().fadeOut();
    $(id).fadeOut();

    console.log("out");
    console.log(id);
}

function off2() {
    // document.getElementById("overlay").style.display = "none";
    // $(id).fadeIn();
    // $(`${id}, .lightbox-img`).fadeOut();
    // $(`${id}, .overlay`).fadeOut();
    // $(`${id}`).stop().fadeOut();
    $("#headrig").fadeOut();
}
function generate_gallery(photos) {
    let n_photos = photos.length;

    console.log(n_photos);

    let gallery = document.getElementById("gallery");

    for (let i = 0; i < n_photos; i++) {
        console.log(n_photos);

        let img = photos[i].file;
        let id = "photo"+i;

        // Add photo to gallery
        var div = document.createElement("div");
        div.innerHTML = "<img src="+img+" class='thumbnail-img' onclick='on("+id+")'/>"
        gallery.appendChild(div);

        // Create overlay image
        var img_overlay = document.createElement("div");
        img_overlay.id = id
        img_overlay.classList.add('overlay');
        img_overlay.innerHTML = 
            "<img src="+img+" class='lightbox-img' />" + 
            "<div onclick='off(id="+id+")' class='overlay2'></div>"
        document.body.appendChild(img_overlay);
    }
}