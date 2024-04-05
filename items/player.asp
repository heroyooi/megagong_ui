<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 9
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">PLAYER</h3>
                <h3 class="page_name_sub">동영상</h3>
                <p class="page_sub_text">메가공무원의 홍보 페이지 등에서 주로 사용되는 기능입니다.<br>
            영상코드 혹은 유튜브 주소를 통하여 영상을 변경할 수 있으며, 이미지 파일을 통해 썸네일을 교체할 수도 있습니다. <br>
            단, 영상코드의 경우 같은 페이지 내에서 동일한 영상코드를 중복해서 사용할 수 없으므로 주의를 요구합니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">유튜브 영상</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="eventVideo video_renewal for_youtube with_shadow">
	<div class="video_box">
		<iframe width="100%" height="100%" src="https://www.youtube.com/embed/rwOeN7Yg-1I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		<!-- <img class="ytb_thumb" src="<%=img_main%>/m/2022/0810_gosabu/video.jpg" alt="" /> -->
		<img class="ytb_thumb" src="<%=img_main%>/m/2022/0110_shin242/con2_tab1_img2.png" alt="" />
	</div>
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>$('.ytb_thumb').on('click', function(){
	$(this).prev('iframe').remove();
	$(this).before('<iframe width="100%" height="100%" src="https://www.youtube.com/embed/rwOeN7Yg-1I?autoplay=1" frameborder="no" scrolling="no" marginwidth="0" marginheight="0" allow="autoplay" allowfullscreen></iframe>');
	$(this).remove();
})</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 기능입니다.<br> 해당 기능을 통해 맛보기 및 OT 영상 등의 정보를 사용자에게 제공해줍니다.<br> 
영상을 교체하기 위해서는 유튜브 주소 링크가 필요하며 영상코드는 사용할 수 없습니다.
<br>또한, 'with_shadow' 클래스를 붙이는 것으로 영상 프레임 아래에 그림자 효과를 줄 수도 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/12270198/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#유튜브</p> </li>
                            <li><p>#그림자효과</p> </li>
                            <li><p>#영상</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">비디오 영상</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="eventVideo video_renewal with_shadow">
	<div class="video_box">
		<%
			evt_no = 3585
			IMG_URL = img_main & "/m/2022/1214_lyj4718/con_img11.png"
			P_WIDTH = "1000"
			P_HEIGHT = "560"
		%>
		<!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
	</div>
</div></div>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 기능입니다.<br> 해당 기능을 통해 맛보기 및 OT 영상 등의 정보를 사용자에게 제공해줍니다.<br> 
영상을 교체하기 위해서는 영상코드가 필요하며 유튜브 주소는 사용할 수 없습니다. <br> 또한, 'with_shadow' 클래스를 붙이는 것으로 영상 프레임 아래에 그림자 효과를 줄 수도 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div class="eventVideo video_renewal with_shadow">
	<div class="video_box">
		&lt;%
			evt_no = 3585
			IMG_URL = img_main & "/m/2022/1214_lyj4718/con_img11.png"
			P_WIDTH = "1000"
			P_HEIGHT = "560"
		%&gt;
		&lt;!-- #include virtual="/Player/kollus/play/play_inc.asp"--&gt;
	</div>
</div></code></pre>

<pre class="language-html html act direct"><code><div class="eventVideo video_renewal with_shadow">
    <div class="video_box">
        &lt;%
            evt_no = 3585
            vod_KBN = "" '40:맛보기, 55:OT 
            playerKBN = ""
            CHR_CD = ""
            LEC_CD = ""
            IMG_URL = img_main & "/m/2022/0831_jinsyjin03/con3_video.jpg"
            P_WIDTH = "1000"
            P_HEIGHT = "560"
        %&gt;
        &lt;!-- #include virtual="/Player/kollus/play/play_inc.asp"--&gt;
    </div>
</div></code></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2023/01110006/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#영상코드</p> </li>
                            <li><p>#그림자효과</p> </li>
                            <li><p>#맛보기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">영상팝업 (이벤트 영상코드)</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><a href="javascript:;" onclick="GongcampusFreePlay(40, 19160, '', '');" >
	<img src="<%=img_main%>/m/2022/0602_jeonhangil/con_img24.png" alt="" />
</a></div>

<!-- CSS -->

<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 기능입니다.<br> 클릭할 경우 팝업 생성과 함께 맛보기 및 OT 영상 등의 정보를 사용자에게 제공해줍니다.<br> 
영상을 교체하기 위해서는 이벤트 영상코드가 필요하며 유튜브 주소는 사용할 수 없습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#이벤트영상코드</p> </li>
                            <li><p>#맛보기</p> </li>
                            <li><p>#팝업</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">영상팝업 (강좌-강의코드)</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><a href="javascript:GongcampusFreePlay(55, 17149, '', 0);" >
	<img src="<%=img_main%>/m/2021/0729_pub_adm/con3_tea1_video.png" alt="전달력X흡입력X강의력으로 한번에 들어도 머릿속에 남는 이론완성" />
