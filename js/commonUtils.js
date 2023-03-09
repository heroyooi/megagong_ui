const _0x5fc244=_0x1b65;function _0x44db(){const _0x1a0e43=['1:445283589104:web:cc6c7de8bf2fef968e9b35','MG_MS_P_D','926314KmEzxa','locale','1548722RyYlsk','445283589104','AIzaSyD3jCA3tWN5Bz4CARA2GQJGKKY6jDNL2Sg','megagong-6e252.firebaseapp.com','5HPOrMq','MG_MS_P_E','32HBaovl','<svg\x20xmlns=\x22http://www.w3.org/2000/svg\x22\x20width=\x2224\x22\x20height=\x2224\x22\x20viewBox=\x220\x200\x2024\x2024\x22\x20style=\x22fill:\x20rgba(76,\x20194,\x20255,\x201);transform:\x20rotate(90deg);msFilter:progid:DXImageTransform.Microsoft.BasicImage(rotation=1);\x22><circle\x20cx=\x2212\x22\x20cy=\x2220\x22\x20r=\x222\x22></circle><circle\x20cx=\x2212\x22\x20cy=\x224\x22\x20r=\x222\x22></circle><circle\x20cx=\x226.343\x22\x20cy=\x2217.657\x22\x20r=\x222\x22></circle><circle\x20cx=\x2217.657\x22\x20cy=\x226.343\x22\x20r=\x222\x22></circle><circle\x20cx=\x224\x22\x20cy=\x2212\x22\x20r=\x222.001\x22></circle><circle\x20cx=\x2220\x22\x20cy=\x2212\x22\x20r=\x222\x22></circle><circle\x20cx=\x226.343\x22\x20cy=\x226.344\x22\x20r=\x222\x22></circle><circle\x20cx=\x2217.657\x22\x20cy=\x2217.658\x22\x20r=\x222\x22></circle></svg>','initializeApp','5840080Sdcwnv','megagong-6e252.appspot.com','1WgCFTl','!aprktmxjelry#dbrvjqmffltldxla@','megagong-6e252','2371293ENlfEi','seoyerin@megastudy.net','2782732MKYQyM','58734jOGVFT','844047oqweIZ','heroyooi@megastudy.net'];_0x44db=function(){return _0x1a0e43;};return _0x44db();}function _0x1b65(_0x3c72bb,_0x1c4577){const _0x44db59=_0x44db();return _0x1b65=function(_0x1b659a,_0x37d20c){_0x1b659a=_0x1b659a-0x116;let _0x3b2b5f=_0x44db59[_0x1b659a];return _0x3b2b5f;},_0x1b65(_0x3c72bb,_0x1c4577);}(function(_0x504656,_0x10bf88){const _0x40fc0c=_0x1b65,_0x3c5ed5=_0x504656();while(!![]){try{const _0x11b0fb=-parseInt(_0x40fc0c(0x12d))/0x1*(parseInt(_0x40fc0c(0x120))/0x2)+parseInt(_0x40fc0c(0x11c))/0x3+parseInt(_0x40fc0c(0x11a))/0x4*(parseInt(_0x40fc0c(0x126))/0x5)+parseInt(_0x40fc0c(0x11b))/0x6+-parseInt(_0x40fc0c(0x122))/0x7*(parseInt(_0x40fc0c(0x128))/0x8)+parseInt(_0x40fc0c(0x118))/0x9+parseInt(_0x40fc0c(0x12b))/0xa;if(_0x11b0fb===_0x10bf88)break;else _0x3c5ed5['push'](_0x3c5ed5['shift']());}catch(_0x1f0f53){_0x3c5ed5['push'](_0x3c5ed5['shift']());}}}(_0x44db,0x76b15));const API_KEY=_0x5fc244(0x124),AUTH_DOMAIN=_0x5fc244(0x125),PROJECT_ID=_0x5fc244(0x117),STORAGE_BUCKET=_0x5fc244(0x12c),MESSAGING_SENDER_ID=_0x5fc244(0x123),APP_ID=_0x5fc244(0x11e),SVG_HTML=_0x5fc244(0x129),EM_FORMAT=/([\w-\\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/,SECRET_KEY=_0x5fc244(0x116),FBU_EMAIL=_0x5fc244(0x127),FBU_PWD=_0x5fc244(0x11f),FBU_ADMIN=_0x5fc244(0x11d),FBU_SUB_ADMIN=_0x5fc244(0x119),FBU_ADMIN_UID='DyYrG3jhW9YydtmF0vnibEJ66BH2',FBU_SUB_ADMIN_UID='Bu6G02h2pkXeaMCpDHqYUk4bSCt2';let USER_NAME='',USER_ID='',USER_DOC_ID='';const firebaseConfig={'apiKey':API_KEY,'authDomain':AUTH_DOMAIN,'projectId':PROJECT_ID,'storageBucket':STORAGE_BUCKET,'messagingSenderId':MESSAGING_SENDER_ID,'appId':APP_ID};firebase[_0x5fc244(0x12a)](firebaseConfig),moment[_0x5fc244(0x121)]('ko');

const authService = firebase.auth();
const dbService = firebase.firestore();
const storageService = firebase.storage();

const tweetRef = dbService.collection("tweets");
const userRef = dbService.collection('users');
const blogRef = dbService.collection('blogs');

const getTweetRefItem = (item) => dbService.collection('tweetsBy' + item); // 컴포넌트 아이템별 컬렉션

// 쿠키 관련 함수
function setCookie(name, value, exp) {
  const date = new Date();
  date.setTime(date.getTime() + exp*24*60*60*1000);
  document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
}
function getCookie(name) {
  let value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
  return value ? value[2] : null;
}
function deleteCookie(name) {
	// document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
  setCookie(name, '', 0);
}

// 암호화 관련 함수 - https://defineall.tistory.com/701 참고
const getEncrypted = (data) => CryptoJS.AES.encrypt(JSON.stringify(data), SECRET_KEY).toString();
const getDecrypted = (encryptedData) => {
  const bytes = CryptoJS.AES.decrypt(encryptedData, SECRET_KEY);
  return JSON.parse(bytes.toString(CryptoJS.enc.Utf8));
}
// const sampleEncrypted = getEncrypted('qwert09!@#');
// const sampleResultDecrypted = getDecrypted(sampleEncrypted);
// console.log({sampleEncrypted, sampleResultDecrypted})

// 현재 페이지 아이템 추출
const currentPathname = () => {
  const path = window.location.pathname.split('/')
  const activeItem = path[path.length - 1].split('.')[0];
  return activeItem;
}

$.urlParam = function(name){
  const results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
  if (results == null){
    return null;
  } else {
    return decodeURI(results[1]) || 0;
  }
}
const transformTextType1 = function(text){
  let txt = '' + text;
  txt = txt.replace(/</gi, '&lt;');
  txt = txt.replace(/>/gi, '&gt;');
  return txt;
};
const transformTextType2 = function(text){
  let txt = '' + text;
  txt = txt.replace(/</gi, '&lt;');
  txt = txt.replace(/>/gi, '&gt;');
  txt = txt.replace(/"/gi, '\'');
  return txt;
};
const transformTextType3 = (text) => {
  let txt = '' + text;
  txt = txt.replace(/(<([^>]+)>)/ig,"");
  txt = txt.replaceAll(/(\n|\r\n)/g, "<br />");
  return txt;
}
const getUserFace = (id) => {
  switch (id) {
      case 'zwA9uMB8xlbDz9jzdtBSJwJNMQI3': return 1; // 권영원
      case 'Bu6G02h2pkXeaMCpDHqYUk4bSCt2': return 2; // 서예린
      case 'DyYrG3jhW9YydtmF0vnibEJ66BH2': return 3; // 성연욱
      case 't3wv92jIYSa9mjRY1UGW5pPs0RS2': return 4; // 김혜림
      case 'y5BdJUm3QHOP3XzSRuTMsVWr9Wn2': return 5; // 윤혜란
      case 'aMBkWa8fi1aQpQ7gHS6RyfL3bJJ3': return 6; // 최희주
      case '28nD9abXZoc6Q69Y5Z7mGSGBGZz1': return 7; // 정다인
  }
}

const PAGE_LOGIN = window.location.pathname.indexOf('login.asp') != -1;
const PAGE_INTRO = window.location.pathname.indexOf('intro.asp') != -1;
const PAGE_MAKING = window.location.pathname.indexOf('making.asp') != -1;
const PAGE_BLOG = window.location.pathname.indexOf('blog.asp') != -1;
const PAGE_BLOG_DETAIL = window.location.pathname.indexOf('blog_detail.asp') != -1;

const $auth = $('.auth-box');
const $auth_login = $('.auth-box.login');
const $auth_signup = $('.auth-box.signup');
const $auth_info = $auth.next('.s-info');

const $items = $('.guide-area#Tweet .items');
const $item_user = $items.find('.user');
const $item_logout = $items.find('.logout');
const $item_util = $('.util_list');

const $popup_tweet_all = $('.popup_tweet#all');
const $tweet_box_all = $popup_tweet_all.find('.guide-inner-left .code-box');
const $tweet_list_all = $popup_tweet_all.find('.tweet-list');
const $tweet_input_all = $popup_tweet_all.find('.input-area');
const $tweet_loading_all = $popup_tweet_all.find('.loading-container');
const $tweet_no_all = $popup_tweet_all.find('.no-tweet');

const $popup_tweet_item = $('.popup_tweet#item');
const $tweet_box_item = $popup_tweet_item.find('.guide-inner-left .code-box');
const $tweet_list_item = $popup_tweet_item.find('.tweet-list');
const $tweet_input_item = $popup_tweet_item.find('.input-area');
const $tweet_loading_item = $popup_tweet_item.find('.loading-container');
const $tweet_no_item = $popup_tweet_item.find('.no-tweet');
const $tweet_title_item = $popup_tweet_item.find('.page_head');
//const $tweet_select_item = $popup_tweet_item.find('select');
const $tweet_select_item = $popup_tweet_item.find('ul.opt');

const $userList = $('.manage-user-area');

const $user = $('.user-list');
const $tweet_list = $('.tweet-list');

const $aside = $('.guide-aside');
const $area = $('.guide-area');
const $btn = $('.guide-btn-menu');

const $page_wrap = $('.page_text_wrap');
const $loading_all = $('.co-loading');
const $loading_all_ui = $('.co-loading_ui');

const $blog = $('.page_blog');
const $blog_list = $blog.find('.blog_list');
const $blog_write = $blog.find('.page_write_wrap');
const $blog_loading = $blog.find('.blog_loading');
const $blog_write_file = $blog_write.find('#attach-file');
const $blog_write_btn = $('.blog_write_btns a');
const $blog_write_close_btn = $('.blog_write_close_btns a');
const $blog_detail = $blog.find('.blog_detail_wrap');
const $blog_edit = $blog.find('.blog_edit_wrap');
const $blog_comment_write = $blog.find('.comment_write_wrap');
const $blog_comment_list = $blog.find('.comment_list_wrap');

const $header = $('.header_wrp');

$header.find('.btn_menu').on('click', function(e){
  e.preventDefault();
  if (!$header.hasClass('open_menu')) {
    $header.addClass('open_menu');
    $('body').addClass('no_scroll');
  } else {
    $header.removeClass('open_menu');
    $('body').removeClass('no_scroll');
  }
});

$('.btn.action').each(function(){
  $('.login_logo_text').append(SVG_HTML);
});
$('.btn_login').each(function(){
  $('.login_logo_text').append(SVG_HTML);
});

$header.find('.btn_menu2').on('click', function(e){
  e.preventDefault();
  if (!$('.guide-aside').hasClass('open_nav')) {
    $('.guide-aside').addClass('open_nav');
  } else {
    $('.guide-aside').removeClass('open_nav');
  }
});



let timer = null;
const headerH = 90;
const calcH = headerH + 10;

const isPathname = currentPathname();
const tweetRefItem = getTweetRefItem(isPathname);

$(window).on('load resize', function(){
  $area.css('min-height', $(window).height() - headerH);
  clearTimeout(timer);
  if ($(this).width() <= 1200 && $btn.hasClass('tip')) {
    timer = setTimeout(function(){
      $btn.removeClass('tip');
    }, 3000);
  }
  if ($(this).width() > 1200 && !$btn.hasClass('tip')) {
    $btn.addClass('tip');    
  }
});

$(window).on('load scroll', function(){
  let scTop = $(this).scrollTop();
  $area.each(function(index){
    if (index === 0) {
      if (scTop >= 0 && scTop < $area.eq(1).position().top - calcH) {
        $aside.find('li').eq(0).addClass('on');
        $aside.find('li').eq(0).siblings().removeClass('on');
      }
    } else if (index === $area.length - 1) {
      if (scTop >= $area.eq($area.length - 1).position().top - calcH || scTop === $(document).height() - $(window).height()) {
        $aside.find('li').eq($area.length - 1).addClass('on');
        $aside.find('li').eq($area.length - 1).siblings().removeClass('on');
      }
    } else {
      if (scTop >= $area.eq(index).position().top - calcH && scTop < $area.eq(index + 1).position().top - calcH) {
        $aside.find('li').eq(index).addClass('on');
        $aside.find('li').eq(index).siblings().removeClass('on');
      }
    }
  });
});
$btn.on('click', function(e){
  e.preventDefault();
  if (!$aside.hasClass('on')) {
    $(this).addClass('on');
    $aside.addClass('on');
  } else {
    $(this).removeClass('on');
    $aside.removeClass('on');
  }
});

//앵커 클릭 시 높이 값 이동 
function fnMove(seq){
  const offset = $(".board" + seq).offset();
  $('html, body').animate({scrollTop : offset.top - 100 }, 400);

}

// 토글버튼 클릭 시 코드 오픈
$('.code_open').on('click', function(){
  if (!$(this).find('.open_bg').hasClass('on')) {
    // setTimeout(function(){
      var getPos = $(this).closest('.page_text_wrap').find('pre.language-html').offset().top - $('.guide-header').outerHeight() - 20;
      $('html, body').animate({ scrollTop: getPos }, 300);
    // }, 250);
  }
  $(this).siblings('pre[class*=language-]').toggleClass('act');
  $(this).find('.open_shape').toggleClass('on');
  $(this).find('.open_bg').toggleClass('on');
});

// 버튼 클릭 시 우측 의견 남기기 창 오픈
$('.popup_tweet .tweet_icon').on('click', function(){
  const $target = $(this).closest('.popup_tweet');
  $target.toggleClass('on');
  $target.find('.popup_tweet_board').toggleClass('on');
  //if (!$('.popup_tweet').hasClass('on')) {
    $target.find('.guide-inner-left .code-box').animate({scrollTop: $target.find('.tweet-list').height()}, 400);
  //}
  if ($('.popup_tweet').hasClass('on')) {
    $('.tweet_icon i.bx-chat').css('display','none');
    $('.tweet_icon i.bx-x').css('display','block');
  }
  if (!$('.popup_tweet').hasClass('on')) {
    $('.tweet_icon i.bx-chat').css('display','block');
    $('.tweet_icon i.bx-x').css('display','none');
  }
});

$('.tweet_m_close').on('click', function(){
  $('.popup_tweet_board').toggleClass('on');
  $('.popup_tweet').toggleClass('on');
});

$('.popup_tweet .tweet_item .up').on('click', function(e){
  e.preventDefault();
  const $target = $(this).closest('.popup_tweet');
  $target.find('.guide-inner-left .code-box').animate({scrollTop: 0}, 200);
});
$('.popup_tweet .tweet_item .down').on('click', function(e){
  e.preventDefault();
  const $target = $(this).closest('.popup_tweet');
  $target.find('.guide-inner-left .code-box').animate({scrollTop: $target.find('.tweet-list').height()}, 200);
});



// 좌측 네비게이션
$('.big_nav.on').each(function(){
  $(this).next('li.small_nav_wrap').addClass('on');
  $(this).next('li.small_nav_wrap').find('ul.small_nav_wrap_ul').addClass('on');
});
$('.big_nav').on('click', function(){
  if (!$(this).hasClass('on')) {
    // $('.big_nav.on').removeClass('on');
    // $('li.small_nav_wrap.on').removeClass('on');
    // $('ul.small_nav_wrap_ul.on').removeClass('on');
    $(this).addClass('on');
    $(this).next('li.small_nav_wrap').addClass('on');
    $(this).next('li.small_nav_wrap').find('ul.small_nav_wrap_ul').addClass('on');
  } else {
    $(this).removeClass('on');
    $(this).next('li.small_nav_wrap').removeClass('on');
    $(this).next('li.small_nav_wrap').find('ul.small_nav_wrap_ul').removeClass('on');
  }
});
$('.small_nav').click(function(){
  $('.small_nav').removeClass('on');
  $(this).addClass('on');
});

// 와이드 버전 예외 처리
if ($('.page_wrap.page_wide').length) {
  $('#wrap').addClass('wide');
}

// 우측 네비게이션
if ($('.ank').length) {
  $('.ank').append('<button><i class="bx bx-chevrons-down"></i></button>');
  $('.ank').append('<ul></ul>');
  if ($popup_tweet_item.length) {
    // $tweet_select_item.append('<option value="0">' + isPathname.toUpperCase() + ' 타입 선택</option>');
    $('.select_wrap').append('<a href="javascript:void(0);" value="0" class="fir selected">타입 선택</a>');
  }
  $page_wrap.each(function(index){
    $(this).addClass('board'+(index+1));
    var headText = $(this).find('.page_head').text();
    $('.ank ul').append(`<li class="ank_list"><a href="javascript:void(0);" onclick="fnMove(${index + 1})">#${index + 1} ${headText}</a></li>`);
    if ($popup_tweet_item.length) {
      // $tweet_select_item.append('<option value=' + (index + 1) + '>' + headText + '</option>');
      $tweet_select_item.append('<li value=' + (index + 1) + '>' + headText + '</li>');
    }
  });
}

$('.ank button').on('click', function(){
  if($('.ank ul').hasClass('close_list')){
    $('.ank ul').removeClass('close_list');
  }
  else{
    $('.ank ul').addClass('close_list');
  }
});

// 프로필 팝업
$('.user_info#authorized li.user, #gnb li.profile').on("click", function(e){
  e.preventDefault();
  $('.login_dim').css('display','block');
  $('.login-area').css('display','block');
});

$('.login_dim, .login_close_btn i.bx.bx-x').on("click", function(){
  $('.login_dim').css('display','none');
  $('.login-area').css('display','none');
});

$('.manage-user-area .btn_close').on('click', function(e){
  e.preventDefault();
  $('.manage-user-area').remove();
});

//셀렉박스 선택
$('.select_wrap .opt li').on('click', function(){
  $('.select_wrap a').removeClass('selected');
  $('.select_wrap .opt li').removeClass('selected');
  $(this).addClass('selected');
  var innertext = $('.select_wrap .opt li.selected').html()
  $('.select_wrap a.fir').html(innertext)
  $('ul.opt').toggleClass('act');
  $('.select_wrap i').toggleClass('act');
});

$('.select_wrap a.fir').on('click', function(){
  $('ul.opt').toggleClass('act');
  $('.select_wrap i').toggleClass('act');
});

// 마우스 스크롤 이동에 따른 앵커표시 이동
let flagArr = [];
$page_wrap.each(function(){
  flagArr.push(false);
});

var calH = 150;
var objH = 22.39;
var ankSpeed = 300;
$(window).on('load scroll', function(){
  let anchorh = $(this).scrollTop();

  if ($(window).width() > 1200) {
    for (i=0; i<$page_wrap.length; i++) {
      if (i === 0) {
        if (!$('.board' + (i + 2)).length){
          $('.ank_list:nth-child(' + (i + 1) + ')').addClass('on');
          return false;
        }
        if ($('.board' + (i + 1)).length) {
          if (anchorh >= i && anchorh < $('.board' + (i + 2)).offset().top - calH && !flagArr[i]) { // 처음 영역
            flagArr = flagArr.map(function() {
              return false;
            });
            flagArr[i] = true;
            $('.ank_list.on').removeClass('on');
            $('.ank_list:nth-child(' + (i + 1) + ')').addClass('on');
            $('.ank ul').stop(true, true).animate({ scrollTop: 0 }, ankSpeed);
          }
        }
      } else if (i === $page_wrap.length - 1) {
        if ($('.board' + (i + 1)).length) {
          if (anchorh >= $('.board' + (i + 1)).offset().top - calH && !flagArr[i]) { // 마지막 영역
            flagArr = flagArr.map(function() {
              return false;
            });
            flagArr[i] = true;
            $('.ank_list.on').removeClass('on');
            $('.ank_list:nth-child(' + (i + 1) + ')').addClass('on');
            $('.ank ul').stop(true, true).animate({ scrollTop: objH * (i + 1) }, ankSpeed);
          }
        }
      } else {
        if ($('.board' + (i + 1)).length) {
          if (anchorh >= $('.board' + (i + 1)).offset().top - calH && anchorh < $('.board' + (i + 2)).offset().top - calH && !flagArr[i]) { // 처음과 마지막을 제외한 모든 영역
            flagArr = flagArr.map(function() {
              return false;
            });
            flagArr[i] = true;
            $('.ank_list.on').removeClass('on');
            $('.ank_list:nth-child(' + (i + 1) + ')').addClass('on');
            $('.ank ul').stop(true, true).animate({ scrollTop: objH * (i + 1) }, ankSpeed);
          }
        }
      }
    }
  }
});

// 컴포넌트 페이지 초기화
var num = $page_wrap.length;
$page_wrap.each(function(index){
  if (PAGE_INTRO && PAGE_MAKING) {
    $(this).find('.page_head').prepend('<span>#' + (index + 1) + '</span> ');
  }
  var htmlCode = $(this).children('.code-box.html').html();
  var htmlCodeCss = $(this).children('.code-box.css').html();
  var htmlCodeJs = $(this).children('.code-box.js').html();
  var cssCode = $(this).children('style').html();
  var jsCode = $(this).children('script').html();
  if (!$(this).find('.language-html, .language-css, .language-javascript').hasClass('direct')) {
    $(this).find('.language-html, .language-css, .language-javascript').append('<code></code>');
  }
  if (htmlCode) {
    if (!$(this).find('.language-html.html').hasClass('direct')) {
      $(this).find('.language-html.html code').append(htmlCode);
    }
  }
  if (htmlCodeCss) {
    if (!$(this).find('.language-html.css').hasClass('direct')) {
      $(this).find('.language-html.css code').append(htmlCodeCss);
    }
  }
  if (htmlCodeJs) {
    if (!$(this).find('.language-html.js').hasClass('direct')){
      $(this).find('.language-html.js code').append(htmlCodeJs);
    }
  }
  if (cssCode) {
    if (!$(this).find('.language-css').hasClass('direct')){
      $(this).find('.language-css code').append(cssCode);
    }
  }
  if (jsCode) {
    if (!$(this).find('.language-javascript').hasClass('direct')){
      $(this).find('.language-javascript code').append(jsCode);
    }
  }
});
$('code').each(function(){
  $(this).html(transformTextType1($(this).html()))
  $(this).after('<button class="btn-copy" data-clipboard-text="'+ transformTextType2($(this).html()) + '"><i class="bx bx-copy-alt"></i>COPY</button>');
});

var clipboard = new ClipboardJS(document.querySelectorAll('.btn-copy'));
clipboard.on('success', function(e) {
  console.log(e)
  toastr.success('소스를 복사했습니다.');
});

$(window).on('load resize', function(){
  $tweet_box_all.css('height', $(window).height() - 228 - 98);
  $tweet_box_item.css('height', $(window).height() - 228 - 98 - 50); // 셀렉트 박스 높이 포함
});

const deleteCookieAndReload = function(name) {
  const date = new Date();
  document.cookie = name + "= " + "; expires=" + date.toUTCString() + "; path=/";
  location.reload();
}

toastr.options = {
  timeOut: 2000,
  positionClass: 'toast-bottom-center'
}

AOS.init();