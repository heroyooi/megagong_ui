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
                <h3 class="page_name_sub">Ư�� ȿ��</h3>
                <p class="page_sub_text">�ް������� ����Ʈ�� ���� ȫ�� ���������� ���� Ư�� ȿ�� ����Դϴ�.<br>
                �ַ� CSS �ִϸ��̼� Ȥ�� JS ��ũ��Ʈ�� ���۵Ǹ� ����ڰ� �������� �ŷ��� ������ ������ �ִ� �ð��� ������ ������ �մϴ�.<br>
                ��, ���������� ������ �� �ִ� CSS �ִϸ��̼� Ȥ�� ������ �ε忡 �δ��� �� �� �ִ� ������ Ư�� ȿ���� ��쿡�� ��뿡 ���Ǹ� ���մϴ�.
                </p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">�ް��н� - ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div id="mContainer" class="event">
    <div id="eventWrap" class="eventWrap effect_type1">
        <div id="visual" class="visual">
            <div class="inner">
                <h3>
                    <span><img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_0.png" alt="MEGA PASS ���� �̺�Ʈ" data-aos="fade" data-aos-delay="100" class="aos-init aos-animate"></span>
                    <p>
                        <img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_1.png" alt="�ް�" data-aos="fade-right" data-aos-delay="300" class="aos-init aos-animate">
                        <img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_2.png" alt="���Ṯ����" data-aos="fade-right" data-aos-delay="500" class="aos-init aos-animate">
                    </p>
                    <span><img src="<%=img_main%>/m/2023/0306_pass/total/main_tit_3.png" alt="we MAKE IT" data-aos="fade" data-aos-delay="800" class="aos-init aos-animate"></span>
                </h3>
                
                <p class="catchphrase aos-init aos-animate" data-aos="fade" data-aos-delay="800">: WE MAKE IT�� �������� �հ��� ���� �غ��� �̹� ���� ĳġ���������Դϴ�.</p>
                <div class="visual_content aos-init" data-aos="zoom-in-down" data-aos-delay="1000">
                    <p class="txt">
                        <span>
                            �ٽ� ã�� ���� ��, �������� ���� �����?<br><br>�� �� ���� �۷�<br><strong>���� ��￡ ���� ��</strong>�̳�<br><strong>WE MAKE IT(�հ�)</strong>�� ���� �̾߱����ּ���.
                        </span><br><br>
                        <strong class="point">
                            �̺�Ʈ�� �����ϴ� ��� �������<br>�ް��н� MAKE IT 15% ������ �����˴ϴ�!
                        </strong>
                    </p>
                    <div class="date">
                        <i>�� �� ��</i> 
                        <span>2023.03.07(ȭ) ~ 2023.03.13(��)</span>
                        <i>�� �� ��</i> 
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
            fallSpeed: 1, //�ӵ�
            maxSize: 25, //���� maxũ��
            minSize: 9,
            newOn: 300, //���ٷ� �������� ������
            swayAnimations: ['sway-0', 'sway-1', 'sway-2', 'sway-3', 'sway-4', 'sway-5', 'sway-6', 'sway-7', 'sway-8']
        };

        var options = $.extend({}, defaults, options);

        // Declarations.
        var documentHeight = $(document).height();
        var documentWidth = $(document).width();
        var sakura = $('<div class="' + options.className + '" />');

        // Set the overflow-x CSS property on the body to prevent horizontal scrollbars.
        // #eventWrap ��� ���������� ���� 
        //=> �ϴ� contents�� z-index:2, position relative (Ư���������� ������ �ӵ��� ������, ���������� ������)
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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
�ش� ����� ����Ͽ� ��ö ������ �ֳ����� ������ ��Ÿ�� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/pass/total_2024.asp?now=2023-03-07%2009:00#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��</p> </li>
                            <li><p>#����</p> </li>
                            <li><p>#�ް��н�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




                        <div class="page_text_wrap">
                <p class="page_head">�׷��� ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="graphWrap">
    <p class="txt"><img src="https://img.megagong.net/m/2023/0126_final/con2_img3.png" alt="�հ��� Ȯ�� UP"></p>
    <p class="arrow arrow_ani on" id="anilist1"><img src="https://img.megagong.net/m/2023/0126_final/con2_img4.png" alt="-"></p>
</div>
<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(1);">�ٽ� ����ϱ�</a>
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


