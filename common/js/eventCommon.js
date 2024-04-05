// Event UI System
var EUI = window.EUI || (function($){   
    var $win = $(window);
    var $html = $('html, body');

    return {
        init: function(){
            EUI.baseUI();
        },
        baseUI: function(){
            var tabUI = $('.tab_base');
            var popupUI = $('.popup-wrap');
            var toggleWarningUI = $('.evtoggleWarning');

            if (tabUI.length) {
                tabUI.each(function(){
                    var target = $(this).find('li.on').find('a').attr('href');
                    $(target).show();
                });
                tabUI.find('a').on('click', function(e){
                    e.preventDefault();
                    var disabledTab = $(this).closest('.tab_base').data('disabledTab');
                    var disabledMsg = $(this).closest('.tab_base').data('disabledMsg');
                    if (disabledTab) {
                        var activeIndex = disabledTab.indexOf($(this).closest('li').index() + 1);
                        if (activeIndex > -1) {
                            return alert(disabledMsg[activeIndex]);
                        }
                    }
                    var target = $(this).attr('href');
                    $(this).closest('li').addClass('on');
                    $(this).closest('li').siblings().removeClass('on');
                    $(target).show();
                    $(target).siblings().hide();
                });
            }

            if (popupUI.length) {
                $('.popup-wrap .btn_close, .popup-dimm').on('click', function(e){
                    e.preventDefault();
                    var $class = $(this).attr('class');
                    if ($class === 'btn_close') { 
                        if ($(this).closest('.popup-wrap').data('dimmclick') !== false) {
                            EUI.closePopup();
                        }
                    } else if ($class === 'popup-dimm') {
                        if ($(this).next('.popup-wrap').data('dimmclick') !== false) {
                            EUI.closePopup();
                        }
                    }
                });
            }

            if (toggleWarningUI.length) {
                toggleWarningUI.each(function(){
                    var $this = $(this);
                    $this.find('.w_tit').on('click', function(){
                        $this.toggleClass('on');
                    })
                })
            }
            
        },
        followQuick: function(target, offset, type){
            var $evWrap = $('#eventWrap');            
            var $quick = $('.flt_inner');
            var activeQuick = false;

            var position = null;
            if (type === 1 || type === undefined) {
                position = $(target).offset().top;
            }
            if (type === 2) {
                position = $(target).offset().top + offset
            }
            
            if (offset !== undefined) {
                $quick.css({
                    opacity: 1,
                    top: offset,
                });
                $win.on('scroll', function(){
                    if (offset >= $win.scrollTop() && !activeQuick) {
                        activeQuick = true;
                        $quick.stop().css("top", offset);
                    }
                    if (position < $win.scrollTop()) {
                        activeQuick = false;
                        if (type === 2) {
                            $quick.stop().animate({
                                top: $win.scrollTop() - $evWrap.offset().top + 100
                            }, 400);
                        } else {
                            $quick.stop().animate({
                                top: $win.scrollTop() - $evWrap.offset().top + offset + 10
                            }, 400);
                        }
                    }
                });    
            } else {
                $quick.css({
                    opacity: 1,
                    top: position - 150,
                });
                $win.on('scroll', function(){
                    position = $(target).offset().top;
                    if (position >= $win.scrollTop() && !activeQuick) {
                        activeQuick = true;
                        $quick.css("top", position - 150);
                    } 
                    if (position < $win.scrollTop()) {
                        activeQuick = false;
                        $quick.stop().animate({
                            top: $win.scrollTop() - $evWrap.offset().top + 100
                        }, 400);
                    }
                });    
            }
        },
        moveQuick(target, top) {
            var calTop = top ? $(target).offset().top + top : $(target).offset().top
            $html.animate({ scrollTop: calTop }, 400);
        },
        slickUI(obj) {
            var defaultOption = {
                speed: 200,
                touchThreshold: 100,
                slidesToScroll: 1,
                dots: false,
                arrows: false,
                slidesToShow: obj.num || 1,
                autoplaySpeed: 3000,
                autoplay: true,
                infinite: true,
            };
            var customOption = {};
            
            if (obj.mode === 'vertical') {
                customOption = {
                    vertical: true,
                    verticalSwiping: true,
                    centerMode: true,
                    rows: 0,
                }
            } else if (obj.mode === 'tab') {
                var slideCount = $(obj.target).children('div').length;
                var randomStart = Math.floor(Math.random() * slideCount);
                customOption = {
                    initialSlide: obj.random ? randomStart : obj.initialSlide || 0,
                    autoplay: false,
                    fade: true,
                    dots: true,
                }
            } else if (obj.mode === 'horizon') {
                customOption = {
                    dots: true,
                    arrows: true,
                    autoplay: true,
                }
                var isAuto = obj.auto ? obj.auto : false
                if (obj.type === 2) {
                    customOption = {
                        dots: false,
                        arrows: false,
                        autoplay: isAuto,
                        infinite: false,
                        responsive: [
                            {
                                breakpoint: 768,
                                settings: {
                                    slidesToShow: 2,
                                }
                            }
                        ]
                    }
                }
                if (obj.type === 3) {
                    customOption = {
                        dots: false,
                        arrows: true,
                        autoplay: isAuto,
                        adaptiveHeight: true,
                    }
                }
            }
            var getOption = Object.assign(defaultOption, customOption);
            return $(obj.target).slick(getOption);
        },
        openPopup(target, absolute, callback) {
            var $popup = $('.popup-wrap' + target);
            if ($popup.data('width')) {
                $popup.css('width', $popup.data('width') + 'px');
            }
            if (!$popup.hasClass('wide') && absolute) {
                $popup.addClass('abs');
                $popup.css('top', $win.scrollTop() + ($popup.outerHeight() / 4) - $('#mo_globalMenu').outerHeight());
            }
            $('.popup-wrap' + target).fadeIn();
            $('.popup-wrap' + target).prev('.popup-dimm').fadeIn();
            if (typeof callback === 'function') {
                callback();
            }
        },
        closePopup(target, callback) {
            if (target) {
                $('.popup-wrap' + target +', .popup-dimm').hide();
            } else {
                $('.popup-wrap, .popup-dimm').hide();
            }
            if (typeof callback === 'function') {
                callback();
            }
        },
        createYoutubePopup(target, code, cookieName, autoplay) {
            var baseUrl = 'https://www.youtube.com/embed/';
            var $iframe = $(target).find('iframe');
            if (autoplay === false) {
                $iframe.attr("src", baseUrl + code + "?autoplay=0");
            } else {
                $iframe.attr("src", baseUrl + code + "?autoplay=1&mute=1");
            }
            $(target).find('button.btn_x').on('click', function(){
                $(target + ', .popup-dimm').hide();
                $iframe.attr("src", baseUrl + code + "?autoplay=0");
            });
            $(target).find('button.btn_today').on('click', function(){
                setCookie(cookieName, "close", 1);
                if ($(target).css("display") == "block") {
                    $(target + ", .popup-dimm").hide();
                    $iframe.attr("src", baseUrl + code + "?autoplay=0");
                }
            });
        },
        toggleAnimation(obj) {
            !function toggleOn() {
                setTimeout(function(){
                    $(obj.selector).addClass('on');
                    setTimeout(function(){
                        $(obj.selector).removeClass('on');
                        toggleOn();
                    }, obj.speed);
                }, obj.speed);
            }();
        }
    }
}(jQuery));

// Run Script (Event UI System)
$(function(){
    EUI.init();
});

// Add $ Prototype
$.urlParam = function(name){
    var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
    if (results == null){
      return null;
    } else {
        return decodeURI(results[1]) || 0;
    }
}

var triggerMoveByHash = function(delay){
    var hash = window.location.hash;
	if (hash) {
		setTimeout(function(){
			window.scrollTo(0, $(hash).offset().top)
		}, delay)
	}
}