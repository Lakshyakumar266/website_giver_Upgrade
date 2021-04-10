function closer(btnId, PlaceId, arrow) {
    let btn = document.getElementById(btnId)
    let place = document.getElementById(PlaceId)
    let Arrow = document.getElementsByClassName(arrow)

    for (let i = 0; i < Arrow.length; i++) {
        const element = Arrow[i];

        btn.addEventListener('click', () => {
            if (place.style.display != 'none') {
                place.style.display = 'none';
                element.classList.remove('anim');
            }
            else {
                place.style.display = 'block';
                element.classList.add('anim');
            }
        })
    }
}

// let buttons_div = document.getElementsByClassName('data-hande');
// for (let x = 0; x < buttons_div.length; x++) {
//     const element = buttons_div[x];
//     closer(`btn${x + 1}`, `btn-close${x + 1}`, `${x + 1}`);
// }