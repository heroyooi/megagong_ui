<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 13
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">EFFECT</h3>
                <h3 class="page_name_sub">특수 효과</h3>
                <p class="page_sub_text">메가공무원 사이트의 여러 홍보 페이지에서 사용된 특수 효과 요소입니다.<br>
                주로 CSS 애니메이션 혹은 JS 스크립트로 제작되며 사용자가 페이지에 매력을 느끼고 응집력 있는 시각적 경험을 가지게 합니다.<br>
                단, 광과민증을 유발할 수 있는 CSS 애니메이션 혹은 페이지 로드에 부담을 줄 수 있는 과도한 특수 효과의 경우에는 사용에 주의를 요합니다.
                </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">메가패스 - 벚꽃</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div id="mContainer" class="event">
    <div id="eventWrap" class="eventWrap effect_type1">
        <div id="visual" class="visual">
            <div class="inner">
                <h3>
                    <span><img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_0.png" alt="MEGA PASS 할인 이벤트" data-aos="fade" data-aos-delay="100" class="aos-init aos-animate"></span>
                    <p>
                        <img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_1.png" alt="메가" data-aos="fade-right" data-aos-delay="300" class="aos-init aos-animate">
                        <img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_2.png" alt="신춘문예전" data-aos="fade-right" data-aos-delay="500" class="aos-init aos-animate">
                    </p>
                    <span><img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_3.png" alt="we MAKE IT" data-aos="fade" data-aos-delay="800" class="aos-init aos-animate"></span>
                </h3>
                
                <p class="catchphrase aos-init aos-animate" data-aos="fade" data-aos-delay="800">: WE MAKE IT은 여러분의 합격을 위해 준비한 이번 시즌 캐치프레이즈입니다.</p>
                <div class="visual_content aos-init" data-aos="zoom-in-down" data-aos-delay="1000">
                    <p class="txt">
                        <span>
                            다시 찾아 오는 봄, 여러분의 봄은 어떤가요?<br><br>단 한 줄의 글로<br><strong>가장 기억에 남는 봄</strong>이나<br><strong>WE MAKE IT(합격)</strong>에 대해 이야기해주세요.
                        </span><br><br>
                        <strong class="point">
                            이벤트에 참여하는 모든 사람에게<br>메가패스 MAKE IT 15% 쿠폰이 제공됩니다!
                        </strong>
                    </p>
                    <div class="date">
                        <i>★ ★ ★</i> 
                        <span>2023.03.07(화) ~ 2023.03.13(월)</span>
                        <i>★ ★ ★</i> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div></div>

<style>.sakura {
    background: -webkit-linear-gradient(120deg, rgba(255, 183, 197, 0.9), rgba(255, 197, 208, 0.9));
    background: -o-linear-gradient(120deg, rgba(255, 183, 197, 0.9), rgba(255, 197, 208, 0.9));
    background: -ms-linear-gradient(120deg, rgba(255, 183, 197, 0.9), rgba(255, 197, 208, 0.9));
    background: -moz-linear-gradient(120deg, rgba(255, 183, 197, 0.9), rgba(255, 197, 208, 0.9));
    background: linear-gradient(120deg, rgba(255, 183, 197, 0.9), rgba(255, 197, 208, 0.9));
    -webkit-border-radius: 12px 1px;
    -o-border-radius: 12px 1px;
    -ms-border-radius: 12px 1px;
    -moz-border-radius: 12px 1px;
    border-radius: 12px 1px;
    -webkit-pointer-events: none;
    -moz-pointer-events: none;
    -ms-pointer-events: none;
    -o-pointer-events: none;
    pointer-events: none;
    position: absolute
}

@-webkit-keyframes fall {
    0% {opacity: 0.9;top: 0}
    100% {opacity: 0.2;top: 100%}
}

@-o-keyframes fall {
    0% {opacity: 0.9;top: 0}
    100% {opacity: 0.2;top: 100%}
}

@-ms-keyframes fall {
    0% {opacity: 0.9;top: 0}
    100% {opacity: 0.2;top: 100%}
}

@-moz-keyframes fall {
    0% {opacity: 0.9;top: 0}
    100% {opacity: 0.2;top: 100%}
}

@keyframes fall {
    0% {opacity: 0.9;top: 0}
    100% {opacity: 0.2;top: 100%}
}

@-webkit-keyframes blow-soft-left {
    0% {margin-left: 0}
    100% {margin-left: -50%}}

@-o-keyframes blow-soft-left {
    0% {margin-left: 0}
    100% {margin-left: -50%}}

@-ms-keyframes blow-soft-left {
    0% {margin-left: 0}
    100% {margin-left: -50%}}

@-moz-keyframes blow-soft-left {
    0% {margin-left: 0}
    100% {margin-left: -50%}}

@keyframes blow-soft-left {
    0% {margin-left: 0}
    100% {margin-left: -50%}}

@-webkit-keyframes blow-medium-left {
    0% {margin-left: 0}
    100% {margin-left: -100%}}

@-o-keyframes blow-medium-left {
    0% {margin-left: 0}
    100% {margin-left: -100%}}

@-ms-keyframes blow-medium-left {
    0% {margin-left: 0}
    100% {margin-left: -100%}}

@-moz-keyframes blow-medium-left {
    0% {margin-left: 0}
    100% {margin-left: -100%}}

@keyframes blow-medium-left {
    0% {margin-left: 0}
    100% {margin-left: -100%}}

@-webkit-keyframes blow-soft-right {
    0% {margin-left: 0}
    100% {margin-left: 50%}}

@-o-keyframes blow-soft-right {
    0% {margin-left: 0}
    100% {margin-left: 50%}}

@-ms-keyframes blow-soft-right {
    0% {margin-left: 0}
    100% {margin-left: 50%}}

@-moz-keyframes blow-soft-right {
    0% {margin-left: 0}
    100% {margin-left: 50%}}

@keyframes blow-soft-right {
    0% {margin-left: 0}
    100% {margin-left: 50%}}

@-webkit-keyframes blow-medium-right {
    0% {margin-left: 0}
    100% {margin-left: 100%}}

@-o-keyframes blow-medium-right {
    0% {margin-left: 0}
    100% {margin-left: 100%}}

@-ms-keyframes blow-medium-right {
    0% {margin-left: 0}
    100% {margin-left: 100%}}

@-moz-keyframes blow-medium-lerightft {
    0% {margin-left: 0}
    100% {margin-left: 100%}}

@keyframes blow-medium-right {
    0% {margin-left: 0}
    100% {margin-left: 100%}}

@-webkit-keyframes sway-0 {
    0% {-webkit-transform: rotate(-5deg)}
    40% {-webkit-transform: rotate(28deg)}
    100% {-webkit-transform: rotate(3deg)}
}

@-o-keyframes sway-0 {
    0% {-o-transform: rotate(-5deg)}
    40% {-o-transform: rotate(28deg)}
    100% {-o-transform: rotate(3deg)}
}

@-ms-keyframes sway-0 {
    0% {-ms-transform: rotate(-5deg)}
    40% {-ms-transform: rotate(28deg)}
    100% {-ms-transform: rotate(3deg)}
}

@-moz-keyframes sway-0 {
    0% {-moz-transform: rotate(-5deg)}
    40% {-moz-transform: rotate(28deg)}
    100% {-moz-transform: rotate(3deg)}
}

@keyframes sway-0 {
    0% {transform: rotate(-5deg)}
    40% {transform: rotate(28deg)}
    100% {transform: rotate(3deg)}
}

@-webkit-keyframes sway-1 {
    0% {-webkit-transform: rotate(10deg)}
    40% {-webkit-transform: rotate(43deg)}
    100% {-webkit-transform: rotate(15deg)}
}

@-o-keyframes sway-1 {
    0% {-o-transform: rotate(10deg)}
    40% {-o-transform: rotate(43deg)}
    100% {-o-transform: rotate(15deg)}
}

@-ms-keyframes sway-1 {
    0% {-ms-transform: rotate(10deg)}
    40% {-ms-transform: rotate(43deg)}
    100% {-ms-transform: rotate(15deg)}
}

@-moz-keyframes sway-1 {
    0% {-moz-transform: rotate(10deg)}
    40% {-moz-transform: rotate(43deg)}
    100% {-moz-transform: rotate(15deg)}
}

@keyframes sway-1 {
    0% {transform: rotate(10deg)}
    40% {transform: rotate(43deg)}
    100% {transform: rotate(15deg)}
}

@-webkit-keyframes sway-2 {
    0% {-webkit-transform: rotate(15deg)}
    40% {-webkit-transform: rotate(56deg)}
    100% {-webkit-transform: rotate(22deg)}
}

@-o-keyframes sway-2 {
    0% {-o-transform: rotate(15deg)}
    40% {-o-transform: rotate(56deg)}
    100% {-o-transform: rotate(22deg)}
}

@-ms-keyframes sway-2 {
    0% {-ms-transform: rotate(15deg)}
    40% {-ms-transform: rotate(56deg)}
    100% {-ms-transform: rotate(22deg)}
}

@-moz-keyframes sway-2 {
    0% {-moz-transform: rotate(15deg)}
    40% {-moz-transform: rotate(56deg)}
    100% {-moz-transform: rotate(22deg)}
}

@keyframes sway-2 {
    0% {transform: rotate(15deg)}
    40% {transform: rotate(56deg)}
    100% {transform: rotate(22deg)}
}

@-webkit-keyframes sway-3 {
    0% {-webkit-transform: rotate(25deg)}
    40% {-webkit-transform: rotate(74deg)}
    100% {-webkit-transform: rotate(37deg)}
}

@-o-keyframes sway-3 {
    0% {-o-transform: rotate(25deg)}
    40% {-o-transform: rotate(74deg)}
    100% {-o-transform: rotate(37deg)}
}

@-ms-keyframes sway-3 {
    0% {-ms-transform: rotate(25deg)}
    40% {-ms-transform: rotate(74deg)}
    100% {-ms-transform: rotate(37deg)}
}

@-moz-keyframes sway-3 {
    0% {-moz-transform: rotate(25deg)}
    40% {-moz-transform: rotate(74deg)}
    100% {-moz-transform: rotate(37deg)}
}

@keyframes sway-3 {
    0% {transform: rotate(25deg)}
    40% {transform: rotate(74deg)}
    100% {transform: rotate(37deg)}
}

@-webkit-keyframes sway-4 {
    0% {-webkit-transform: rotate(40deg)}
    40% {-webkit-transform: rotate(68deg)}
    100% {-webkit-transform: rotate(25deg)}
}

@-o-keyframes sway-4 {
    0% {-o-transform: rotate(40deg)}
    40% {-o-transform: rotate(68deg)}
    100% {-o-transform: rotate(25deg)}
}

@-ms-keyframes sway-4 {
    0% {-ms-transform: rotate(40deg)}
    40% {-ms-transform: rotate(68deg)}
    100% {-ms-transform: rotate(25deg)}
}

@-moz-keyframes sway-4 {
    0% {-moz-transform: rotate(40deg)}
    40% {-moz-transform: rotate(68deg)}
    100% {-moz-transform: rotate(25deg)}
}

@keyframes sway-4 {
    0% {transform: rotate(40deg)}
    40% {transform: rotate(68deg)}
    100% {transform: rotate(25deg)}
}

@-webkit-keyframes sway-5 {
    0% {-webkit-transform: rotate(50deg)}
    40% {-webkit-transform: rotate(78deg)}
    100% {-webkit-transform: rotate(40deg)}
}

