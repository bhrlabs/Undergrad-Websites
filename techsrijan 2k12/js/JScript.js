$(window).load(function () {
    $('#sti-menu').iconmenu({
        animMouseenter: {
            'mText': { speed: 400, easing: 'easeOutExpo', delay: 140, dir: 1 },
            'sText': { speed: 400, easing: 'easeOutExpo', delay: 0, dir: 1 },
            'icon': { speed: 800, easing: 'easeOutBounce', delay: 280, dir: 1 }
        },
        animMouseleave: {
            'mText': { speed: 400, easing: 'easeInExpo', delay: 140, dir: 1 },
            'sText': { speed: 400, easing: 'easeInExpo', delay: 280, dir: 1 },
            'icon': { speed: 400, easing: 'easeInExpo', delay: 0, dir: 1 }
        }
    });
});