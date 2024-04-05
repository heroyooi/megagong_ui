$(document).ready(function(){
    gnbMenu();
    selectTab("#tab01");  //선생님 메인1
    selectTab("#tab02");  //선생님 메인2
    selectTab("#tab04");  //수험정보 sub01
    selectTab("#tab05");  //수험정보 sub02
    selectTab("#tab07"); //자주묻는질문 tab
    selectTab("#tab08"); //인터넷서점

    try {
        minHeight();
    } catch (e) { }

    /*공통 header 왼쪽 배너*/
    if ($('#headerB .swiper-slide').length > 1) {
        var swiper = new Swiper('#headerB', {
            direction: 'vertical',
            autoplay: {
	            delay: 2500,
	            disableOnInteraction: false,
	        },
            loop: true,
            pagination: {
                el: '#headerB .swiper-pagination',
                clickable: true,
            },
        });
    }

	/* GNB 고정 Test */
	(function(){
		var root = $('.hd_utility');
		var hdLogo = $('.hd_logo');
		$(window).scroll(function(){
			$.fn.gnbFixed = function(){
				if($(window).scrollTop() > hdLogo.offset().top + hdLogo.innerHeight()){
					root.addClass('fixed');
					$('.hd_bottom').addClass('fixed');
					hdLogo.addClass('fixed');
					$('.scr_header').css({top:'62px'});
				}else{
					root.removeClass('fixed');
					$('.hd_bottom').removeClass('fixed');
					hdLogo.removeClass('fixed');
				};
			};
//			$(document).gnbFixed();
		});
    })();
    


    /* ---헤더 링크 리스트 .homep_link --- */
    $('.hd_top .homep_link .road1').click(function () {
        //console.log($(this).hasClass('on'));
        if ($(this).hasClass('on')) {
            $(this).removeClass('on');
        } else {
            $('.hd_top .homep_link .road1').removeClass('on');
            $(this).addClass('on');
        }
    });
    
    /* ---// 헤더 링크 리스트 .homep_link --- */


    /* --- 헤더 '공무원강좌' 9/7급 셀렉트 --- */
    
    
    var dthidx;

    $("#headertop .hd_utility .mnu_list.off .depview").hover(function(){
        dthidx = $(this).index();

        $("#headertop .hd_utility .mnu_list.off  > li").each(function(i){
            if(dthidx == i){
                //over
                $(this).addClass("on");
                $(this).find(".depth_hover").show();
            }else{
                //out
                $(this).removeClass("on");
                $(this).find(".depth_hover").hide();
            };
        });

    },  function(){

        dthidx = $("#headertop .hd_utility .mnu_list.off  > li").length;


        $("#headertop .hd_utility .mnu_list.off  > li").each(function(i){
            if(dthidx == i){
                //over
                $(this).addClass("on");
                $(this).find(".depth_hover").show();
            }else{
                //out
                $(this).removeClass("on");
                $(this).find(".depth_hover").hide();
            };
        });
    }); 



    
    /* --- // 헤더 '공무원강좌' 9/7급 셀렉트 --- */



    /* ---온라인 학원 링크 리스트 .hd_utility.right_btn --- */

    // depth2
    $('.hd_utility .right_btn.online > a').click(function () {
        if ($(this).hasClass('on')) {
            $(this).removeClass('on');
        } else {
            $('.hd_utility .right_btn.online > a').removeClass('on');
            $(this).addClass('on');

        }
    });

    // depth3
    $('.hd_utility .right_btn.online a.road2').click(function () {
        if ($(this).hasClass('on')) {
            $(this).removeClass('on');
        } else {
            $(this).addClass('on');
        }
    });

    /* ---// 온라인 학원 링크 리스트 homep_link --- */

    if ($('.mg_popup_wrap').length) {
        initMegaPopup();
    }
});

function gnbMenu(){
  $('.lnb li').bind('click', function () {
	var target = $(this);
    if(!$(this).hasClass("on")){
  		$(this).parents().find('.lnb li').removeClass("on");
  		$(this).addClass("on");
  	}else{
  		$(this).removeClass('on');
  	}
	});
}

function minHeight() {
    try {
        var footerH = document.getElementById('mFooter').offsetHeight,
          headerH = document.getElementById('mheader').offsetHeight,
          sectionH = (window.innerHeight) - footerH - headerH;
        document.getElementById('mContainer').style.minHeight = sectionH + 'px';
    } catch (e) {
        var footerH = document.getElementById('footer').offsetHeight,
          headerH = document.getElementById('headertop').offsetHeight,
          sectionH = (window.innerHeight) - footerH - headerH;
        document.getElementById('mContainer').style.minHeight = sectionH + 'px';
    }
}

