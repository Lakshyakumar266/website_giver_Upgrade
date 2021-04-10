$(window).on('scroll', () => {
    if ($(window).scrollTop()) {
        $('nav').addClass('black');
        $('.scroll').addClass('black');
        $('.links').addClass('black')
        $('.top').addClass('visible')
    }
    else {
        $('.scroll').removeClass('black');
        $('nav').removeClass('black');
        $('.links').removeClass('black')
        $('.top').removeClass('visible')
    }
})