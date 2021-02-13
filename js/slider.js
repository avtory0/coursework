$(document).ready(function (){
    $(".header_slider").owlCarousel({
        items: 1,
        center: true,
        loop: true,
        autoplay: true,
        autoplayTimeout: 6000,
        autoplaySpeed: 800
    });

})

$(document).ready(function () {
    $(".films_slider").owlCarousel({
        margin: 30,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 800,
        autoplayHoverPause: true,
        center: true,
        nav: false,
        dots: false,
        autoWidth: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items:2,
            },
            1024: {
                items: 3,
                stagePadding: 50,
            },
            1200: {
                items: 4
            },
            1400: {
                items: 5,
                stagePadding: 100
            }
        }
    });
});