/*common tab*/
function selectTab(selector){
   var selectedTab =null;
   var Tabs = $(selector).find("li");
   Tabs.click(function(){
     selectedTab = $(this);
     if(selectedTab!=null){
       selectedTab.parent().find("li").removeClass("on");
       selectedTab.addClass("on");
       selectedTab.parent().siblings().find($(".tab_content")).css('display','none');
       var activeTab = selectedTab.attr("rel");
       $("#" + activeTab).fadeIn()
     }
   });
 }


 //공용레이어 처리////////////////////////////////////////////////////////
function fncLayerShow(i, a, s) {

    //팝업개체
    var e = $('#' + i);

    //화면의 높이와 너비를 구한다.
    var maskWidth = $(document).width();
    var maskHeight = $(document).height();

    var popWidth = e.width();

    var popHeight = e.height();
    $("body").append("<div class='darkmask'></div>");
    var t = $(".darkmask");
    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    t.css({ 'width': '100%', 'height': maskHeight });

    //애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
    t.fadeIn(1);
    $('html,body').css('overflow','hidden');
    t.fadeTo("slow", 0.8);

    var ph = $(window).height() - popHeight;
    if (ph < 0) { ph = 0; }
    e.css({ 'left': ($(window).width() - popWidth) / 2, 'top': (ph) / 2 });

    eval("e." + a + "('" + s + "')");
}

function fncLayerHide(i, a, s) {
    var t = $(".darkmask");

    t.fadeOut('fast');
    $('.darkmask').remove();
    $('html,body').css('overflow','visible');
    var e = $('#' + i);
    eval("e." + a + "('" + s + "')");
}
//공용레이어 처리////////////////////////////////////////////////////////

// 슬릭 랜덤처리시 사용 , ex : $(".elem").randomize().slick();
$.fn.randomize = function (selector) {
  var $elems = selector ? $(this).find(selector) : $(this).children(),
      $parents = $elems.parent();

  $parents.each(function () {
      $(this).children(selector).sort(function (childA, childB) {
          // * Prevent last slide from being reordered
          if($(childB).index() !== $(this).children(selector).length - 1) {
              return Math.round(Math.random()) - 0.5;
          }
      }.bind(this)).detach().appendTo(this);
  });

  return this;
};

function initMegaPopup() {
    $('.mg_popup_wrap').each(function(){
        if ($(this).data('width')) {
            $(this).css('max-width', $(this).data('width'));
        }
    });

    $('.cmg_popup_wrap').each(function(){
        if ($(this).data('width')) {
            $(this).css('max-width', $(this).data('width'));
        }
    });

    $('.zoom-gallery').magnificPopup({
		delegate: 'a',
		type: 'image',
		closeOnContentClick: false,
		closeBtnInside: false,
		mainClass: 'mfp-with-zoom mfp-img-mobile',
		image: {
			verticalFit: true,
			titleSrc: function(item) {
				return item.el.attr('title') + ' &middot; <a class="image-source-link" href="'+item.el.attr('data-source')+'" target="_blank">바로가기</a>';
			}
		},
		gallery: {
			enabled: true
		},
		zoom: {
			enabled: true,
			duration: 300, // don't foget to change the duration also in CSS
			opener: function(element) {
				return element.find('img');
			}
		}
	});
}