<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
�ش� ����� ����Ͽ� �׷����� ����ϴ� ������ ��Ÿ�� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/01260014/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�׷���</p> </li>
                            <li><p>#���</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">Ÿ���� ȿ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><h3 class="typing_h3">
    <p class="txt">2023-2024 ��� <strong>9�� �հ����� ����ȸ</strong></p>
    <div class="typing">
        <p>You��re right.</p>
        <p class="cont">
            <strong>
                <span class="hide" id="anilist2">.</span>
            </strong>
            <span class="blink"></span>
        </p>
    </div>
    �������� �Ǿҽ��ϴ�.
</h3>

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(2);">�ٽ� ����ϱ�</a>
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
<script>// Ÿ���� ȿ��
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


<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
�ش� ����� ����Ͽ� �ؽ�Ʈ�� �ǽð����� Ÿ���εǴ� ������ ��Ÿ�� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2022/11240174/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#Ÿ����</p> </li>
                            <li><p>#�ؽ�Ʈ</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




                        <div class="page_text_wrap">
                <p class="page_head">Ÿ�̸�-����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
<div class="conTop" id="anilist3">
    
    <section class="test1">
        <div class="inner">
            <p><img src="<%=img_main%>/m/2021/0929_enp301/test1_tit.png" alt=""></p>
            <div class="blinktest">
                <img src="<%=img_main%>/m/2021/0929_enp301/blink_1.png" alt="Ŭ���ϰ� ���� Ǯ���" class="img1 blink_img">
                <img src="<%=img_main%>/m/2021/0929_enp301/blink_2.png" alt="Ŭ���ϰ� ���� Ǯ���" class="img2 blink_img">
            </div>
        </div>
    </section>
    <section class="test2">
        <div class="dim">-</div>
        <p id="test2_top"><img src="<%=img_main%>/m/2021/0929_enp301/test2_txt.png" alt=""></p>
        <div class="inner">
            <i><span id="countdown">60��</span></i>
            <strong class="test">
                <img src="<%=img_main%>/m/2021/0929_enp301/test2_img.png" alt="">
            </strong>
            <ul class="test_mo clearfix">
                <li><img src="<%=img_main%>/m/2021/0929_enp301/test1.png" alt=""></li>
                <li><img src="<%=img_main%>/m/2021/0929_enp301/test2.png" alt=""></li>
            </ul>
            <div class="dim_box">
                <span><img src="<%=img_main%>/m/2021/0929_enp301/test3_txt1.png" alt="�ι����� ������ 3,4�� �Դϴ�. �ð��ȿ� ������ ��� Ǯ���ϼ̳���? �ι��� ��� ������ ���߼̳���?"></span>
                <strong><img src="<%=img_main%>/m/2021/0929_enp301/test3_txt2.png" alt="Ʋ���� �����ƿ� ������ ���ú��� ���ȣ�� ���� �����ϸ� �Ǵϱ��."></strong>
            </div>
        </div>
    </section>
</div>
</div>
<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(3);">�ٽ� ����ϱ�</a>
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
var SetTime = 59; //�Ҵ� �ð�
function msg_time() {
    m = (SetTime % 60) + "��";
    var msg = m ;
    document.all.countdown.innerHTML = msg;
    SetTime--;
    if (SetTime < 0) {
        clearInterval(tid);	
        $(".test2 .dim").show()
        $(".test2 .dim_box").show()
        //TestOpen = function(){}; //�Լ��ʱ�ȭ
    }
}
function TimerStart(){ tid=setInterval('msg_time()',1000)};

function TestOpen(){
    $('.conTop .test2').addClass('on');
    // var offset = $("#test2_top").offset();
    // $("html, body").animate({scrollTop: offset.top},400); 
}
//click �Ǵ� scroll�� �Լ�����
// click ��
$(".blinktest .blink_img").click(function(){
    clearInterval(blinkTxt);
    TestOpen();
    TimerStart();
    $(".conTop").addClass("on"); 
    return false;
})