</a></div>

<!-- CSS -->

<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 기능입니다.<br> 클릭할 경우 팝업 생성과 함께 맛보기 및 OT 영상 등의 정보를 사용자에게 제공해줍니다.<br> 
영상을 교체하기 위해서는 강의, 강좌 영상코드가 필요하며 유튜브 주소는 사용할 수 없습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#영상코드</p> </li>
                            <li><p>#팝업</p> </li>
                            <li><p>#맛보기</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">비디오:팝업 2단 영상</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod2.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><ul class="eventVideo_list">
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box v_popup" onclick="GongcampusFreePlay(40, 19449, '', '');">
                <img src="<%=img_main%>/m/2022/1214_tjenglish08/con3_img1.jpg" alt="" />
            </div>
        </div>
    </li>
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box v_popup" onclick="GongcampusFreePlay(40, 19450, '', '');">
                <img src="<%=img_main%>/m/2022/1222_allawyer/con_img35.jpg" alt="" />
            </div>
        </div>
    </li>
</ul></div>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 기능입니다.<br>클릭할 경우 팝업 생성과 함께 맛보기 및 OT 영상 등의 정보를 사용자에게 제공해줍니다.<br>공통 CSS를 통해 자동으로 2단 배치되며, 디자인 시안에 따라 개별적인 너비 길이를 변경할 수 있습니다.<br> 또한, 'with_shadow' 클래스를 붙이는 것으로 영상 프레임 아래에 그림자 효과를 줄 수도 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#팝업</p> </li>
                            <li><p>#2단</p> </li>
                            <li><p>#영상코드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">비디오:재생 2단 영상</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod2.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><ul class="eventVideo_list">
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box">
                <%
                    evt_no = 19449
                    vod_KBN = "" '40:맛보기, 55:OT 
                    playerKBN = ""
                    CHR_CD = ""
                    LEC_CD = ""
                    IMG_URL = img_main & "/m/2021/1115_shin242/con2_video_220513.jpg"
                    P_WIDTH = "520"
                    P_HEIGHT = "293"
                %>
                <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
        </div>
    </li>
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box">
                <%
                    evt_no = 19450
                    vod_KBN = "" '40:맛보기, 55:OT 
                    playerKBN = ""
                    CHR_CD = ""
                    LEC_CD = ""
                    IMG_URL = img_main & "/m/2021/0729_charlie97/conimg_12.png"
                    P_WIDTH = "520"
                    P_HEIGHT = "293"
                %>
                <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>
        </div>
    </li>
</ul></div>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 주로 사용되는 기능입니다.<br>클릭할 경우 맛보기 및 OT 영상 등의 정보를 사용자에게 제공해줍니다.<br>공통 CSS를 통해 자동으로 2단 배치되며, 디자인 시안에 따라 개별적인 너비 길이를 변경할 수 있습니다.<br> 또한, 'with_shadow' 클래스를 붙이는 것으로 영상 프레임 아래에 그림자 효과를 줄 수도 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><ul class="eventVideo_list">
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box">
                &lt;%
                    evt_no = 19449
                    vod_KBN = "" '40:맛보기, 55:OT 
                    playerKBN = ""
                    CHR_CD = ""
                    LEC_CD = ""
                    IMG_URL = img_main & "/m/2021/1115_shin242/con2_video_220513.jpg"
                    P_WIDTH = "520"
                    P_HEIGHT = "293"
                %&gt;
                &lt;!-- #include virtual="/Player/kollus/play/play_inc.asp"--&gt;
            </div>
        </div>
    </li>
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box">
                &lt;%
                    evt_no = 19450
                    vod_KBN = "" '40:맛보기, 55:OT 
                    playerKBN = ""
                    CHR_CD = ""
                    LEC_CD = ""
                    IMG_URL = img_main & "/m/2021/0729_charlie97/conimg_12.png"
                    P_WIDTH = "520"
                    P_HEIGHT = "293"
                %&gt;
                &lt;!-- #include virtual="/Player/kollus/play/play_inc.asp"--&gt;
            </div>
        </div>
    </li>
