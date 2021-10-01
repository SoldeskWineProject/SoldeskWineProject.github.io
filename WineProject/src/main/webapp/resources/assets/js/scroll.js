jQuery(document).ready(function() {
    var scrollSmoth = function(target) {
        if (0 <= jQuery(window).scrollTop()) {
            target.stop().animate({
                 // #subNav를 수직중앙에 놓기위한 계산식
                top: (jQuery(window).scrollTop() + (jQuery(window).height() * 0.5)) - (target.height() / 2)
            }, 400);
        }
    }
    scrollSmoth(jQuery('#subNav'));

    jQuery(window).on('scroll', function() {
        scrollSmoth(jQuery('#subNav'));
    });

    var i;
    var objTop = new Array;
    for (i = 0; i < jQuery('#contentWrap > div').length; i++) {
        objTop.push(jQuery('#contentWrap > div').eq(i).offset().top);
    }

    jQuery('#subNav > ul > li > a').on('click', function() {
        jQuery("html, body").stop().animate({
            scrollTop: objTop[jQuery('li').index(this)],
        }, 400);
    })
});