// scroll �� 
$(window).scroll(function () {
    var z = $(".conTop").offset().top + 80;
    var wTop = $(window).scrollTop();
    if (wTop > z) {
        //click�� on�� �����Ƿ� scroll�� timer�Լ��� �ߺ��Ǵ°� ����
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


<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
Ư���ϰ� ������ �ð��� �ڵ����� ī��Ʈ�ٿ� �Ǹ�, ī��Ʈ�� ���� �Ǿ��� ���� Ư�� �̹��� �� ������ ������ �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2021/09290126/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#ī��Ʈ�ٿ�</p> </li>
                            <li><p>#�ð����</p> </li>
                            <li><p>#���ڰ���</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">Ÿ�̸�-�ð����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html">
<div class="eventWrap">
<div class="con01">
    <div class="inner2">
        <h3 class="con_tit"><img src="<%=img_main%>/m/2021/0811_korean/con1_tit.png" alt="����ð� �� 100�� ����, Ǯ�� ���� �ϴ� ���� 100���� ���� ������� ���� ������ ����� ����, ���� ����/���� ������ ����� ���� ������ ������ �ƴմϴ�"></h3>
        <div class="con_box">
            <p class="stit">�������� �Ʒ� ������ �а�, ������ Ǫ�� �� �󸶳� �ɸ��ó���?</p>
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
                            <!-- ��ư Ŭ�� �� -->
                            <a href="javascript:;" onclick="fnc_start();" class="btn1">START</a>
                            <!-- ��ư Ŭ�� �� -->
                            <a href="javascript:;" class="btn2" id = "stop" onclick="fnc_stop();" style="display:none;">STOP</a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="answer">
                <p>���� ���, �ð��� �带���� ǰ���� �����Ǵ� ���� <br />�Ϻ� ��� �������ָ� ���� ��� �ڸ�ũ ������ ���� ������ ��쿡 ������ �̾߱��Դϴ�.</p>
                <p class="my">�� �� ���� Ǫ�� �ð� <strong><span id="my_time">5�� 24��</span> �ɷȽ��ϴ�.</strong></p>
            </div>
            <p class="btxt">������ ����, ���� ��Ȯ���� �ӵ� �� ������ ��� �ʿ��մϴ�. <br />������ ��Ȯ�� ���� <br /><strong>�ް��������� ġ���ϰ� �ܴ��ϰ� �غ��߽��ϴ�.</strong></p>
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

    $("#my_time").html(mm+"��"+ss+"��");

    $(".answer").css('display','block');
    clearInterval(timerset);
    $("#stop").hide();
    time = 0;
    document.getElementById("time").innerHTML =  "00:00";
}
</script>

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
START ��ư�� Ŭ���� ���, �ش� ������ �������� STOP ��ư�� ���� �������� ��� �ð��� ��ϵǸ�<br>
�̸� ���Ͽ� ����Ǯ�̿� �Ҹ�� �ð��� ���������� Ȯ���� �� �ֽ��ϴ�. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2021/08110103/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�����ġ</p> </li>
                            <li><p>#�ð����</p> </li>
                            <li><p>#���۹�ư</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">Ÿ�̸�-����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html">
<div class="eventWrap">
<div id="evCon2" class="evSection evCon2">
	<div class="inner" id="anilist4">
		<h4 class="con_tit" id="con_tit"><img src="<%=img_main %>/m/2023/0127_ssunt/con_img6.png" alt="�濵�� �����ʱ� ������ �غ��ϰ� �ִ� ������. �� ����, 50�� �ȿ� ���� ã���̳���?"></h4>

		<div class="con_box">

			<% if 1=2 then %>
			'�ڡڡڡ� ����Ǯ�̿��� ����  :  https://dev.megagong.net/s/gong/event/2021/09290126/index.asp 
			<% end if %>
			
			<div class="question_wrap">
				<div class="question"><img src="<%=img_main %>/m/2023/0127_ssunt/con_img11.jpg" alt="�����̹���"></div>
				<div class="state">
				
					<div class="progress blue">
						<strong class="txt">���� �ð�</strong>

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
						<a href="javascript:;" class="view">���� Ȯ��</a>

						<span class="dimBg2" style="display: none;">-</span>
						<div id="p_info1" class="answer_pop"  style="display: none;">
							<a href="javascript:;" class="close">
								<img src="https://img.megagong.net/m/2022/1221_pass/btn_x.png" alt="�ݱ�" align="absmiddle">
							</a>
							
							<div class="noti">
								<div class="point">�� ���� <span>��</span></div>
								B. �뷮��ȭ ������ ��ǥ��ȭ�� ��ǰ���� ���� <br>
								�����並 Ȯ���ϴ� �������� <br>
								���޳�Ʈ��ũ�� �����ϴ� ���̴�. <br><br>

								C. ��ġ�е��� ������ġ�� ���۹�ĺ��ٴ� <br>
								��ǰ�� �ŷڼ�, ǰ�� ��� �����ִ� ��ҷμ�, <br>
								������ġ�� ���۹���� �����ϴ� ������ ������ �ƴϴ�. 
							</div>
							
						</div>
					</div>
				</div>
				<p class="tiny_noti">* Ȳ��ȣ�� ��ǰ��1004�� ����Ǯ�� ���� ����</p>
			</div>

			<p class="point"><img src="<%=img_main %>/m/2023/0127_ssunt/con_img12.png" alt="������ �ᱹ ������ Ǯ�� ������ ã�� �ο�! �հ��� ���ؼ� �Ӹ����� �̷��� Ȱ���Ͽ� ������ ��Ȯ�ϰ�, ������ Ǯ �� �˾ƾ� �մϴ�."></p>
		</div>
	</div>
</div>
</div>

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(4);">�ٽ� ����ϱ�</a>
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
var SetTime2 = 49; //�Ҵ� �ð�
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
        //TestOpen = function(){}; //�Լ��ʱ�ȭ
    }
}
function TimerStart2(){ 
    tid2=setInterval('msg_time2()',1000)
};