</ul></code></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2023/01050004/index.asp#event4" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#2단</p> </li>
                            <li><p>#영상재생</p> </li>
                            <li><p>#영상코드</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">탭 내부 유튜브 영상</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/vod_tab.png" alt='위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="video_tab">
    <ul id="tabVideo" class="tab_base">
        <li class="on"><a href="#tabYoutube1">국가직 응용역학</a></li>
        <li><a href="#tabYoutube2">국가직 토목설계</a></li>
        <li><a href="#tabYoutube3">지방직 응용역학</a></li>
        <li><a href="#tabYoutube4">지방직 토목설계</a></li>
    </ul>

    <ul class="panel_base">
        <li id="tabYoutube1">
        <div id="player1"></div>
        </li>
        <li id="tabYoutube2">
        <div id="player2"></div>
        </li>
        <li id="tabYoutube3">
        <div id="player3"></div>
        </li>
        <li id="tabYoutube4">
        <div id="player4"></div>
        </li>
    </ul>
</div></div>

<!-- CSS -->
<style>
    .video_tab {margin: 0 auto; font-family: 'NotoSans KR'; text-align: center;}
    .video_tab .tab_base {display: flex; margin: 0 auto 2%; border: 1px solid #d0d0d0;}
    .video_tab .tab_base li {flex: 1; border-right: 1px solid #d0d0d0;}
    .video_tab .tab_base li:last-child {border: none;}
    .video_tab .tab_base li a {display: block; padding: 20px 0; font-size: 16px; color: #999;}
    .video_tab .tab_base li.on a {background: #000; color: #fff;}
    .video_tab .panel_base {position: relative; padding-top: 56%; width: 100%; height: 0;}
    .video_tab .panel_base iframe {position: absolute; top: 0; left: 0; width: 100%; height: 100%;}

    @media screen and (max-width: 768px){
        .video_tab .tab_base li a {font-size: 14px; padding: 8px 0;}
    }
    @media screen and (max-width: 576px){
        .video_tab .tab_base li a {font-size: 12px; padding: 6px 0;}
    }
</style>

<!-- JS -->
<script>var tag = document.createElement('script');
    tag.src = "https://www.youtube.com/iframe_api";
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    var videoIds = ['0cAmub4g0H4', 'xvwNHtRJdYk', 'rnUyqj54eH0', '-xmDMvRREcQ'];
    // var players = [];
    var playerDB = [];
    var playerActive = 0;

    function onYouTubeIframeAPIReady() {
        for (var i = 0; i < videoIds.length; i++) {
            playerDB[i] = new YT.Player('player' + (i + 1), {
                videoId: videoIds[i],
                width: 1000,
                height: 563,
                // events: {
                //   'onReady': onPlayerReady,
                //   'onStateChange': onPlayerStateChange
                // }
            });
        }   
    }

    // function onPlayerReady(event) {
    //   // event.target.playVideo();
    // }

    // var done = false;
    // function onPlayerStateChange(event) {
    //   if (event.data == YT.PlayerState.PLAYING && !done) {
    //     done = true;
    //   }
    // }
    // function stopVideo(index) {
    //   PlayerDB[index].stopVideo();
    // }
    $('.video_tab .tab_base li').on('click', function() {
        playerDB[playerActive].pauseVideo();
        playerActive = $('.video_tab .tab_base li').index(this);
})</script>

<p class="page_text">메가스터디 공무원 홍보 페이지에서 사용되는 기능입니다.<br> 영상이 재생 중인 상태에서 탭 클릭 시 동영상이 자동으로 중단됩니다.<br> 
<a href="https://developers.google.com/youtube/iframe_api_reference?hl=ko" target="_blank" title="iframe 삽입에 대한 YouTube Player API 참조 문서">YouTube IFrame Player API 참조 문서</a> 내의 함수를 사용하여 재생 컨트롤 및 플레이어 설정을 변경할 수 있습니다.
<br>기본적으로는 'videoIds' 배열에 각 탭의 videoId 요소를 추가하여 사용합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2023/06290080/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#유튜브</p> </li>
                            <li><p>#탭안에영상</p> </li>
                            <li><p>#영상자동정지</p> </li>
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
    html {overflow-x:hidden;}
    .ball.fir.ver3 , .ball.fir.ver4, .ball.fir.ver5, .ball.fir.ver6, .ball.fir.ver1 , .ball.fir.ver2 {animation:inherit;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .payWrap .pay_sort { margin-bottom: 0px; }
    .pay_sort p {font-weight: 900; font-size: 15px;margin-bottom: 21px;}
    .board3 .code-box a , .board4 .code-box a {text-align: center;display: block;}
    .eventVideo_list > li {width: 430px !important; float: inherit;}
    .eventVideo_list {display: flex; justify-content: space-around;}

    @media screen and (max-width: 576px) {
        .eventVideo_list {display: block;}
        .eventVideo_list > li {width: 100% !important;}
    }

    
    </style>
    <link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/event_common.css?now=<%=val4css%>" />
    <script type="text/javascript" src="<%=url_main%>/common/js/eventCommon.js?now=<%=val4css%>"></script>
    


<!-- #include virtual = "/inc/bottom.asp"-->