@-o-keyframes sway-5 {
    0% {-o-transform: rotate(50deg)}
    40% {-o-transform: rotate(78deg)}
    100% {-o-transform: rotate(40deg)}
}

@-ms-keyframes sway-5 {
    0% {-ms-transform: rotate(50deg)}
    40% {-ms-transform: rotate(78deg)}
    100% {-ms-transform: rotate(40deg)}
}

@-moz-keyframes sway-5 {
    0% {-moz-transform: rotate(50deg)}
    40% {-moz-transform: rotate(78deg)}
    100% {-moz-transform: rotate(40deg)}
}

@keyframes sway-5 {
    0% {transform: rotate(50deg)}
    40% {transform: rotate(78deg)}
    100% {transform: rotate(40deg)}
}

@-webkit-keyframes sway-6 {
    0% {-webkit-transform: rotate(65deg)}
    40% {-webkit-transform: rotate(92deg)}
    100% {-webkit-transform: rotate(58deg)}
}

@-o-keyframes sway-6 {
    0% {-o-transform: rotate(65deg)}
    40% {-o-transform: rotate(92deg)}
    100% {-o-transform: rotate(58deg)}
}

@-ms-keyframes sway-6 {
    0% {-ms-transform: rotate(65deg)}
    40% {-ms-transform: rotate(92deg)}
    100% {-ms-transform: rotate(58deg)}
}

@-moz-keyframes sway-6 {
    0% {-moz-transform: rotate(65deg)}
    40% {-moz-transform: rotate(92deg)}
    100% {-moz-transform: rotate(58deg)}
}

@keyframes sway-6 {
    0% {transform: rotate(65deg)}
    40% {transform: rotate(92deg)}
    100% {transform: rotate(58deg)}
}

@-webkit-keyframes sway-7 {
    0% {-webkit-transform: rotate(72deg)}
    40% {-webkit-transform: rotate(118deg)}
    100% {-webkit-transform: rotate(68deg)}
}

@-o-keyframes sway-7 {
    0% {-o-transform: rotate(72deg)}
    40% {-o-transform: rotate(118deg)}
    100% {-o-transform: rotate(68deg)}
}

@-ms-keyframes sway-7 {
    0% {-ms-transform: rotate(72deg)}
    40% {-ms-transform: rotate(118deg)}
    100% {-ms-transform: rotate(68deg)}
}

@-moz-keyframes sway-7 {
    0% {-moz-transform: rotate(72deg)}
    40% {-moz-transform: rotate(118deg)}
    100% {-moz-transform: rotate(68deg)}
}

@keyframes sway-7 {
    0% {transform: rotate(72deg)}
    40% {transform: rotate(118deg)}
    100% {transform: rotate(68deg)}
}

@-webkit-keyframes sway-8 {
    0% {-webkit-transform: rotate(94deg)}
    40% {-webkit-transform: rotate(136deg)}
    100% {-webkit-transform: rotate(82deg)}
}

@-o-keyframes sway-8 {
    0% {-o-transform: rotate(94deg)}
    40% {-o-transform: rotate(136deg)}
    100% {-o-transform: rotate(82deg)}
}

@-ms-keyframes sway-8 {
    0% {-ms-transform: rotate(94deg)}
    40% {-ms-transform: rotate(136deg)}
    100% {-ms-transform: rotate(82deg)}
}

@-moz-keyframes sway-8 {
    0% {-moz-transform: rotate(94deg)}
    40% {-moz-transform: rotate(136deg)}
    100% {-moz-transform: rotate(82deg)}
}

@keyframes sway-8 {
    0% {transform: rotate(94deg)}
    40% {transform: rotate(136deg)}
    100% {transform: rotate(82deg)}
}

</style>
<script>(function ($) {
    // requestAnimationFrame Polyfill
    (function () {
        var lastTime = 0;
        var vendors = ['ms', 'moz', 'webkit', 'o'];

        for (var x = 0; x < vendors.length && !window.requestAnimationFrame; ++x) {
            window.requestAnimationFrame = window[vendors[x] + 'RequestAnimationFrame'];
            window.cancelAnimationFrame = window[vendors[x] + 'CancelAnimationFrame'] || window[vendors[x] + 'CancelRequestAnimationFrame'];
        }

        if (!window.requestAnimationFrame)
            window.requestAnimationFrame = function (callback, element) {
                var currTime = new Date().getTime();
                var timeToCall = Math.max(0, 16 - (currTime - lastTime));
                var id = window.setTimeout(function () {
                        callback(currTime + timeToCall);
                    },
                    timeToCall);
                lastTime = currTime + timeToCall;

                return id;
            };

        if (!window.cancelAnimationFrame)
            window.cancelAnimationFrame = function (id) {
                clearTimeout(id);
            };
    }());

    // Sakura function.
    $.fn.sakura = function (options) {
        // We rely on these random values a lot, so define a helper function for it.
        function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

        // Helper function to attach cross-browser events to an element.
        var prefixes = ['moz', 'ms', 'o', 'webkit', ''];
        var prefCount = prefixes.length;

        function prefixedEvent(element, type, callback) {
            for (var i = 0; i < prefCount; i++) {
                if (!prefixes[i]) {
                    type = type.toLowerCase();
                }

                element.get(0).addEventListener(prefixes[i] + type, callback, false);
            }
        }

        // Defaults for the option object, which gets extended below.
        var defaults = {
            blowAnimations: ['blow-soft-left', 'blow-medium-left', 'blow-hard-left', 'blow-soft-right', 'blow-medium-right', 'blow-hard-right'],
            className: 'sakura',
            fallSpeed: 1, //속도
            maxSize: 25, //꽃잎 max크기
            minSize: 9,
            newOn: 300, //꽃잎량 적을수록 많아짐
            swayAnimations: ['sway-0', 'sway-1', 'sway-2', 'sway-3', 'sway-4', 'sway-5', 'sway-6', 'sway-7', 'sway-8']
        };

        var options = $.extend({}, defaults, options);

        // Declarations.
        var documentHeight = $(document).height();
        var documentWidth = $(document).width();
        var sakura = $('<div class="' + options.className + '" />');

        // Set the overflow-x CSS property on the body to prevent horizontal scrollbars.
        // #eventWrap 상단 영역에서만 실행 
        //=> 하단 contents들 z-index:2, position relative (특정영역으로 잡으면 속도가 느려짐, 눈속임으로 가리기)
        $('#eventWrap').css({ 
            'overflow': 'hidden',
        });

        // Function that inserts new petals into the document.
        var petalCreator = function () {
            setTimeout(function () {
                requestAnimationFrame(petalCreator);
            }, options.newOn);

            // Get one random animation of each type and randomize fall time of the petals.
            var blowAnimation = options.blowAnimations[Math.floor(Math.random() * options.blowAnimations.length)];
            var swayAnimation = options.swayAnimations[Math.floor(Math.random() * options.swayAnimations.length)];
            var fallTime = (Math.round(documentHeight * 0.007) + Math.random() * 5) * options.fallSpeed;

            var animations = 'fall ' + fallTime + 's linear 0s 1' + ', ' +
                blowAnimation + ' ' + (((fallTime > 30 ? fallTime : 30) - 20) + getRandomInt(0, 20)) + 's linear 0s infinite' + ', ' +
                swayAnimation + ' ' + getRandomInt(2, 4) + 's linear 0s infinite';
            var petal = sakura.clone();
            var size = getRandomInt(options.minSize, options.maxSize);
            var startPosLeft = Math.random() * documentWidth - 100;
            var startPosTop = -((Math.random() * 20) + 15);

            // Apply Event Listener to remove petals that reach the bottom of the page.
            prefixedEvent(petal, 'AnimationEnd', function () {
                $(this).remove();
            });

            // Apply Event Listener to remove petals that finish their horizontal float animation.
            prefixedEvent(petal, 'AnimationIteration', function (ev) {
                if ($.inArray(ev.animationName, options.blowAnimations) != -1) {
                    $(this).remove();
                }
            });

            petal
                .css({
                    '-webkit-animation': animations,
                    '-o-animation': animations,
                    '-ms-animation': animations,
                    '-moz-animation': animations,
                    animation: animations,
                    height: size,
                    left: startPosLeft,
                    'margin-top': startPosTop,
                    width: size
                })
                .appendTo('#eventWrap');
        };


        // Recalculate documentHeight and documentWidth on browser resize.
        $(window).resize(function () {
            documentHeight = $(document).height();
            documentWidth = $(document).width();
        });

        // Finally: Start adding petals.
        requestAnimationFrame(petalCreator);
    };
}(jQuery));

$(window).on('load', function(){
    $('#eventWrap').sakura();
});</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
해당 기능을 사용하여 봄철 벚꽃이 휘날리는 느낌을 나타낼 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/pass/total_2024.asp?now=2023-03-07%2009:00#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#봄</p> </li>
                            <li><p>#벚꽃</p> </li>
                            <li><p>#메가패스</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




                        <div class="page_text_wrap">
                <p class="page_head">그래프 상승</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="graphWrap">
    <p class="txt"><img src="https://img.megagong.net/m/2023/0126_final/con2_img3.png" alt="합격할 확률 UP"></p>
    <p class="arrow arrow_ani on" id="anilist1"><img src="https://img.megagong.net/m/2023/0126_final/con2_img4.png" alt="-"></p>
</div>
<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(1);">다시 재생하기</a>
</div></div>

<style>.graphWrap { position: relative; display: table; margin: auto; vertical-align: middle; overflow: hidden; } 
.graphWrap .arrow { position: absolute; right: 5%; bottom: 11%; opacity: 0; } 
.graphWrap .arrow.on { animation:show_top_in2 1.3s ease-out both; -webkit-animation:show_top_in2 1.3s ease-out both; } 
@-webkit-keyframes show_top_in2 { 
    0% { transform: translateY(100px) translateX(-100px); opacity: 0; transform: scaleY(0); transform-origin:bottom; } 
    100% { transform: translateY(0) translateX(0); opacity: 1; transform: scaleY(1); transform-origin:bottom; } 
}
@keyframes show_top_in2 { 
    0% { transform: translateY(100px) translateX(-100px); opacity: 0; transform: scaleY(0); transform-origin:bottom; } 
    100% { transform: translateY(0) translateX(0); opacity: 1; transform: scaleY(1); transform-origin:bottom; } 
}
@media screen and (max-width: 1200px){
    .graphWrap { display: block; margin: 0 0 4%; padding: 0 21%; } 
    .graphWrap .arrow { right: 25.3%; width: 50%; } 
}
@media screen and (max-width: 576px){
    .graphWrap { padding: 0 15%; } 
    .graphWrap .arrow { width: 64%; right: 18.4%; } 
}

@media screen and (max-width: 460px){
    .graphWrap { padding: 0 5%; } 
    .graphWrap .arrow { width: 82%; right: 9.5%; } 
}
</style>
<script></script>


<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
해당 기능을 사용하여 그래프가 상승하는 느낌을 나타낼 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/01260014/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#그래프</p> </li>
                            <li><p>#상승</p> </li>
                            <li><p>#위로</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">타이핑 효과</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><h3 class="typing_h3">
    <p class="txt">2023-2024 대비 <strong>9급 합격전략 설명회</strong></p>
    <div class="typing">
        <p>You’re right.</p>
        <p class="cont">
            <strong>
                <span class="hide" id="anilist2">.</span>
            </strong>
            <span class="blink"></span>
        </p>
    </div>
    여러분이 옳았습니다.