function TestOpen2(){
    $('#evCon2').addClass('on');
}

//scroll�� �Լ�����
$(window).scroll(function () {
    //var ev2top = $("#con_tit").offset().top - 50;
    var ev2top = $("#con_tit").offset().top - 50;
    var wTop = $(window).scrollTop();
    if (wTop > ev2top) {
        //alert(wTop);
        //click�� on�� �����Ƿ� scroll�� timer�Լ��� �ߺ��Ǵ°� ����
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


/*** ����Ǯ�� ī��Ʈ E ***/

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


<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
������ �ð��� ī��Ʈ�ٿ� �Ǵ� �Ͱ� ���ÿ� ������ ���� �� ���� �پ��� �ð��� ����� ����ڿ��� �����մϴ�. <br>
�̸� ���Ͽ� ����Ǯ�̿� �Ҹ�� �ð��� ���������� Ȯ���� �� �ֽ��ϴ�. </p>


<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megajob.co.kr/s/job/event/2023/01270005/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#ī��Ʈ�ٿ�</p> </li>
                            <li><p>#�ð����</p> </li>
                            <li><p>#�ִϸ��̼�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">��ǳ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evCon1 bubble" id="anilist5">
    <div class="inner">
        <div class="con_box">
            <div class="bubble_box">
                <img class="bg" src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_bg.png">
            
                <div class="bubble bubble_1">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_1.png" alt="��� �κ��� ������ �ľ��ϰ� �;��!">
                </div>
                <div class="bubble bubble_2">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_2.png" alt="������ ������ �����ϰ� �;��!">
                </div>
                <div class="bubble bubble_3">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_3.png" alt="��ü�� ������ ������� �� �� �������?">
                </div>
                <div class="bubble bubble_4">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_4.png" alt="�ٲ� ���ɰ� �ֽ��Ƿʵ� �����ؿ�.">
                </div>
                <div class="bubble bubble_5">
                    <img src="<%=img_main %>/m/2023/0116_wjsgywls1/bubble_5.png" alt="����Ǯ�̷� ���� ������ ������ �;��.">
                </div>
            </div>
        </div>
    </div>
</div>

<div class="pop_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(5);">�ٽ� ����ϱ�</a>
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
var top_bubble = $(".bubble_box"); //��ܸ޴�
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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
Ư�� �̹������� ũ�Ⱑ ���������� Scale(0.1, 0.1)���� Scale(1, 1)���� ��ȭ�ϸ鼭 ��ǳ���� ��Ÿ���� ������ �� �� �ֽ��ϴ�.  </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/01160003/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���̵���</p> </li>
                            <li><p>#��Ÿ����</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">������� ������</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><ul class="curr">
    <li><span>1ȸ��</span><strong>TM(Teacher��s Map)</strong> : Ű���� �߽����� ����� ��� ��� &middot; ����</li>
    <li><span>2ȸ��</span><strong>�̷м���</strong>(���� + PPT)</li>
    <li><span>3ȸ��</span><strong>����/Ȯ�ι���/�����Ʒù���</strong> : ��� �̷� �ٷ� ����</li>
    <li><span>4ȸ��</span><strong>����Talk</strong> : ���ǿ����� ���� ������ ���� ��� ���� �ٽ� ����</li>
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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
3�� �������� ���������� �Ʒ�(�������)�� ����, �ڽ��� Border�� �����̴� �Ͱ� ���� ����ȿ���� ���ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megajob.co.kr/s/job/event/2022/04130012/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�������</p> </li>
                            <li><p>#����ȿ��</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap anipos">
                <p class="page_head">���� ��� ȿ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="numwrap" id="anilist6">
    <span id="numup" data-to="8098">
    </span>
    <span id="percent">
        %<sup>*</sup>
    </span>
    
    <div class="pop_btn_wrap">
        <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(6);">�ٽ� ����ϱ�</a>
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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� CSS �ִϸ��̼� ȿ�� ����Դϴ�.<br>
0�������� ������ Ư�� ���ڱ��� ��ġ�� �����ϴ� ������ �� �� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/03160033/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#���ڻ��</p> </li>
                            <li><p>#ī��Ʈ</p> </li>
                            <li><p>#��ġ����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">���� ����&amp;����� ��ȯ - ���� �±� ���</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

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
          * 2022/04/12 YES24 ������ ��ü ����Ʈ���� 1�� ��� ���� <br>
          ** 2012/4~2023/4�� ������/������ġ�� �ſ��� ���� ���μ�(�Ǹſ�+������+���ǰ �������)
        </span>
        <div class="label">
            <div><img src="<%=img_main%>/m/2023/0609_shin242/con1_img01.png" alt="YES24 ������ ��ü ����Ʈ���� 1��"></div>
            <div><img src="<%=img_main%>/m/2023/0609_shin242/con1_img02.png" alt="���� �Ǹŷ� 100���� �̻�"></div>
        </div>
        <h3>
            <div class="sub_tit"><img src="<%=img_main%>/m/2023/0609_shin242/con1_subtit.png" alt="��ȸ ���� 1���� ����  ��.��.��. ����"></div>
            <div class="highlight">
            <span class="tit1"><img src="<%=img_main%>/m/2023/0609_shin242/con1_tit_blue.png" alt="2024�� �ſ��� ������"></span>
            <span class="tit2">
                <em class="light"><img src="<%=img_main%>/m/2023/0609_shin242/con1_light.png" alt="-"></em>
                <img src="<%=img_main%>/m/2023/0609_shin242/con1_tit_transparent.png" alt="2024�� �ſ��� ������">
            </span>
            </div>
            <a href="/teacher/home.asp?bcode=shin242" target="_blank" title="�ſ��� ������ Ȩ" class="tea_home">H</a>
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
myVideo.playbackRate = 4; // 4��� ���� - ���� �׽�Ʈ�� ���ؼ� �����ϴµ��� Ȱ��ȭ��Ű�� �Ϸ�Ǹ� �ٽ� �ּ��� �޸� �˴ϴ�.

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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� ���� ȿ���Դϴ�.<br>
������ ������ ������ ���� ������� �����մϴ�.<br>
����� ��⿡���� ���ҰŸ� �����ϸ� �ڵ������ �Ǳ� ������, <br>
<em>����� iOS Ư�� ���������� �ʱ� �ε� �� ���� �±��� ��ɵ��� ����� �����Ű�� ���ϴ� ����</em>�� �ֽ��ϴ�.<br>
�׷��Ƿ� ��⺰ ũ�ν� ����¡�� ����Ͽ� PC �̿��� ��⿡���� ���� ���� �ٷ� ���� ������� ����˴ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/06090018/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��������</p></li>
                            <li><p>#�����±�</p></li>
                            <li><p>#�ؽ�Ʈȿ��</p></li>
                            <li><p>#iOS����</p></li>
                        </ul>
                    </div>
                </div>
                <!-- ����ũ: https://kangdanne.tistory.com/219 -->
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">���� ���� �����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evMVEffect">
    <div class="inner">
        <video autoplay loop muted playsinline class="video-bg">
            <source src="<%=img_main%>/m/video/summer_planner.mp4" type="video/mp4">
        </video>
        <div class="bg"><img src="<%=img_main %>/m/2023/0613_planner/con1_bg.png" alt="-" /></div>
        <h3 data-aos="zoom-in" data-aos-delay="200"><img src="<%=img_main %>/m/2023/0613_planner/con1_tit.png" alt="2024 �Ųٷ� �÷���" /></h3>
        <a href="javascript:;" class="btn">��û �ٷΰ���</a>
    </div>
</div>

<div class="pop_btn_wrap evMVEffect_btn_wrap">
    <a href="javascript:void(0);" class="re_ani_btn">��üȭ������ ����</a>
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
        $(this).text('������� ����');
    } else {
        $(this).removeClass('on');
        $('.evMVEffect').removeClass('full');
        $(this).text('��üȭ������ ����');
    }
});

