function date() {
    let date = new Date().getFullYear();
    let time_place = document.getElementById('year-holder');
    time_place.innerHTML = `
        ${date}-${date + 1}
    `
}
date();