// https://dimsemenov.com/plugins/magnific-popup/documentation.html
function openMegaPopup(popupId, type, closeOnBgClick, fixedContentPos, openCallback, closeCallback) {
    var posY = null;
    var magnificPopupConfiguration = function() {
      return {
        beforeOpen: function() {
          posY = window.pageYOffset;
          $('html').css('overflow', 'hidden');
          $('body').css({'position': 'fixed', 'top': -posY});
        },
        resize: function() {},
        open: function() {},
        beforeClose: function() {
          $('html').css('overflow', '');
          $('body').css({'position': '', 'top': ''});
          window.scrollTo(0, posY);
        }
      }
    }
    var magnificPopupDimmConfiguration = function() {
        return {
            open: function() {
                $('.mfp-content').prepend('<div class="mg_popup_dimm"></div>');
                if (typeof openCallback === 'function') {
                    openCallback();
                }
            },
            beforeClose: function() {
                $('.mfp-content .mg_popup_dimm').remove();
                
            },
            close: function(){
                if (typeof closeCallback === 'function') {
                    closeCallback();
                }
            }
        }
    }
    var defaultOption = {
        items: {
            src: '#' + popupId,
            type: 'inline',
        },
        fixedBgPos: true,
        overflowY: 'auto',
        closeBtnInside: true,
        preloader: false,
        midClick: true,
        removalDelay: 300,
        showCloseBtn: closeOnBgClick === false ? false: true,
        closeOnBgClick: closeOnBgClick === false ? false: true,
    };

    if (type === 1 || type === undefined) {
        customOption = {
            fixedContentPos: fixedContentPos === false ? false: true,
            removalDelay: 300,
            mainClass: 'mfp-zin',
        }
    } else if (type === 2) {
        customOption = {
            fixedContentPos: fixedContentPos === false ? false: true,
            removalDelay: 300,
            mainClass: 'fade-slideup fix-bottom',
            callbacks: magnificPopupConfiguration(),
        }
    } else if (type === 3) {
        customOption = {
            fixedContentPos: fixedContentPos === false ? false: true,
            removalDelay: 300,
            mainClass: 'fade-slidedown fix-top',
            callbacks: magnificPopupConfiguration(),
        }
    } else if (type === 4) {
        customOption = {
            fixedContentPos: fixedContentPos === false ? false: true,
            removalDelay: 300,
            mainClass: 'mfp-zin',
            callbacks: magnificPopupDimmConfiguration(),
        }
    }
    var getOption = Object.assign(defaultOption, customOption);
    $.magnificPopup.open(getOption);
}
function openCmegaPopup(popupId) {
    $('#' + popupId).show();
}
function closeCmegaPopup(popupId, remove) {
    if (remove) {
        $('#' + popupId).remove();
    } else {
        $('#' + popupId).hide();
    }
}
function setCookiePopupToday(name, value, expiredays) {
    var todayDate = new Date();
    todayDate = new Date(parseInt(todayDate.getTime() / 86400000) * 86400000 + 54000000);
    if (todayDate > new Date()) {
        expiredays = expiredays - 1;
    }
    todayDate.setDate(todayDate.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function customScrollbar(selector) {
    var isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent) ? true : false;
    if (!isMobile) {
        $(selector).mCustomScrollbar({
            theme: "minimal-dark",
        });
    } else {
        $(selector).addClass('mo')
    }
}

var globalCookiePopup = {
    cookie_arr : null,
    set: function(name, value, options) {
        options = options || {};
        this.cookie_arr = [escape(name) + '=' + escape(value)];
        //-- expires
        if (options.expires){
            if( typeof options.expires === 'object' && options.expires instanceof Date ){
                var date = options.expires;
                var expires = "expires=" + date.toUTCString();
                this.cookie_arr.push(expires);
            }
        }else if (options.expires_day){
            this.set_expires_date(options.expires_day , 24*60*60);
        }else if (options.expires_hour)	{
            this.set_expires_date(options.expires_hour , 60*60);
        }
        //-- domain
        if (options.domain){
            var domain = "domain=" + options.domain;
            this.cookie_arr.push(domain);
        }
        //-- path
        if (options.path){
            var path = 'path=' + options.path;
            this.cookie_arr.push(path);
        }
        //-- secure
        if( options.secure === true ){
            var secure = 'secure';
            this.cookie_arr.push(secure);
        }
        document.cookie = this.cookie_arr.join('; ');
    },
    get: function(name) {
        var nameEQ = escape(name) + "=";
        var ca = document.cookie.split(';');
    
        for(var i=0;i < ca.length;i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1,c.length);
            if (c.indexOf(nameEQ) == 0) return unescape(c.substring(nameEQ.length,c.length));
        }
        return null;
    },
    del: function(name, options){
        options = options || {};
        options.expires_day = -1;
        this.set ( name , '' , options );
    },
    set_expires_date: function(expires, time){
        var date = new Date();
        date.setTime(date.getTime() + (expires*time*1000));
        var expires = "expires=" + date.toUTCString();
        this.cookie_arr.push(expires);
    }
}

var mgFrontScript = window.mgFrontScript || (function(){
    return {
        nowDay: function() {
            /* 설명 : 오늘 날짜 형식 ex) 2023-02-03
               사용처 : 공통 달력 인풋 */ 
            var date = new Date();
            var year = date.getFullYear();
            var month = new String(date.getMonth()+1);
            var day = new String(date.getDate());

            if(month.length == 1){
                month = "0" + month;
            }
            if(day.length == 1){
                day = "0" + day;
            }
            txt = year + '-' + month + '-' + day;
            return txt;
        },
        onSelectPickerDay: function($this, dateText, inst) {
            /*  설명 : 통합검색 - 달력 선택된 날짜 형식 ex) 2023-02-03
			    사용처 : 공통 달력 jQuery UI datepicker : onSelect 내부 */
            var sDate = $.datepicker.parseDate($this.datepicker('option', 'dateFormat'), dateText),
                year = sDate.getFullYear(),
                month = (sDate.getMonth()+1) < 10 ? '0' + (sDate.getMonth()+1)  : sDate.getMonth()+1,
                day = sDate.getDate() < 10 ? '0' + sDate.getDate()  : sDate.getDate(),
                txt = year + '-' + month + '-' + day;
            return txt;
        }
    }
}());