</h3>

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(2);">다시 재생하기</a>
</div></div>

<style>.typing_h3 { text-align: left; font-size: 72px; font-weight: normal; font-family: 'NotoSans KR'; } 
.typing_h3 .txt { font-size: 24px; margin: 0 0 140px; margin: 0 0 12vh; letter-spacing: 1.08em; text-align: center; } 
.typing_h3 .typing { font-size: 110px; font-family: 'Noto Serif KR', serif; font-weight: 700; letter-spacing: 0.04em; } 
.typing_h3 .typing strong { color: #3450f7; } 
.typing_h3 .typing strong .hide { font-size: 0; } 
.typing_h3 .typing .cont { position: relative; display: inline-block; } 
.blink { animation: blink 0.7s linear infinite; font-size: 2.5rem; background: #1d36cb; width: 1px; height: 77%; position: absolute; right: -3%; top: 50%; transform: translate(0, -50%); } 

@keyframes blink { 
    0% { opacity: 0; } 
}

@media screen and (max-width: 1200px){
    .typing_h3 {font-size: 65px;}
    .typing_h3 .txt {font-size: 2.3vw;letter-spacing: 1em;padding-left: 1.2%;margin: 0 0 10%;}
    .typing_h3 .typing { font-size: 100px; } 
}
@media (max-width: 992px){
    .typing_h3 {font-size: 55px;}
    .typing_h3 .typing { font-size: 85px; } 
    .blink {height: 60%;}
}
@media (max-width:768px){
    .typing_h3 {font-size: 39px;}
    .typing_h3 .typing { font-size: 60px; }
}
@media (max-width: 576px){
    .typing_h3 {font-size: 32px;}
    .typing_h3 .txt {letter-spacing: 0.7em;font-size: 2.9vw;}
    .typing_h3 .typing { font-size: 48px; }
}
@media (max-width: 460px){
    .typing_h3 {font-size: 23.5px;}
    .typing_h3 .typing { font-size: 36px; } 
}
</style>
<script>// 타이핑 효과
const content = "Mega is right.";
const text = document.querySelector(".typing strong");
let megatext = 0;

function typing(){
    if (megatext < content.length) {
        let txt = content.charAt(megatext);
        text.innerHTML += txt;
        megatext++;
    }
}
setTimeout(function() {
    setInterval(typing, 180)
},300)
</script>


<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
해당 기능을 사용하여 텍스트가 실시간으로 타이핑되는 느낌을 나타낼 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2022/11240174/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#타이핑</p> </li>
                            <li><p>#텍스트</p> </li>
                            <li><p>#글자</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




                        <div class="page_text_wrap">
                <p class="page_head">타이머-숫자</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
<div class="conTop" id="anilist3">
    
    <section class="test1">
        <div class="inner">
            <p><img src="<%=img_main%>/m/2021/0929_enp301/test1_tit.png" alt=""></p>
            <div class="blinktest">
                <img src="<%=img_main%>/m/2021/0929_enp301/blink_1.png" alt="클릭하고 문제 풀어보기" class="img1 blink_img">
                <img src="<%=img_main%>/m/2021/0929_enp301/blink_2.png" alt="클릭하고 문제 풀어보기" class="img2 blink_img">
            </div>
        </div>
    </section>
    <section class="test2">
        <div class="dim">-</div>
        <p id="test2_top"><img src="<%=img_main%>/m/2021/0929_enp301/test2_txt.png" alt=""></p>
        <div class="inner">
            <i><span id="countdown">60초</span></i>
            <strong class="test">
                <img src="<%=img_main%>/m/2021/0929_enp301/test2_img.png" alt="">
            </strong>
            <ul class="test_mo clearfix">
                <li><img src="<%=img_main%>/m/2021/0929_enp301/test1.png" alt=""></li>
                <li><img src="<%=img_main%>/m/2021/0929_enp301/test2.png" alt=""></li>
            </ul>
            <div class="dim_box">
                <span><img src="<%=img_main%>/m/2021/0929_enp301/test3_txt1.png" alt="두문제의 정답은 3,4번 입니다. 시간안에 문제를 모두 풀이하셨나요? 두문제 모두 정답을 맞추셨나요?"></span>
                <strong><img src="<%=img_main%>/m/2021/0929_enp301/test3_txt2.png" alt="틀려도 괜찮아요 아직은 오늘부터 김건호로 기출 정리하면 되니까요."></strong>
            </div>
        </div>
    </section>
</div>
</div>
<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(3);">다시 재생하기</a>
</div></div>

<style>.eventWrap {box-sizing: border-box; width: 100%;text-align: center;position: relative;font-family: 'NotoSans KR', 'Malgun Gothic';font-size: 15px;line-height: 1.4;letter-spacing: -0.03em;overflow: hidden;}
.eventWrap img {border: 0 none;vertical-align: middle;max-width: 100%;}
.eventWrap .inner {position: relative;width: 1080px;margin: 0 auto;}
.eventWrap .inner::after {content: "";display: block;clear: both;}

.test_mo {display: none;}

.conTop{background: #212f3b;text-align: center;position: relative;}
.conTop .test1{padding: 85px 0; background: url(https://img.megagong.net/m/2021/0929_enp301/test1_bg.png) no-repeat center;}
.conTop .test1 p{margin-bottom: 40px;}
.conTop .blinktest {position:relative;cursor: pointer;}
.conTop .blinktest .img2 {display: none; position: relative;margin: 0 auto;}
.conTop .blinktest .img1 {display: block;position: relative;margin: 0 auto;}
.conTop .blinktest.on .img1 {display:none;}
.conTop .blinktest.on .img2 {display:block;}

.conTop .test2.on{display: block;}
.conTop .test2{display: none; position: absolute;top: 0;left: 0;width: 100%;height: 100%; background: #d5d5d5 url(https://img.megagong.net/m/2021/0929_enp301/test2_bg.png) no-repeat 38% bottom;;padding:0 0 50px;background-size: 135%;}
.conTop .test2::before{content: '';display: block;position: absolute;top: 0;left: 0;background: url(https://img.megagong.net/m/2021/0929_enp301/test2_bg_patt.png)no-repeat center;height: 2400px;height: 800px; opacity:1;}
.conTop .test2::after{content: '';display: block;position: absolute;top: 0;left: -250px;background: url(https://img.megagong.net/m/2021/0929_enp301/test2_leaf.png) no-repeat center bottom;width: 883px;height: 505px;z-index: 3;}
.conTop .test2 p{padding: 20px 0; background: #1b2e3e; margin-bottom: 120px;position: relative;z-index: 3;}
.conTop .test2 strong{position: relative;z-index: 1;}
.conTop .test2 i{position: absolute; right:-70px;top: 0; background: url(https://img.megagong.net/m/2021/0929_enp301/test2_timer.png) no-repeat center; padding: 104px 72px 28px 62px;z-index: 2; font-size: 35px; color: #7bff58; font-style: normal;}
.conTop .test2 .dim{display: none; background: rgba(33,47,58,0.9);position: absolute;width: 100%;height: 100%;z-index: 3;}
.conTop .test2 .dim_box{display: none; position: absolute;z-index: 3; left: 50%;top: 40%; transform: translate(-50%,-40%);width: 100%;}
.conTop .test2 .dim_box span{display: block;margin-bottom: 120px;}

@media (max-width: 1600px){
    .conTop .test2{background-size: 168%;}
}
@media (max-width: 1200px){
    .eventWrap .inner {width: 96%;}
    .conTop img{width: auto;}
    .conTop,.conTop .test1{padding: 5% 0;}
    .conTop .test1 p{margin:0 3% 5%;}
    .conTop .blinktest .blink_img{width: 45%;}
    .conTop .test2 p{margin-bottom: 4%;padding: 2%;}
    .conTop .test2 i{right: 0;}
    .conTop .test2 .dim_box{width: 80%;}
    .conTop .test2 .dim_box span{margin-bottom: 8%;}
    .conTop .test2 .dim_box span img,.conTop .test2 strong img{width: 100%;}
    .conTop .test2::after{content: none;}
    .conTop .test2 strong.test{margin: 0 -14% 0 -1%;display: block;}
}
@media (max-width: 768px){
    .conTop .test2 p{margin-bottom: 10%;}
    .conTop .test2{background:none;background-color: #d6d6d6;}
    .conTop .test2 i{ top: -55px; background-size: 70%; font-size: 20px; padding-bottom: 50px;}
    .conTop .test2 strong.test{/*margin: 0 -14% 0 -1%;display: block;*/display: none;}

    .test_mo {display: block; text-align: center;}
    .test_mo li {width: 49%;display: inline-block; margin-right: 1%;}
    .test_mo li:last-child {margin-right: 0;}
}
@media (max-width: 576px){
    .conTop .test2 i {top: -80px;background-size: 55%;font-size: 18px;padding-bottom: 65px;right: -40px;}
}
</style>
<script>var blinkTxt = setInterval(function () {
    $(".blinktest").toggleClass("on");
}, 500);

// timer
var SetTime = 59; //할당 시간
function msg_time() {
    m = (SetTime % 60) + "초";
    var msg = m ;
    document.all.countdown.innerHTML = msg;
    SetTime--;
    if (SetTime < 0) {
        clearInterval(tid);	
        $(".test2 .dim").show()
        $(".test2 .dim_box").show()
        //TestOpen = function(){}; //함수초기화
    }
}
function TimerStart(){ tid=setInterval('msg_time()',1000)};

function TestOpen(){
    $('.conTop .test2').addClass('on');
    // var offset = $("#test2_top").offset();
    // $("html, body").animate({scrollTop: offset.top},400); 
}
//click 또는 scroll시 함수실행
// click 시
$(".blinktest .blink_img").click(function(){
    clearInterval(blinkTxt);
    TestOpen();
    TimerStart();
    $(".conTop").addClass("on"); 
    return false;
})

// scroll 시 
$(window).scroll(function () {
    var z = $(".conTop").offset().top + 80;
    var wTop = $(window).scrollTop();
    if (wTop > z) {
        //click시 on이 붙으므로 scroll시 timer함수가 중복되는걸 방지
        if ($(".conTop").hasClass("on")) { 
            return false;
        }

        if (!$(".conTop").hasClass("on")) { 
            TestOpen();
            TimerStart();
            $(".conTop").addClass("on");
        }
    }
});
</script>


<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
특정하게 정해진 시간이 자동으로 카운트다운 되며, 카운트가 종료 되었을 때에 특정 이미지 및 정보를 제공할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2021/09290126/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#카운트다운</p> </li>
                            <li><p>#시간재기</p> </li>
                            <li><p>#숫자감소</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">타이머-시간재기</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html">
<div class="eventWrap">
<div class="con01">
    <div class="inner2">
        <h3 class="con_tit"><img src="<%=img_main%>/m/2021/0811_korean/con1_tit.png" alt="시험시간 총 100분 동안, 풀어 내야 하는 문제 100문항 점점 길어지는 국어 지문에 어려운 문법, 낯선 어휘/한자 공무원 국어는 절대 만만한 과목이 아닙니다"></h3>
        <div class="con_box">
            <p class="stit">여러분은 아래 지문을 읽고, 문제를 푸는 데 얼마나 걸리시나요?</p>
            <div class="exam">
                <ul>
                    <li class="fir">
                        <p class="exam_tit"><img src="<%=img_main%>/m/2021/0811_korean/con1_eaxm1_tit.png" alt=""></p>
                        <div><img src="<%=img_main%>/m/2021/0811_korean/con1_eaxm1_img.png" alt=""></div>
                    </li>
                    <li>
                        <img src="<%=img_main%>/m/2021/0811_korean/con1_eaxm2.png" alt="">
                        <p class="btn">
                            <img src="<%=img_main%>/m/2021/0811_korean/con1_btn_icon.png" alt="">
                            <span class="time" id = "time">00:00 </span>
                            <!-- 버튼 클릭 전 -->
                            <a href="javascript:;" onclick="fnc_start();" class="btn1">START</a>
                            <!-- 버튼 클릭 후 -->
                            <a href="javascript:;" class="btn2" id = "stop" onclick="fnc_stop();" style="display:none;">STOP</a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="answer">
                <p>정답 ④번, 시간이 흐를수록 품질이 개선되는 것은 <br />일부 고급 적포도주를 병에 담아 코르크 마개를 끼워 보관한 경우에 한정된 이야기입니다.</p>
                <p class="my">단 한 문제 푸는 시간 <strong><span id="my_time">5분 24초</span> 걸렸습니다.</strong></p>
            </div>
            <p class="btxt">공무원 국어, 이제 정확성과 속도 두 가지가 모두 필요합니다. <br />빠르고 정확한 국어 <br /><strong>메가공무원이 치밀하고 단단하게 준비했습니다.</strong></p>
        </div>
    </div>
</div> 
</div> 
</div>

<style>.eventWrap .con_tit {position: relative;margin-bottom: 50px;text-align: left;}
.eventWrap .con01 {position:relative;background: #f3f3f3;text-align: center;padding: 100px 0 100px;}
.eventWrap .con01 .stit {position:relative;background:#1c2d99;padding:20px 0; text-align:center;font-size:18px;color:#fff}
.eventWrap .con01 .stit::before {position:absolute;content:'';left: 0;bottom: -24px;background: url('https://img.megagong.net/m/2021/0811_korean/con1_stit_bg.png') no-repeat center 0;width: 100%;height: 24px;z-index: 2;background-size: 100% 100%;}
.eventWrap .con01 .exam {padding:40px 35px;background:#fff;}
.eventWrap .con01 .exam ul {overflow:hidden;    display: flex;justify-content: space-around;}
.eventWrap .con01 .exam ul li {position:relative; float:left;}
.eventWrap .con01 .exam ul li.fir div {background:#f7f8f8;margin-top: 20px;padding-top: 10px;max-height: 270px;overflow-y: scroll;}
.eventWrap .con01 .exam ul li:nth-child(2) {float:right}
.eventWrap .con01 .exam ul li:nth-child(2) .btn {position:absolute;width: 250px;height: 50px;line-height: 48px;font-size: 18px;text-align: left;bottom:25px;left:50%;transform: translateX(-50%);-webkit-transform: translateX(-50%);-moz-transform: translateX(-50%);border: 2px solid #1c2d99;border-radius: 30px;background: #fff;box-sizing: border-box;font-weight: bold;}
.eventWrap .con01 .exam ul li:nth-child(2) .btn >img {position:absolute;left: 0px;top: -40px;}
.eventWrap .con01 .exam ul li:nth-child(2) .btn .time {margin-left: 80px;}
.eventWrap .con01 .exam ul li:nth-child(2) .btn a {position:absolute;display: inline-block;width: 100px;height: 100%;color: #fff;right:0;top: 0;background: #1c2d99;border-radius: 30px;text-align:center;}
.eventWrap .con01 .exam ul li:nth-child(2) .btn a.btn2 {background:#cd1217}
.eventWrap .con01 .answer {display: none;padding:22px 0;text-align:center;background:#dcdddd;border-top:2px dashed #000;font-size:16px;font-weight: 400;}
.eventWrap .con01 .answer .my {margin-top:25px}
.eventWrap .con01 .answer .my strong {display:block;font-size:24px;color:#cd1217}
.eventWrap .con01 .btxt {margin-top:40px;font-size:22px;}
.eventWrap .con01 .btxt strong {font-size:30px;color:#1c2d99;border-bottom: 2px solid #1c2d99;}

@media (max-width: 1200px){
    .eventWrap .con01 .exam{padding:4% 1%;}
    .eventWrap .con01 .exam ul li{width:49%;}
    .eventWrap .con_tit {margin-bottom: 5%;}
}
@media (max-width:992px){
    .eventWrap .con01 .answer .my strong{font-size:20px;}
}
@media (max-width:768px){
    .eventWrap .con01{padding:3vh 0 3vh}
    .eventWrap .con01 .stit{font-size: 16px;padding: 10px 0;}
    .eventWrap .con01 .answer{padding:12px 0;font-size:14px;}
    .eventWrap .con01 .answer .my{margin-top:15px}
    .eventWrap .con01 .answer .my strong{font-size:20px;color:#cd1217}

    .eventWrap .con01 .exam ul {display:block;}
    .eventWrap .con01 .exam ul li{width:100%;float:none}
    .eventWrap .con01 .exam ul li.fir div{width: 420px;margin: 10px auto 0;}
    .eventWrap .con01 .exam ul li:nth-child(2){float: none;margin-top: 4%;}
    .eventWrap .con01 .exam ul li:nth-child(2) .btn >img{top: -65%;max-width:25%}

    .eventWrap .con01 .btxt{font-size: 18px;}
    .eventWrap .con01 .btxt strong{font-size: 24px;}

    .eventWrap .con01 .exam ul li:nth-child(2) .btn {bottom: 3%;}
}
@media (max-width: 576px){
    .eventWrap .con01 .stit{font-size: 12px;}
    .eventWrap .con01 .btxt{font-size: 15px;}
    .eventWrap .con01 .btxt strong{font-size: 20px;}
    .eventWrap .con01 .exam ul li:nth-child(2) .btn{width: 60%;font-size: 15px;}
    .eventWrap .con01 .exam ul li:nth-child(2) .btn .time{margin-left: 34%}
}
@media (max-width: 460px){
    .eventWrap .con01 .btxt strong{font-size: 16px;}
    .eventWrap .con01 .exam ul{width:90%;margin:0 auto}
    .eventWrap .con01 .exam ul > img{width:100%}
    .eventWrap .con01 .exam ul li.fir div{width:100%}
    .eventWrap .con01 .exam ul li:nth-child(2) .btn a{width:40%}
}
</style>

<script>var time = 0;
var timerset;
function fnc_start(){
    var min = 0;
    var sec = 0;

    $("#stop").show();

    timerset = setInterval(function(){
        time++;

        min = Math.floor(time/60);
        sec = time%60;
        min = min%60;

        var tm = min;
        var ts = sec;

        if(tm < 10){
            tm = "0" + min;
        }
        if(ts < 10){
            ts = "0" + sec;
        }
        document.getElementById("time").innerHTML =  tm + ":" + ts;
        if (tm >= 10){
            fnc_stop();
        }
    }, 1000);
}

function fnc_stop(){
    var time_value = $("#time").html();
    var splitStr = time_value.split(":");
    var mm = splitStr[0];
    var ss = splitStr[1];

    $("#my_time").html(mm+"분"+ss+"초");

    $(".answer").css('display','block');
    clearInterval(timerset);
    $("#stop").hide();
    time = 0;
    document.getElementById("time").innerHTML =  "00:00";
}
</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
START 버튼을 클릭할 경우, 해당 시점을 기점으로 STOP 버튼을 누를 때까지의 경과 시간이 기록되며<br>
이를 통하여 문제풀이에 소모된 시간을 직관적으로 확인할 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2021/08110103/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#스톱워치</p> </li>
                            <li><p>#시간재기</p> </li>
                            <li><p>#시작버튼</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">타이머-원형</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html">
<div class="eventWrap">
<div id="evCon2" class="evSection evCon2">
	<div class="inner" id="anilist4">
		<h4 class="con_tit" id="con_tit"><img src="<%=img_main %>/m/2023/0127_ssunt/con_img6.png" alt="경영학 전공필기 시험을 준비하고 있는 여러분. 이 문제, 50초 안에 답을 찾으셨나요?"></h4>

		<div class="con_box">

			<% if 1=2 then %>
			'★★★★ 문제풀이영역 참고  :  https://dev.megagong.net/s/gong/event/2021/09290126/index.asp 
			<% end if %>
			
			<div class="question_wrap">
				<div class="question"><img src="<%=img_main %>/m/2023/0127_ssunt/con_img11.jpg" alt="문제이미지"></div>
				<div class="state">
				
					<div class="progress blue">
						<strong class="txt">남은 시간</strong>

						<span class="progress-left">
							<span class="progress-bar"></span>
						</span>
						<span class="progress-right">
							<span class="progress-bar"></span>
						</span>
						<div class="progress-value">
							<strong id="countdown2" class="countdown2">50</strong>
							
						</div>
					</div>
						
					<div class="confirm">
						<a href="javascript:;" class="view">정답 확인</a>

						<span class="dimBg2" style="display: none;">-</span>
						<div id="p_info1" class="answer_pop"  style="display: none;">
							<a href="javascript:;" class="close">
								<img src="https://img.megagong.net/m/2022/1221_pass/btn_x.png" alt="닫기" align="absmiddle">
							</a>
							
							<div class="noti">
								<div class="point">■ 정답 <span>②</span></div>
								B. 대량고객화 전략은 비표준화된 다품종에 대한 <br>
								고객수요를 확대하는 방향으로 <br>
								공급네트워크를 구성하는 것이다. <br><br>

								C. 가치밀도는 저장위치와 수송방식보다는 <br>
								제품의 신뢰성, 품질 등과 관련있는 요소로서, <br>
								저장위치와 수송방식을 결정하는 유일한 기준이 아니다. 
							</div>
							
						</div>
					</div>
				</div>
				<p class="tiny_noti">* 황선호의 고품격1004제 문제풀이 문항 발췌</p>
			</div>

			<p class="point"><img src="<%=img_main %>/m/2023/0127_ssunt/con_img12.png" alt="시험은 결국 문제를 풀고 정답을 찾는 싸움! 합격을 위해선 머릿속의 이론을 활용하여 문제를 정확하고, 빠르게 풀 줄 알아야 합니다."></p>
		</div>
	</div>
</div>
</div>

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(4);">다시 재생하기</a>
</div></div>

<style>.eventWrap .evCon2{position: relative;background-color: #320a00;overflow: visible;}
.eventWrap .evCon2 .question_wrap{position: relative;margin: 0 -60px;background: #420d07;text-align: left;padding: 50px 100px;display: flex;flex-direction: row;flex-wrap: wrap;align-items: center}
.eventWrap .evCon2 .question_wrap .state{margin: 0 0 0 40px}
.eventWrap .evCon2 .question_wrap .state .confirm{position: relative;}
.eventWrap .evCon2 .question_wrap .state .confirm .view{display: block;width: 100px;height: 100px;background: #fdc250;border-radius: 100%;text-align: center;display: flex;justify-content: center;align-items: center;margin: 10px 0 0}
.eventWrap .evCon2 .question_wrap .state .confirm .dimBg2 { position:fixed; top:0; left:0; right:0; bottom:0; font-size:0; } 
.eventWrap .evCon2 .question_wrap .state .confirm .answer_pop {width: 30%;background-color:#f2f2f2;border: solid 1px #242424;padding: 15px 14px;border-radius:10px;position: absolute;right: 0;top: 130px;z-index: 3;text-align: left;box-sizing: border-box;width: 330px;padding: 20px 20px;} 
.eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .noti{font-size: 13px;font-weight: normal}
.eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .noti .point{font-size: 14px;margin: 0 0 4px;font-weight: bold;}
.eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .noti .point span{font-weight: 900;}
.eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .close {position:absolute;top: -24px;right: 0;cursor:pointer;width: 20px;height: 20px;text-align: center;z-index:5;line-height: 20px;} 
.eventWrap .evCon2 .question_wrap .tiny_noti{width: 100%;padding: 10px 0 0;color: #c06953}

.eventWrap .evCon2 .progress{position: relative;width: 102px;height: 102px;margin: 0 auto;box-shadow: none;background-color: #fdc250;border-radius: 100%;border: 1px solid #2a2a2a}
.eventWrap .evCon2 .progress > span{width: calc(50% + 1px);height: 100%;overflow: hidden;position: absolute;top: 0;z-index: 1}
.eventWrap .evCon2 .progress .txt{display: block;text-align: center;font-size: 13px;padding: 19px 0 0;z-index: 1;position: relative;}
.eventWrap .evCon2 .progress .countdown2{color: #f00;font-size: 43px;font-weight: 900;line-height: 1;display: block;padding: 30px 0 0 0;}
.eventWrap .evCon2 .progress .progress-value{width: 90%;height: 90%;font-size: 24px;color: rgb(250, 245, 245);text-align: center;position: absolute;top: 5%;left: 5%;background: #fff;border-radius: 100%;}

@media screen and (max-width: 1200px){
    .eventWrap .evCon2 .question_wrap{margin: 0;padding: 4% 4%}
    .eventWrap .evCon2 .question_wrap .question{width: 80%}
    .eventWrap .evCon2 .question_wrap .state{width: 20%;margin: 0;padding: 0 0 0 3%}
    .eventWrap .evCon2 .question_wrap .state .confirm .view{height: 15vw;width: 15vw;font-size: 2.4vw}
    .eventWrap .evCon2 .question_wrap .state .confirm .answer_pop{top: 100%;margin: 25% 0 0}
    .eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .noti .point{padding: 0}
    .eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .close {top: -6%;right: -2%;background: #000;border-radius: 100%;/* padding: 1%; */ width: 30px;height: 30px;display: flex;justify-content: center;align-items: center}
    .eventWrap .evCon2 .question_wrap .state .confirm .answer_pop .close img{width: 44%}
    .eventWrap .evCon2 .point{padding: 0 15%}
    .eventWrap .evCon2 .progress{margin: 0;width: 15vw;height: 15vw}
}

@media screen and (max-width: 576px){
    .eventWrap .evCon2 .question_wrap{ padding: 0 0 4%;}
    .eventWrap .evCon2 .question_wrap .question{width: 100%;margin: 0 0 5%}
    .eventWrap .evCon2 .question_wrap .state{width: 100%;padding: 0 5%;display: flex;justify-content: center;align-items: center}
    .eventWrap .evCon2 .question_wrap .state .confirm{margin: 0 0 0 3%;width: 50%}
    .eventWrap .evCon2 .question_wrap .state .confirm .view{margin: 0;width: 100%;font-size: 14px;border-radius: 7px;font-weight: bold;height: 40px}
    .eventWrap .evCon2 .question_wrap .state .confirm .answer_pop{width: 280px;padding: 3vw 3vw;margin: 20px 0 0;}
    .eventWrap .evCon2 .question_wrap .tiny_noti{ padding: 12px 0 0 4%; text-align: center;}

    .eventWrap .evCon2 .progress{width: 50%;border-radius: 7px;text-align: center;height: 40px;border: 1px solid #c06953;}
    .eventWrap .evCon2 .progress:after{border-radius: 7px;display: none}
    .eventWrap .evCon2 .progress > span{display: none;}
    .eventWrap .evCon2 .progress .txt{padding: 0;position: absolute;top: 10px;right: 50%;margin: 0 3px 0 0;font-size: 13px;color: #ff9c82;}
    .eventWrap .evCon2 .progress .countdown2{padding: 0;position: absolute;top: 6px;left: 50%;margin: 0 0 0 13px;font-size: 23px;color: #fff;}
    .eventWrap .evCon2 .progress .progress-value{border-radius: 7px;width: 100%;height: 100%;top: 0;left: 0;background: #420d07;}
    .eventWrap .evCon2.on .progress .progress-right .progress-bar{border-top-left-radius: 7px;border-bottom-left-radius: 7px}
    .eventWrap .evCon2 .point{padding: 0 13%}
}
</style>
<script>// timer
var SetTime2 = 49; //할당 시간
$step = 2;
$loops = Math.round(100 / $step);
$increment = 360 / $loops;
$half = Math.round($loops / 2);
$barColor = '#fdc250';
$backColor = '#2a2a2a';



function msg_time2() {
    //m = (SetTime % 50);
    var msg2 = (SetTime2 % 50) ;
    document.all.countdown2.innerHTML = msg2;
    SetTime2--;

    //console.log(msg);

    if(SetTime2 < $half){
        $nextdeg = (90 + ( $increment * SetTime2 ))+'deg';
        $('.progress').css({'background-image':'linear-gradient(90deg,'+$backColor+' 50%,transparent 50%,transparent),linear-gradient('+$nextdeg+','+$barColor+' 50%,'+$backColor+' 50%,'+$backColor+')'});
    }else{
        $nextdeg = (-90 + ( $increment * ( SetTime2 - $half ) ))+'deg';
        $('.progress').css({'background-image':'linear-gradient('+$nextdeg+','+$barColor+' 50%,transparent 50%,transparent),linear-gradient(270deg,'+$barColor+' 50%,'+$backColor+' 50%,'+$backColor+')'});
    }

    if (SetTime2 < 0) {
        clearInterval(tid2);	
        $('.progress').css({'background-image':'linear-gradient(0deg, rgb(42, 42, 42) 0%, transparent 0%, transparent), linear-gradient(0deg, rgb(42, 42, 42) 100%, rgb(42, 42, 42) 100%, rgb(42, 42, 42)'});
        //TestOpen = function(){}; //함수초기화
    }
}
function TimerStart2(){ 
    tid2=setInterval('msg_time2()',1000)
};

function TestOpen2(){
    $('#evCon2').addClass('on');
}

//scroll시 함수실행
$(window).scroll(function () {
    //var ev2top = $("#con_tit").offset().top - 50;
    var ev2top = $("#con_tit").offset().top - 50;
    var wTop = $(window).scrollTop();
    if (wTop > ev2top) {
        //alert(wTop);
        //click시 on이 붙으므로 scroll시 timer함수가 중복되는걸 방지
        if ($("#evCon2").hasClass("on")) { 
            return false;
        }

        if (!$("#evCon2").hasClass("on")) { 
            TestOpen2();
            TimerStart2();
            $("#evCon2").addClass("on");
        }
    }
});


/*** 문제풀이 카운트 E ***/

$(".question_wrap .view").click(function(){
    $(this).parent().find(".answer_pop, .dimBg2").show();
    $(this).parent().find(".dimBg2").show();
    clearInterval(tid2);	

});
$('.question_wrap .close, .question_wrap .dimBg2').click(function(){
    $(this).parents('.question_wrap').find(".answer_pop, .dimBg2").hide();
    if (SetTime2 > 0) {
        TestOpen2();
        TimerStart2();			
    }
});
</script>


<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
정해진 시간이 카운트다운 되는 것과 동시에 원형의 색상 바 역시 줄어들며 시간의 경과를 사용자에게 전달합니다. <br>
이를 통하여 문제풀이에 소모된 시간을 직관적으로 확인할 수 있습니다. </p>


<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megajob.co.kr/s/job/event/2023/01270005/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#카운트다운</p> </li>
                            <li><p>#시간재기</p> </li>
                            <li><p>#애니메이션</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">말풍선</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evCon1 bubble" id="anilist5">
    <div class="inner">
        <div class="con_box">
            <div class="bubble_box">
                <img class="bg" src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_bg.png">
            
                <div class="bubble bubble_1">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_1.png" alt="어느 부분이 약한지 파악하고 싶어요!">
                </div>
                <div class="bubble bubble_2">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_2.png" alt="약점을 빠르게 보완하고 싶어요!">
                </div>
                <div class="bubble bubble_3">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_3.png" alt="전체를 빠르게 요약정리 할 수 있을까요?">
                </div>
                <div class="bubble bubble_4">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_4.png" alt="바뀐 법령과 최신판례도 들어야해요.">
                </div>
                <div class="bubble bubble_5">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_5.png" alt="문제풀이로 실전 감각도 익히고 싶어요.">
                </div>
            </div>
        </div>
    </div>
</div>

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(5);">다시 재생하기</a>
</div>
</div>

<style>.evCon1 {background-color: #f1f1f1; } 
.evCon1 .con_box .bubble_box { margin: 0 -50px; } 
.evCon1 .con_box .bubble_box .bubble { position: absolute; opacity: 0; -webkit-transform: scale(0.1, 0.1); transform: scale(0.1, 0.1); -webkit-transition: all 0.5s; transition: all 0.5s; -webkit-transition-timing-function: ease-out; transition-timing-function: ease-out; } 
.evCon1.on .con_box .bubble_box .bubble_1 { opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); -webkit-transition-delay: 0.1s; transition-delay: 0.1s; } 
.evCon1.on .con_box .bubble_box .bubble_2 { opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); -webkit-transition-delay: 0.2s; transition-delay: 0.2s; } 
.evCon1.on .con_box .bubble_box .bubble_3 { opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); -webkit-transition-delay: 0.3s; transition-delay: 0.3s; } 
.evCon1.on .con_box .bubble_box .bubble_4 { opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); -webkit-transition-delay: 0.4s; transition-delay: 0.4s; } 
.evCon1.on .con_box .bubble_box .bubble_5 { opacity: 1; -webkit-transform: scale(1, 1); transform: scale(1, 1); -webkit-transition-delay: 0.5s; transition-delay: 0.5s; } 
.evCon1 .con_box .bubble_box .bubble_1 { top: 82px; left: -46px; } 
.evCon1 .con_box .bubble_box .bubble_2 { top: 100px; right: -46px; } 
.evCon1 .con_box .bubble_box .bubble_3 { top: 235px; left: 90px; } 
.evCon1 .con_box .bubble_box .bubble_4 { top: 280px; right: 130px; } 
.evCon1 .con_box .bubble_box .bubble_5 { top: 387px; left: -46px; } 

@media screen and (max-width: 1200px){
    .evCon1 .con_box .bubble_box { margin: 0 auto; } 
    .evCon1 .con_box .bubble_box .bubble_1 { top: 5vw; left: 0; } 
    .evCon1 .con_box .bubble_box .bubble_2 { top: 7vw; right: 0; } 
    .evCon1 .con_box .bubble_box .bubble_3 { top: 21vw; left: 90px; } 
    .evCon1 .con_box .bubble_box .bubble_4 { top: 24vw; right: 5vw; } 
    .evCon1 .con_box .bubble_box .bubble_5 { top: 36vw; left: 0; } 
}

@media screen and (max-width: 992px){
    .evCon1 .con_box .bubble_box .bubble { width: 45vw; } 
    .evCon1 .con_box .bubble_box .bubble_3 { left: 4vw; } 
}
</style>

<script>var vs_m_top = $(".evCon1"); 
var top_bubble = $(".bubble_box"); //상단메뉴
var scTop = 0;

var flag = false;
var fix_position = $('.evCon1').offset().top;

$(window).on('resize', function() {
    fix_position = $('.evCon1').offset().top;
});

$(window).on('scroll', function() {
    scTop = $(this).scrollTop();
    if (scTop > fix_position && !flag) {
        top_bubble.addClass("on");
        vs_m_top.addClass('on');
        flag = true;
    }
    if (scTop <= fix_position && flag) {
        top_bubble.removeClass("on");
        vs_m_top.removeClass('on');
        flag = false;
    }
});
</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
특정 이미지들의 크기가 순차적으로 Scale(0.1, 0.1)에서 Scale(1, 1)으로 변화하면서 말풍선이 나타나는 느낌을 줄 수 있습니다.  </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/01160003/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#페이드인</p> </li>
                            <li><p>#나타나기</p> </li>
                            <li><p>#순차적</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">순서대로 깜박임</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><ul class="curr">
    <li><span>1회독</span><strong>TM(Teacher’s Map)</strong> : 키워드 중심으로 개념과 용어 요약 &middot; 정리</li>
    <li><span>2회독</span><strong>이론설명</strong>(강의 + PPT)</li>
    <li><span>3회독</span><strong>예제/확인문제/실전훈련문제</strong> : 배운 이론 바로 적용</li>
    <li><span>4회독</span><strong>오쌤Talk</strong> : 강의에서의 쉬운 설명을 보며 배운 내용 다시 점검</li>
</ul></div>

<style>.curr {position: relative;font-family: 'NotoSans KR';}
.curr li {background: #000;color: #fff;font-size: 23px;width: 1000px; height: 120px; margin: 0 auto 14px;padding: 19px 0 19px 164px;text-align: left;border: 6px solid #000;}
.curr li:nth-child(4) {margin: 0 auto 0;}
.curr li.on {border-color: #d84646;}
.curr li span {color: #000;background: #ffc300;padding: 21px 11px;border-radius: 100%;display: inline-block;margin: 0 18px 0 0;}
.curr li strong {color: #ffc300;}

@media (max-width: 1200px){
    .curr li {width: 100%;padding: 19px 12%;font-size: 20px;}
}
@media (max-width:992px){
    .curr li {font-size: 17px;padding: 10px 12%;height: 100px;}
    .curr li span {padding: 18px 10px;}
}
@media (max-width:768px){
    .curr li {font-size: 13px;padding: 4px 0 4px 65px;height: 65px;margin: 0 auto 10px;display: block;position: relative;border: 2px solid #000;}
    .curr li span {padding: 13.5px 7.5px;position: absolute;left: 4px;margin: 0 0 0 0;}
    .curr li strong {display: block;margin: 5px 0 0;}
}
</style>

<script>var idx = 0;
setInterval(time, 3000);

function time(){
    var box = $('.curr li');
    box.removeClass('on');
    box.eq(idx).addClass('on');
    idx++;
    if(idx >= box.length) idx= 0;
}

</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
3초 간격으로 위에서부터 아래(순서대로)를 향해, 박스의 Border에 깜박이는 것과 같은 강조효과가 들어갑니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megajob.co.kr/s/job/event/2022/04130012/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#순서대로</p> </li>
                            <li><p>#강조효과</p> </li>
                            <li><p>#깜박임</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap anipos">
                <p class="page_head">숫자 상승 효과</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="numwrap" id="anilist6">
    <span id="numup" data-to="8098">
    </span>
    <span id="percent">
        %<sup>*</sup>
    </span>
    
    <div class="pop_btn_wrap">
        <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(6);">다시 재생하기</a>
    </div>

    <input type="hidden" name="firstYn" id="firstYn" value="Y">
</div></div>

<style>
.numwrap{margin: 30px auto 60px;font-size: 105px;display: block;color: #283fcd;font-weight: 900;text-align: center;}
.numwrap span{position:relative}
.numwrap #percent{display: none;}
.numwrap sup{font-size: 30px;position: absolute;right: -4px;top: 30px;}

@media screen and (max-width: 1200px){
    .numwrap{margin: 4% auto 7%;}
    .numwrap span{position:relative}
    .numwrap sup{font-size: 30px;position: absolute;right: -4px;top: 30px;}
}
@media screen and (max-width: 768px){
    .numwrap{font-size: 90px;}
}
@media screen and (max-width: 576px){
    .numwrap{font-size: 65px;}
    .numwrap sup{font-size: 20px;top: 10px;}
}
</style>

<script>
$(document).ready(function() {
    $(window).scroll(function(){
        var con2Top = $(".anipos").offset().top;
        var windwoTop = $(window).scrollTop();
        if(windwoTop > con2Top - 600){
            if($("#firstYn").val() == "Y"){
                counting_view();
            }
        }
    });
});

function counting_view() {
    var memberCountConTxt1 = $("#numup").attr("data-to");
    $({ val1 : 0 }).animate({ val1 : memberCountConTxt1}, {
        duration: 1000,
        step: function() {
        var num1 = numberWithCommas(Math.floor(this.val1));
        $("#numup").text(num1);
        },
        complete: function() {
        var num1 = numberWithCommas(Math.floor(this.val1));
        $("#numup").text(num1);
        $("#firstYn").val("N");
        }
    });
    $("#percent").show()

}
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 CSS 애니메이션 효과 기능입니다.<br>
0에서부터 지정된 특정 숫자까지 수치가 증가하는 느낌을 줄 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/03160033/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#숫자상승</p> </li>
                            <li><p>#카운트</p> </li>
                            <li><p>#수치증가</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">메인 영상&amp;비쥬얼 전환 - 비디오 태그 사용</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evVideoEffect">
    <div class="video_wrap visual_wrap_ani">
    <div class="time"></div>
    <video autoplay muted playsinline id="myVideo">
        <source src="<%=img_main%>/m/video/shin242_movie.mp4" type="video/mp4">
    </video>
</div>
<div class="visual_wrap">
    <div class="inner">
        <div class="tea"><img src="<%=img_main%>/m/2023/0609_shin242/con1_tea.png" alt="-"></div>
        <span class="tiny_noti">
          * 2022/04/12 YES24 공무원 전체 베스트셀러 1위 기록 기준 <br>
          ** 2012/4~2023/4월 행정학/지방자치론 신용한 교재 출고부수(판매용+증정용+비매품 출고포함)
        </span>
        <div class="label">
            <div><img src="<%=img_main%>/m/2023/0609_shin242/con1_img01.png" alt="YES24 공무원 전체 베스트셀러 1위"></div>
            <div><img src="<%=img_main%>/m/2023/0609_shin242/con1_img02.png" alt="누적 판매량 100만부 이상"></div>
        </div>
        <h3>
            <div class="sub_tit"><img src="<%=img_main%>/m/2023/0609_shin242/con1_subtit.png" alt="후회 없을 1년을 위한  검.증.된. 선택"></div>
            <div class="highlight">
            <span class="tit1"><img src="<%=img_main%>/m/2023/0609_shin242/con1_tit_blue.png" alt="2024’ 신용한 행정학"></span>
            <span class="tit2">
                <em class="light"><img src="<%=img_main%>/m/2023/0609_shin242/con1_light.png" alt="-"></em>
                <img src="<%=img_main%>/m/2023/0609_shin242/con1_tit_transparent.png" alt="2024’ 신용한 행정학">
            </span>
            </div>
            <a href="/teacher/home.asp?bcode=shin242" target="_blank" title="신용한 선생님 홈" class="tea_home">H</a>
        </h3>
        </div>
</div>
</div></div>

<style>
.evVideoEffect {padding: 0; background: #000; position: relative;}
.evVideoEffect .video_wrap{position:relative;padding:0 0 56% 0;}
.evVideoEffect .video_wrap .time{position:absolute;left:10px;top:0;font-size:18px;color:#666;z-index:1;}
.evVideoEffect .video_wrap video{position:absolute;width:100%;height:100%; top: 0; left: 0;}
.evVideoEffect .inner {padding: 15px 0 0; z-index: 1;}
.evVideoEffect .visual_wrap {width:100%; display:none; background: #302d2e url(https://image.megagong.net/m/2023/0609_shin242/con1_bg.jpg) no-repeat; background-position: center center; background-size: cover; animation: op 1s ease-in forwards; opacity: 0;}
.visual_wrap_ani {animation: op 1s ease-in .5s forwards; }
.evVideoEffect .visual_wrap .tea {position: absolute;bottom: 0;right: 48px;width: 53%;z-index: -1;}
.evVideoEffect .visual_wrap .tiny_noti {color: #ccc; display: block; text-align: right; margin: 0 2% 160px 0; opacity: 0.4; font-size: 10px;}
.evVideoEffect .visual_wrap .label {display: flex; gap: 60px; margin: 0 80px 157px;}
.evVideoEffect .visual_wrap h3 {position: relative;}
.evVideoEffect .visual_wrap h3 .sub_tit {text-align: left; opacity: 0; animation: op 1s ease-in 1.5s 1 forwards; margin: 0 80px;}
.evVideoEffect .visual_wrap h3 .highlight {position: relative; opacity: 0; animation: op 1s ease-in 2.5s 1 forwards;}
.evVideoEffect .visual_wrap h3 .highlight span {}
.evVideoEffect .visual_wrap h3 .highlight span.tit2 {position: absolute; bottom: 0; right: 0; overflow: hidden; z-index: 1;}
.evVideoEffect .visual_wrap h3 .highlight span.tit2 .light {position: absolute; top: 50%; left: 0; transform: translate(-100%, -50%); animation: light_ltr 3s ease-in 3s infinite; z-index: -1;}
.evVideoEffect .visual_wrap h3 .tea_home {position: absolute; right: 40px; bottom: 148px; width: 40px; height: 40px; border-radius: 50%; background: #3c6fff; color: #fff; font-size: 14px; font-weight: bold; display: flex; justify-content: center; align-items: center; z-index: 2; opacity: 0; animation: op 1s ease-in 2.5s 1 forwards;}

@keyframes op {
    0% {opacity: 0;}
    100% {opacity: 1;}
}
@keyframes light_ltr {
    0% {transform: translate(-100%, -50%);}
    100% {transform: translate(300%, -50%)}
}

@media screen and (max-width: 1320px){
    .evVideoEffect .visual_wrap .inner {width: 100%; padding: 0;}
    .evVideoEffect .visual_wrap .tea {right: 4.5%; width: 53%;}
    .evVideoEffect .visual_wrap .tiny_noti {margin: 0 2% 10%;}
    .evVideoEffect .visual_wrap .label {margin: 0 6% 10%; width: 38%;}
    .evVideoEffect .visual_wrap h3 .sub_tit {margin: 0 6%; width: 60%;}
    .evVideoEffect .visual_wrap h3 .highlight span.tit2 .light {width: 40%;}
    .evVideoEffect .visual_wrap h3 .tea_home {bottom: 40%; right: 2%;}
}
@media screen and (max-width: 1200px){
    .evVideoEffect .video_wrap {display: none;}
    .evVideoEffect .visual_wrap {display: block;}
}
@media screen and (max-width: 992px){
    .evVideoEffect .visual_wrap .label {gap: 10px;}
    .evVideoEffect .visual_wrap h3 .tea_home {width: 28px; height: 28px; font-size: 12px;}
}
@media screen and (max-width: 576px){
    .evVideoEffect .visual_wrap .tiny_noti {margin: 0 2% 8%;}
    .evVideoEffect .visual_wrap h3 .tea_home {width: 20px; height: 20px; font-size: 10px; bottom: 80%; right: 7%;}
}
</style>

<script>var myVideo = document.querySelector("#myVideo"); 
myVideo.playbackRate = 4; // 4배속 설정 - 빠른 테스트를 위해서 개발하는동안 활성화시키고 완료되면 다시 주석을 달면 됩니다.

myVideo.addEventListener('timeupdate',function(e) {
    var s = e.target.currentTime;
    var h = Math.floor(s / 3600);
    s = s % 3600;
    var m = Math.floor(s / 60);
    s = Math.floor(s%60);
    $('.video_wrap .time').html(h+":"+m+":"+s);
    if (e.target.currentTime === 0) {
        myVideo.pause();
    }
    if (s === 22) {
        $('.video_wrap').remove();
        $('.visual_wrap').fadeIn(2000);
    }
}, true);

var delay = 100;
var resizeTime = null;

$(window).on('load resize', function() {
    clearTimeout(resizeTime);
    resizeTime = setTimeout(function(){
        if ($(window).outerWidth() <= 1200) {
            $('.video_wrap').hide();
            $(".visual_wrap").removeClass("visual_wrap_ani");
        } else {
            $('.video_wrap').show();
        }
    }, delay);
});</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 영상 효과입니다.<br>
영상이 끝나는 시점에 메인 비쥬얼이 등장합니다.<br>
모바일 기기에서는 음소거를 설정하면 자동재생이 되긴 하지만, <br>
<em>모바일 iOS 특정 버전에서는 초기 로드 시 비디오 태그의 기능들을 제대로 실행시키지 못하는 버그</em>가 있습니다.<br>
그러므로 기기별 크로스 브라우징을 고려하여 PC 이외의 기기에서는 영상 없이 바로 메인 비쥬얼이 노출됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/06090018/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#영상제어</p></li>
                            <li><p>#비디오태그</p></li>
                            <li><p>#텍스트효과</p></li>
                            <li><p>#iOS버그</p></li>
                        </ul>
                    </div>
                </div>
                <!-- 참고링크: https://kangdanne.tistory.com/219 -->
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">메인 영상 비쥬얼</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evMVEffect">
    <div class="inner">
        <video autoplay loop muted playsinline class="video-bg">
            <source src="<%=img_main%>/m/video/summer_planner.mp4" type="video/mp4">
        </video>
        <div class="bg"><img src="<%=img_main %>/m/2023/0613_planner/con1_bg.png" alt="-" /></div>
        <h3 data-aos="zoom-in" data-aos-delay="200"><img src="<%=img_main %>/m/2023/0613_planner/con1_tit.png" alt="2024 거꾸로 플래너" /></h3>
        <a href="javascript:;" class="btn">신청 바로가기</a>
    </div>
</div>

<div class="pop_btn_wrap evMVEffect_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn">전체화면으로 보기</a>
</div></div>

<style>
.evMVEffect{overflow:hidden;position: relative;}
.evMVEffect.full{overflow:inherit;}
.evMVEffect .video-bg { width: 1460px; position: absolute; top: 133px; left: -310px; } 
.evMVEffect .bg { margin: 0 -660px; position: relative; } 
.evMVEffect h3 { position: absolute; top: 260px; right: -163px; } 
.evMVEffect .btn { position: absolute; top: 715px; right: -160px; background: #111; color: #fff; font-size: 22px; padding: 20.6px 118.6px; border-radius: 10px; font-weight: 700; text-align:center;} 

@media screen and (max-width: 1400px){
    .evMVEffect .inner { width: 96%; } 
    .evMVEffect .video-bg { top: 13%; left: -3%; width: 130%; } 
    .evMVEffect .bg { margin: 0 -55%; } 
    .evMVEffect h3 { right: 0; top: 24%; padding-left: 36%; } 
    .evMVEffect .btn { right: 0; top: 67%; font-size: 18px; padding: 19px 0; width: 30%; } 
}

@media screen and (max-width: 768px){
    .evMVEffect .btn { font-size: 15px; padding: 13px 0; width: 38%; } 
}

@media screen and (max-width: 576px){
    .evMVEffect .btn { font-size: 13.5px; padding: 10px 0; } 
}
</style>

<script>
$('.evMVEffect_btn_wrap .re_ani_btn').on('click', function(e){
    e.preventDefault();
    if (!$(this).hasClass('on')) {
        $(this).addClass('on');
        $('.evMVEffect').addClass('full');
        $(this).text('원래대로 보기');
    } else {
        $(this).removeClass('on');
        $('.evMVEffect').removeClass('full');
        $(this).text('전체화면으로 보기');
    }
});

</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 메인 영상입니다.<br>
모바일 기기에서는 음소거를 설정하면 자동재생이 되긴 하지만, <br>
<em>모바일 iOS에서는 절전 모드에서 플레이가 안되는 현상</em>이 있습니다.<br>
절전모드는 고려 대상이 아니므로 음소거 자동재생으로 메인 영상처리를 합니다.<br><br>

<a href="https://design.megagong.net/image/m/video/ios_issue.mp4" target="_blank"><em>- iOS 절전모드에서 비디오 태그 플레이 안되는 현상 보기</em></a></p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/06130019/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#거꾸로플래너</p></li>
                            <li><p>#메인영상</p></li>
                            <li><p>#영상비쥬얼</p></li>
                        </ul>
                    </div>
                </div>

            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">패턴 효과</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evPatternEffect" id="anilist7">
    <div class="intro">
        <div class="inner">
            <h3><img src="<%=img_main %>/m/2023/0614_live/visual_tit.png" alt="공무원, 합격패턴 메가로, 잠금해제" /></h3>
            <div class="con_box">
                <div class="pattern">
                <div class="bg"><img src="<%=img_main %>/m/2023/0614_live/visual1_pattern.png" alt="-" /></div>
                <div class="line line1"><img src="<%=img_main %>/m/2023/0614_live/visual1_pattern1.png" alt="-" /></div>
                <div class="line line2"><span><img src="<%=img_main %>/m/2023/0614_live/visual1_pattern2.png" alt="-" /></span></div>
                <div class="line line3"><img src="<%=img_main %>/m/2023/0614_live/visual1_pattern3.png" alt="-" /></div>
                </div>
            </div>
        </div>
    </div> <!-- // intro -->
</div><!-- .evPatternEffect E -->

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(7);">다시 재생하기</a>
</div></div>

<style>
.evPatternEffect{text-align:center;}
.evPatternEffect .intro { background: #4e5a62 url(https://image.megagong.net/m/2023/0614_live/visual_bg.jpg) no-repeat center center; padding: 230px 0 220px; z-index: 10; /*position: absolute; top: 0; left:0; right:0; animation: fade_out 1s linear 2.75s both;*/ } 
.evPatternEffect .intro h3 { margin: 0 0 82px; }
.evPatternEffect .pattern { position: relative; display: inline-block; } 
.evPatternEffect .pattern .line { position: absolute; top: 23px; } 
.evPatternEffect .pattern .line1 { left: 24px; } 
.evPatternEffect .pattern .line2 { left: 24px; overflow: hidden; } 
.evPatternEffect .pattern .line2 span { display: inline-block; width: 350px; } 
.evPatternEffect .pattern .line3 { right: 24px; } 
.evPatternEffect.on .pattern .line1{animation: animateLine1 .6s linear .3s both;}
.evPatternEffect.on .pattern .line2{animation: animateLine2 .9s linear .95s both;}
.evPatternEffect.on .pattern .line3{animation: animateLine3 .6s linear 1.8s both;}

@keyframes fade_out { 
    0% { opacity: 1; } 
    100% { opacity: 0; z-index:-1; } 
}

@keyframes animateLine1 { 
    0% { transform:scaleY(0); transform-origin: bottom; } 
    100% { transform:scaleY(1); transform-origin: bottom; } 
}

@keyframes animateLine2 { 
    0% { width: 0; } 
    100% { width: 350px; } 
}

@keyframes animateLine3 { 
    0% { transform:scaleY(0); transform-origin: top; } 
    100% { transform:scaleY(1); transform-origin: top; } 
}

@media screen and (max-width: 1200px){
    .evPatternEffect .intro { background-size: cover; padding: 20% 0 19%; } 
    .evPatternEffect .intro h3 { margin: 0 26% 7%; }
}


@media screen and (max-width: 460px){
    .evPatternEffect { height: calc(271px + 62vw); }
    .evPatternEffect .pattern { width: 330px; } 
    .evPatternEffect .pattern .line { top: 20px; } 
    .evPatternEffect .pattern .line1 { width: 22px; left: 20px; } 
    .evPatternEffect .pattern .line2 { /*left: 20px;*/left:-11px; } 
    .evPatternEffect .pattern .line2 span { width: 290px; } 
    .evPatternEffect .pattern .line3 { width: 21.3px; right: 19px; } 
}
</style>

<script>$('.evPatternEffect').addClass('on');</script>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 패턴 효과입니다.<br>
합격패턴은 M자로 잠금을 해제함으로써 합격할 수 있다는 긍적적은 M브랜드에 대한 긍정적인 인식을 심어줍니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/06140073/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격패턴</p></li>
                            <li><p>#잠금해제</p></li>
                        </ul>
                    </div>
                </div>

            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">패럴렉스 스크롤 효과</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evParallaxEffect">
    <div class="evCon5_contents_wrap">
        <div class="inner">
            <h4 class="blindw">메가공무원 특징안내</h5>
            <div class="contents_box_wrap">

                <h4 class="con_tit">
                    오직 수험생만을 최우선하는 <br>메가만의 새로운 시도 역시 멈추지 않겠습니다.
                    <span class="tiny">난무하는 블랙마케팅 속에서도 <br>메가공무원은 메가답게 우리의 길을 가겠습니다. <br>수험생을 위한 책임과 진심, 그 하나를 위해 늘 고민하겠습니다.</span>
                </h4>

                <div class="bg_box_wrap">
                    <div class="bg_box">
                        <div class="in_wrp">
                            <p class="in_txt">클린 마케팅/수강평/Q&A</p>
                            <p class="in_con">불법적인 홍보 활동, 꾸며낸 수강평, 무의미한 Q&A <br><br class="double">여러분의 선택에 방해가 되는 그 무엇도 <br class="double">메가에서는 허용되지 않습니다.</p>	
                        </div>
                    </div>
                    <div class="bg_box">
                        <div class="in_wrp">
                            <p class="in_txt">투명한 메가패스 운영</p>
                            <p class="in_con">편리한 강의 수강 환경은 물론 확실한 환급까지 <br><br class="double">메가만의 정직한 상품 운영으로 <br class="double">여러분이 학습에만 집중할 수 있도록 합니다.</p>	
                        </div>
                    </div>
                    <div class="bg_box">
                        <div class="in_wrp">
                            <p class="in_txt">업계 최초 E-book 도입</p>
                            <p class="in_con">메가공무원/소방/군무원의 수험서를 <br class="double">전자책으로 구현한 e-교재와 필기앱으로 <br><br class="double">여러분의 가볍고 효율적인 학습을 지원합니다.</p>	
                        </div>
                        
                    </div>
                    <div class="bar_wrap">
                        <div class="bar"><span class="tip"></span></div>
                        <div class="bar"><span class="tip"></span></div>
                        <div class="bar"><span class="tip"></span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/common/js/gsap.min.js"></script>
<script type="text/javascript" src="/common/js/ScrollTrigger.min.js"></script></div>

<script>const tl_con = gsap.timeline({
    scrollTrigger: {
        trigger: '.evParallaxEffect',
        start: 'top top',
        end: '+=400%',
        pin: true,
        scrub: 2,
        //markers: true,
    }
});

gsap.set('.bg_box:nth-child(1)', { opacity: 1 }); // 바로 배경이 보여야하는 경우
gsap.set('.bg_box .in_wrp', { y: 50 });

tl_con
    .add('start1')
    .to('.bg_box:nth-child(1)', 1, {
        opacity: 1,
    })
    .to('.bg_box:nth-child(1) .in_wrp', 1, {
        opacity: 1,
        y: 0,
    }, 'start1')
    .to('.bar_wrap .bar:nth-child(3) .tip', 1, {
        width:'100%'
    }, 'start1')

    


    .add('start2')
    .to('.bg_box:nth-child(2)', 1, { // 0이면 바로 바뀜, 1이면 스크롤 위치에 따라서 바뀜
        opacity: 1,
    })
    .to('.bg_box:nth-child(1) .in_wrp', 1, {
        opacity: 0,
        y: -50,
    }, 'start2')
    .to('.bg_box:nth-child(2) .in_wrp', 1, {
        opacity: 1,
        y: 0,
    }, 'start2')
    .to('.bar_wrap .bar:nth-child(2) .tip', 1, {
        width:'100%'
    }, 'start2')
    


    .add('start3')
    .to('.bg_box:nth-child(3)', 1, {
        opacity: 1,
    })
    .to('.bg_box:nth-child(2) .in_wrp', 1, {
        opacity: 0,
        y: -50,
    }, 'start3')
    .to('.bg_box:nth-child(3) .in_wrp', 1, {
        opacity: 1,
        y: 0,
    }, 'start3')
    .to('.bar_wrap .bar:nth-child(1) .tip', 1, {
        width:'100%'
    }, 'start3')</script>


<style>
.evParallaxEffect{text-align:center;font-family:'NotoSans KR';}
.evParallaxEffect .con_tit{font-size: 42px;margin: 0 0 75px;font-weight: 900;}
.evParallaxEffect .con_tit .tiny{display: block;font-size: 20px;color:#777;font-weight: normal;padding: 30px 0 0;}
.evParallaxEffect .evCon5_contents_wrap{display:flex;align-items:center;justify-content:center;height:100vh;}
.evParallaxEffect .evCon5_contents_wrap .inner .contents_box_wrap{position: relative;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box_wrap{width:100%;height: 460px;margin: 0 auto 0;/* background-color: #000; */border-radius:50px;position: relative;overflow:hidden;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box{position: absolute;left:0;top:0;width:100%;height:100%;opacity:0;display:flex;align-items:center;justify-content:center;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box:nth-of-type(1){background:url(https://image.megagong.net/m/2023/0613_smmr/rollbg_1.jpg) 50% 50% no-repeat;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box:nth-of-type(2){background-image:url(https://image.megagong.net/m/2023/0613_smmr/rollbg_2.jpg);}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box:nth-of-type(3){background-image:url(https://image.megagong.net/m/2023/0613_smmr/rollbg_3.jpg);}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_wrp{opacity:0;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_txt{font-size:24px;color:#fff;font-weight: 900;padding: 0 0 20px;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_con{font-size:17px;color:#fff;opacity:0.8;line-height: 1.5;}
.evParallaxEffect .evCon5_contents_wrap .inner .bg_box .double{display: none;}
.evParallaxEffect .bar_wrap{position: absolute;bottom:25px;right:0;}
.evParallaxEffect .bar_wrap .bar{width:60px;height: 5px;background-color: #686464;position: absolute;bottom:0;right:0;}
.evParallaxEffect .bar_wrap .bar:nth-of-type(1){right:50px}
.evParallaxEffect .bar_wrap .bar:nth-of-type(2){right:115px}
.evParallaxEffect .bar_wrap .bar:nth-of-type(3){right:180px}
.evParallaxEffect .bar_wrap .bar .tip{position: absolute;bottom:0;left:0;width: 0;height: 100%;background-color: #fff;}

@media screen and (max-width: 1200px){
    .evParallaxEffect .con_tit{font-size: 4.2vw;margin: 0 0 7%;}
    .evParallaxEffect .con_tit .tiny{font-size: 2.6vw;padding: 2% 0 0;}

    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box_wrap{height: 47vh;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box{background-size: cover;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_txt{font-size: 3.6vw;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_con{font-size: 2.4vw;}
}

@media screen and (max-width: 576px){
    .evParallaxEffect .con_tit{font-size: 4.8vw;}
    .evParallaxEffect .con_tit .tiny{font-size: 3.4vw;}

    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box_wrap{height: 55vh;margin-top: 10vw;margin: 0 0 50px;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box_wrap{border-radius: 10vw;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_txt{font-size: 4.3vw;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box .in_con{font-size: 3.4vw;font-weight: 200;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box br{display: none;}
    .evParallaxEffect .evCon5_contents_wrap .inner .bg_box .double{display: block;}
}
</style>

<p class="page_text">메가공무원 이벤트 페이지에서 사용되는 패럴렉스 스크롤 효과입니다.<br>
스크롤을 해도 상하로 움직이지 않고 특정 부분들을 고정시킴으로써 고객에게 전달하고자 하는 메세지를 부각시키는 효과가 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/06130076/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#패럴렉스스크롤</p></li>
                            <li><p>#시차디자인</p></li>
                        </ul>
                    </div>
                </div>

            </div><!-- .page_text_wrap -->



            


            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
            
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    <style>
    /* common */
    .page_wrap.page_wide .code-box{padding:40px 5px;}

    /*visual*/
    .effect_type1{position: relative;}
    .effect_type1 .visual {position: relative; background: #88bfed url(https://img.megagong.net/m/2023/0306_pass/total/main_bg_gong.jpg) no-repeat;padding: 155px 0 150px;background-position: top center;background-size: auto 100%;text-align:center;font-family:'NotoSans KR';} 
    .effect_type1 .visual h3 {margin-bottom: 55px;} 
    .effect_type1 .visual h3 span{display: block;margin: 20px auto 0;}
    .effect_type1 .visual h3 span:nth-child(1){margin: 0 auto 90px;}
    .effect_type1 .visual .visual_content {width: 600px;margin: 95px auto 0;} 
    .effect_type1 .visual .visual_content .txt {font-size: 22px;line-height: 1.4;border: solid rgba(255, 255, 255, 0.3);border-width: 2px 0;padding: 50px 0;color: #fff;box-sizing: border-box;} 
    .effect_type1 .visual .visual_content .txt strong {font-weight: 700;color: #ffd2d4;} 
    .effect_type1 .visual .visual_content .txt strong.point {color: #3085ee;font-size: 32px;font-weight: 900;} 
    .effect_type1 .visual .visual_content .date {color: #3085ee;display: flex;justify-content: space-between;align-items: center;border-bottom: 2px solid rgba(255, 255, 255, 0.3);padding: 11.6px 0;} 
    .effect_type1 .visual .visual_content .date i { font-style: normal; font-size: 15px; display: inline-block; } 
    .effect_type1 .visual .visual_content .date span {font-size: 27px;font-weight: 700;} 
    .effect_type1 .visual .catchphrase{color: #555;font-size: 18px;}
    .eventWrap .test2 .inner {width: 80%;}

    .code-box .pop_btn_wrap a {display: inline-block;margin-top: 3%;}

    @media (max-width: 1200px) {
        .effect_type1 .visual {padding: 10% 0 18%; background-size: 200%; background-position: center bottom;}
        #eventWrap .inner {width: 97%;}
        .effect_type1 .visual h3 {margin: 0 0 8%; }
        .effect_type1 .visual h3 p img { width: 25%;}
        .effect_type1 .visual h3 span {margin: 0 15%;}
        .effect_type1 .visual h3 span:nth-child(1) {margin: 0 35% 10%; }
        .effect_type1 .visual .visual_content {width: 70%;margin-top: 12%;}
        .effect_type1 .visual .visual_content .txt {font-size: 24px; padding: 25px 0;}
        .effect_type1 .visual .visual_content .txt strong, .effect_type1 .visual .visual_content .txt strong.point {font-size: 28px;}
        .effect_type1 .visual .visual_content .date i {font-size: 13px;}
        .effect_type1 .visual .visual_content .date span {font-size: 23px;}

        .evCon1 .inner {padding: 5% 0;}
        .eventWrap .test2 .inner {width: 96%;}
        }
    @media (max-width: 768px) {
        .effect_type1 .visual .catchphrase { font-size: 15px;}
        .effect_type1 .visual .visual_content {width: 90%;}
        .effect_type1 .visual .visual_content .txt {font-size: 19px;padding: 19px 0;}
        .effect_type1 .visual .visual_content .txt strong, .effect_type1 .visual .visual_content .txt strong.point {font-size: 24px;}
        .effect_type1 .visual .visual_content .txt strong:nth-of-type(1) {margin-top: 20px;}
        .effect_type1 .visual .visual_content .date {padding: 8px 0;}
        .effect_type1 .visual .visual_content .date i {font-size: 11px;}
        .effect_type1 .visual .visual_content .date span {font-size: 18px;}
    }
    @media (max-width: 576px) {
        .effect_type1 .visual .catchphrase {font-size: 13px;}
        .effect_type1 .visual .visual_content .txt {font-size: 15px;padding: 10px 0;}
        .effect_type1 .visual .visual_content .txt strong, .effect_type1 .visual .visual_content .txt strong.point {font-size: 18px;}
        .effect_type1 .visual .visual_content .txt strong:nth-of-type(1) {margin-top: 15px;}
        .effect_type1 .visual .visual_content .date { padding: 6px 0;}
        .effect_type1 .visual .visual_content .date i {font-size: 10px;}
        .effect_type1 .visual .visual_content .date span {font-size: 14px;}
    }
    @media (max-width: 420px) {
        .effect_type1 .visual .visual_content .txt strong, .effect_type1 .visual .visual_content .txt strong.point {font-size: 16px;}
    }


    /*conTop*/
    /* .eventWrap .inner {height: 100%;} */


    /* arrowup */
    .graphWrap {display:table; margin: auto;padding: 25px 0;}

    </style>

    <script>
    // 애니메이션 다시 재생
    function reani(renum) {
        // alert('test');
        if(renum == 2) {
            text.innerHTML = '';
            megatext = 0
        }

        if(renum == 3) {
            clearInterval(tid);	
            $(".test2 .dim").hide()
            $(".test2 .dim_box").hide()
            SetTime = 59
            TimerStart();
        }

        if(renum == 4) {
            clearInterval(tid2);	
            SetTime2 = 49
            TimerStart2();
        }

        if(renum == 6) {
            $("#firstYn").val("Y");
            $('#numup').innerHTML = '';
            counting_view();
        }

        if($('#anilist'+renum).hasClass('on')) {
            $('#anilist'+renum).removeClass('on');
            setTimeout(function(){
                $('#anilist'+renum).addClass('on');
            }, 500);
        }else{
            $('#anilist'+renum).addClass('on');
        }
    }
    </script>

<!-- #include virtual = "/inc/bottom.asp"-->