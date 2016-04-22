; (function ($) {
    $.extend({
        'nicenav': function (con) {
            con = typeof con === 'number' ? con : 400;
            var $lis = $('#z-info-new-ul>li'), $h = $('#buoy')
            $lis.hover(function () {
                $h.stop().animate({
                    'top': $(this).offsetParent().context.offsetLeft
                }, con);
            }, function () {
                $h.stop().animate({
                    'top': '-50px'
                }, con);
            })
        }
    });
}(jQuery));