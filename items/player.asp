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
                <h3 class="page_name_sub">������</h3>
                <p class="page_sub_text">�ް��������� ȫ�� ������ ��� �ַ� ���Ǵ� ����Դϴ�.<br>
            �����ڵ� Ȥ�� ��Ʃ�� �ּҸ� ���Ͽ� ������ ������ �� ������, �̹��� ������ ���� ������� ��ü�� ���� �ֽ��ϴ�. <br>
            ��, �����ڵ��� ��� ���� ������ ������ ������ �����ڵ带 �ߺ��ؼ� ����� �� �����Ƿ� ���Ǹ� �䱸�մϴ�.</p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>
            </div>

            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">��Ʃ�� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod.png" alt='��ġ' ></div>
                

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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� ����Դϴ�.<br> �ش� ����� ���� ������ �� OT ���� ���� ������ ����ڿ��� �������ݴϴ�.<br> 
������ ��ü�ϱ� ���ؼ��� ��Ʃ�� �ּ� ��ũ�� �ʿ��ϸ� �����ڵ�� ����� �� �����ϴ�.
<br>����, 'with_shadow' Ŭ������ ���̴� ������ ���� ������ �Ʒ��� �׸��� ȿ���� �� ���� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2022/12270198/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��Ʃ��</p> </li>
                            <li><p>#�׸���ȿ��</p> </li>
                            <li><p>#����</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">���� ����</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod.png" alt='��ġ' ></div>
                

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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� ����Դϴ�.<br> �ش� ����� ���� ������ �� OT ���� ���� ������ ����ڿ��� �������ݴϴ�.<br> 
������ ��ü�ϱ� ���ؼ��� �����ڵ尡 �ʿ��ϸ� ��Ʃ�� �ּҴ� ����� �� �����ϴ�. <br> ����, 'with_shadow' Ŭ������ ���̴� ������ ���� ������ �Ʒ��� �׸��� ȿ���� �� ���� �ֽ��ϴ�.</p>

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
            vod_KBN = "" '40:������, 55:OT 
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
                            <li><p>#�����ڵ�</p> </li>
                            <li><p>#�׸���ȿ��</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">�����˾� (�̺�Ʈ �����ڵ�)</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod.png" alt='��ġ' ></div>
                

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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� ����Դϴ�.<br> Ŭ���� ��� �˾� ������ �Բ� ������ �� OT ���� ���� ������ ����ڿ��� �������ݴϴ�.<br> 
������ ��ü�ϱ� ���ؼ��� �̺�Ʈ �����ڵ尡 �ʿ��ϸ� ��Ʃ�� �ּҴ� ����� �� �����ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�̺�Ʈ�����ڵ�</p> </li>
                            <li><p>#������</p> </li>
                            <li><p>#�˾�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">�����˾� (����-�����ڵ�)</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><a href="javascript:GongcampusFreePlay(55, 17149, '', 0);" >
	<img src="<%=img_main%>/m/2021/0729_pub_adm/con3_tea1_video.png" alt="���޷�X���Է�X���Ƿ����� �ѹ��� �� �Ӹ��ӿ� ���� �̷пϼ�" />
</a></div>

<!-- CSS -->

<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� ����Դϴ�.<br> Ŭ���� ��� �˾� ������ �Բ� ������ �� OT ���� ���� ������ ����ڿ��� �������ݴϴ�.<br> 
������ ��ü�ϱ� ���ؼ��� ����, ���� �����ڵ尡 �ʿ��ϸ� ��Ʃ�� �ּҴ� ����� �� �����ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�����ڵ�</p> </li>
                            <li><p>#�˾�</p> </li>
                            <li><p>#������</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">����:�˾� 2�� ����</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod2.png" alt='��ġ' ></div>
                

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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� ����Դϴ�.<br>Ŭ���� ��� �˾� ������ �Բ� ������ �� OT ���� ���� ������ ����ڿ��� �������ݴϴ�.<br>���� CSS�� ���� �ڵ����� 2�� ��ġ�Ǹ�, ������ �þȿ� ���� �������� �ʺ� ���̸� ������ �� �ֽ��ϴ�.<br> ����, 'with_shadow' Ŭ������ ���̴� ������ ���� ������ �Ʒ��� �׸��� ȿ���� �� ���� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#�˾�</p> </li>
                            <li><p>#2��</p> </li>
                            <li><p>#�����ڵ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">����:��� 2�� ����</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod2.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><ul class="eventVideo_list">
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box">
                <%
                    evt_no = 19449
                    vod_KBN = "" '40:������, 55:OT 
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
                    vod_KBN = "" '40:������, 55:OT 
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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� �ַ� ���Ǵ� ����Դϴ�.<br>Ŭ���� ��� ������ �� OT ���� ���� ������ ����ڿ��� �������ݴϴ�.<br>���� CSS�� ���� �ڵ����� 2�� ��ġ�Ǹ�, ������ �þȿ� ���� �������� �ʺ� ���̸� ������ �� �ֽ��ϴ�.<br> ����, 'with_shadow' Ŭ������ ���̴� ������ ���� ������ �Ʒ��� �׸��� ȿ���� �� ���� �ֽ��ϴ�.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><ul class="eventVideo_list">
    <li>
        <div class="eventVideo video_renewal with_shadow">
            <div class="video_box">
                &lt;%
                    evt_no = 19449
                    vod_KBN = "" '40:������, 55:OT 
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
                    vod_KBN = "" '40:������, 55:OT 
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
                            <li><p>#2��</p> </li>
                            <li><p>#�������</p> </li>
                            <li><p>#�����ڵ�</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">�� ���� ��Ʃ�� ����</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->
                <div class="position_site"><img src="/images/vod_tab.png" alt='��ġ' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="video_tab">
    <ul id="tabVideo" class="tab_base">
        <li class="on"><a href="#tabYoutube1">������ ���뿪��</a></li>
        <li><a href="#tabYoutube2">������ ��񼳰�</a></li>
        <li><a href="#tabYoutube3">������ ���뿪��</a></li>
        <li><a href="#tabYoutube4">������ ��񼳰�</a></li>
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

<p class="page_text">�ް����͵� ������ ȫ�� ���������� ���Ǵ� ����Դϴ�.<br> ������ ��� ���� ���¿��� �� Ŭ�� �� �������� �ڵ����� �ߴܵ˴ϴ�.<br> 
<a href="https://developers.google.com/youtube/iframe_api_reference?hl=ko" target="_blank" title="iframe ���Կ� ���� YouTube Player API ���� ����">YouTube IFrame Player API ���� ����</a> ���� �Լ��� ����Ͽ� ��� ��Ʈ�� �� �÷��̾� ������ ������ �� �ֽ��ϴ�.
<br>�⺻�����δ� 'videoIds' �迭�� �� ���� videoId ��Ҹ� �߰��Ͽ� ����մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/event/2023/06290080/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#��Ʃ��</p> </li>
                            <li><p>#�Ǿȿ�����</p> </li>
                            <li><p>#�����ڵ�����</p> </li>
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