</script>

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� ���� �����Դϴ�.<br>
����� ��⿡���� ���ҰŸ� �����ϸ� �ڵ������ �Ǳ� ������, <br>
<em>����� iOS������ ���� ��忡�� �÷��̰� �ȵǴ� ����</em>�� �ֽ��ϴ�.<br>
�������� ��� ����� �ƴϹǷ� ���Ұ� �ڵ�������� ���� ����ó���� �մϴ�.<br><br>

<a href="https://design.megagong.net/image/m/video/ios_issue.mp4" target="_blank"><em>- iOS ������忡�� ���� �±� �÷��� �ȵǴ� ���� ����</em></a></p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/event/2023/06130019/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�Ųٷ��÷���</p></li>
                            <li><p>#���ο���</p></li>
                            <li><p>#��������</p></li>
                        </ul>
                    </div>
                </div>

            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">���� ȿ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evPatternEffect" id="anilist7">
    <div class="intro">
        <div class="inner">
            <h3><img src="<%=img_main %>/m/2023/0614_live/visual_tit.png" alt="������, �հ����� �ް���, �������" /></h3>
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
    <a href="javascript:void(0);" class="re_ani_btn" onClick="reani(7);">�ٽ� ����ϱ�</a>
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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� ���� ȿ���Դϴ�.<br>
�հ������� M�ڷ� ����� ���������ν� �հ��� �� �ִٴ� �������� M�귣�忡 ���� �������� �ν��� �ɾ��ݴϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/06140073/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�հ�����</p></li>
                            <li><p>#�������</p></li>
                        </ul>
                    </div>
                </div>

            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">�з����� ��ũ�� ȿ��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='��ư��ġ' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="evSection evParallaxEffect">
    <div class="evCon5_contents_wrap">
        <div class="inner">
            <h4 class="blindw">�ް������� Ư¡�ȳ�</h5>
            <div class="contents_box_wrap">

                <h4 class="con_tit">
                    ���� ��������� �ֿ켱�ϴ� <br>�ް����� ���ο� �õ� ���� ������ �ʰڽ��ϴ�.
                    <span class="tiny">�����ϴ� �������� �ӿ����� <br>�ް��������� �ް���� �츮�� ���� ���ڽ��ϴ�. <br>������� ���� å�Ӱ� ����, �� �ϳ��� ���� �� ����ϰڽ��ϴ�.</span>
                </h4>

                <div class="bg_box_wrap">
                    <div class="bg_box">
                        <div class="in_wrp">
                            <p class="in_txt">Ŭ�� ������/������/Q&A</p>
                            <p class="in_con">�ҹ����� ȫ�� Ȱ��, �ٸ糽 ������, ���ǹ��� Q&A <br><br class="double">�������� ���ÿ� ���ذ� �Ǵ� �� ������ <br class="double">�ް������� ������ �ʽ��ϴ�.</p>	
                        </div>
                    </div>
                    <div class="bg_box">
                        <div class="in_wrp">
                            <p class="in_txt">������ �ް��н� �</p>
                            <p class="in_con">���� ���� ���� ȯ���� ���� Ȯ���� ȯ�ޱ��� <br><br class="double">�ް����� ������ ��ǰ ����� <br class="double">�������� �н����� ������ �� �ֵ��� �մϴ�.</p>	
                        </div>
                    </div>
                    <div class="bg_box">
                        <div class="in_wrp">
                            <p class="in_txt">���� ���� E-book ����</p>
                            <p class="in_con">�ް�������/�ҹ�/�������� ���輭�� <br class="double">����å���� ������ e-����� �ʱ������ <br><br class="double">�������� ������ ȿ������ �н��� �����մϴ�.</p>	
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

gsap.set('.bg_box:nth-child(1)', { opacity: 1 }); // �ٷ� ����� �������ϴ� ���
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
    .to('.bg_box:nth-child(2)', 1, { // 0�̸� �ٷ� �ٲ�, 1�̸� ��ũ�� ��ġ�� ���� �ٲ�
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

<p class="page_text">�ް������� �̺�Ʈ ���������� ���Ǵ� �з����� ��ũ�� ȿ���Դϴ�.<br>
��ũ���� �ص� ���Ϸ� �������� �ʰ� Ư�� �κе��� ������Ŵ���ν� ������ �����ϰ��� �ϴ� �޼����� �ΰ���Ű�� ȿ���� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>
<pre class="language-css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/s/gong/event/2023/06130076/index.asp#eventWrap" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�з�������ũ��</p></li>
                            <li><p>#����������</p></li>
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
    // �ִϸ��̼� �ٽ� ���
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