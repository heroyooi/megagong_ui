<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 7
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">ICON</h3>
                <h3 class="page_name_sub">아이콘</h3>
                <p class="page_sub_text">메가공무원의 다양한 페이지에서 사용되는 아이콘 이미지 코드입니다.<br> 
                간단하고 명확한 이미지를 통해 사용자가 혼란 없이 필요한 정보에 쉽게 접근할 수 있도록 합니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

            
            <div class="page_text_wrap">
                <p class="page_head">테이블 내부 라벨 - 이미지</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/icon1.png" alt='해당위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="icon_set">
    <img src="<%=img_main%>/icon/ic_normal.gif" alt="일반" />
    <img src="<%=img_main%>/icon/ic_all.gif" alt="전체" />
    <img src="<%=img_main%>/s/common/ic_notice_s.gif" alt="인강" />
    <img src="<%=img_main%>/icon/ic_rate.gif" alt="응시율" />
    <img src="<%=img_main%>/icon/ic_notice.gif" alt="공지" />
    <img src="<%=img_main%>/icon/ic_police.png" alt="경찰" />
    <img src="<%=img_main%>/icon/ic_common.png" alt="공통" />
    <img src="<%=img_main%>/icon/ic_plan.gif" alt="선발계획" />
    <img src="<%=img_main%>/s/common/ic_notice_chr.gif" alt="강좌" />
    <img src="<%=img_main%>/icon/ic_interview.gif" alt="면접" />
    <img src="<%=img_main%>/s/common/ic_notice_c.gif" alt="학원" />
    <img src="<%=img_main%>/icon/ic_competition.gif" alt="경쟁률" />
    <img src="<%=img_main%>/s/common/ic_notice_bok.gif" alt="교재" />
    <img src="<%=img_main%>/s/common/main_event_icon.gif" alt="이벤트" />
    <img src="<%=img_main%>/icon/ic_gong.png" alt="공무원" />
    <img src="<%=img_main%>/icon/ic_pass.gif" alt="합격" />
    <img src="<%=img_main%>/s/common/main_important_icon.gif" alt="필독" />
    <img src="<%=img_main%>/common/ic_new.gif" alt="New" />
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">표 내부에서 주로 사용되는 아이콘 이미지입니다.<br> 형태 및 규격은 모두 동일하나 상황 및 상태에 맞게 다른 색을 사용하여 구분하고 있습니다.<br>
또한 New 아이콘은 신규 게시글 및 신규 항목 등의 상황에만 사용되며 지정된 정책에 따라 일정 기간 이후에는 OFF처리 됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/help/notice/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#텍스트아이콘</p> </li>
                            <li><p>#글자</p> </li>
                            <li><p>#구분</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">테이블 내부 라벨 - CSS</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/icon2.png" alt='해당위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="lectlist">
    <div class="lect_item">
        <div class="listTitle">
            <p class="icon">
                <span class="icon1">N</span>
                <span class="icon8">UPDATE</span> 
                <span class="icon7">9/7급</span>
            </p>

            <p class="icon">
                <span class="icon1">N</span> <span class="icon2">완강</span> 
                <span class="icon7">7급대비</span>
            </p>

            <p class="icon">
                <span class="icon1">N</span> <span class="icon6">예정</span> 
                <span class="icon7">9급대비</span>
            </p>
        </div>
    </div>
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">강좌 리스트 표 내부에서 주로 사용되는 아이콘 CSS입니다. 사용되는 기준에 관해서는 다음과 같습니다.<br><br>
<strong>New 아이콘</strong> - 신규로 개설된 강좌 항목에 사용됩니다. 정책에 따른 기간 이후에는 OFF처리 됩니다.<br>
<strong>예정</strong> - 개강 예정인 강좌 항목에 사용됩니다. 개강 이후에는 OFF처리 됩니다.<br>
<strong>UPDATE</strong> - 개강 이후, 주기적으로 강의영상이 업로드 되고 있는 경우에 사용됩니다. 종강 이후에는 OFF처리 됩니다.<br> 
<strong>완강</strong> - 모든 강의가 올라온 이후, 종강 상태인 강좌 항목에 사용됩니다. 종강 이후에도 수강 및 결제 등 서비스는 정상 제공됩니다.<br>
<strong>9급/7급</strong> - 해당 강좌가 어떤 시험을 대비하여 구성된 강의인지 표시하여 줍니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="https://www.megagong.net/vod/vod_chr_list.asp?mcode=5&grd_fg=9" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#강좌리스트</p> </li>
                            <li><p>#상태표시</p> </li>
                            <li><p>#정보전달</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">공지 아이콘</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/icon3.png" alt='아이콘위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="icon_set">
    <img src="<%=img_main%>/icon/ic_notice.gif" alt="공지" />
    <img src="<%=img_main%>/icon/ic_notice_g_mock.png" alt="공지" />
    <img src="<%=img_main%>/icon/ic_notice_s_mock.jpg" alt="공지" />
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">메가스터디 공무원 메인 페이지 등의 선생님 공지사항 항목에서 주로 사용되는 아이콘입니다.<br> 상황에 맞게 규격에 맞는 아이콘을 사용합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#게시글</p> </li>
                            <li><p>#공지사항</p> </li>
                            <li><p>#텍스트아이콘</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">이벤트 아이콘</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/icon5.png" alt='아이콘위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="eventico_wrap">
<span class="label">
    <img src="https://img.megagong.net/m/2021/1007_mainrenw/evt_icon.png" alt="event">
</span>
<i class="icon new">
    <img src="https://img.megagong.net/m/2021/0615_gongRNL/event.png" alt="EVENT">
</i>
<i class="icon new">
    <img src="https://img.megagong.net/m/2021/1229_army_main/event.png" alt="EVENT">
</i>
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">메가스터디 공무원 메인 페이지 등의 선생님 소개 항목에서 주로 사용되는 아이콘입니다.<br> 공무원, 소방, 군무원별로 정해진 특정 색상만을 사용하도록 합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#이벤트</p> </li>
                            <li><p>#강사홍보</p> </li>
                            <li><p>#텍스트아이콘</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <!--<div class="page_text_wrap">
                <p class="page_head">기타 라벨</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div>--><!-- 채팅박스 동적으로 생성 -->
                <!--<div class="position_site"><img src="/images/popup5.png" alt='팝업위치' ></div>-->

<!-- HTML -->
<!--<div class="code-box html">
<div class="icon_set">
        <img src="<%=img_main%>/icon/ic_md_post.gif" alt="수강평" />
        <img src="<%=img_main%>/icon/icon_professor.gif" alt="교수메인" />
        <img src="<%=img_main%>/icon/icon_end.gif" alt="완강" />
        <img src="<%=img_main%>/icon/ic_mi.gif" alt="미수강" />
        <img src="<%=img_main%>/icon/icon_book1.gif" alt="교재1" />
        <img src="<%=img_main%>/icon/icon_ot.gif" alt="OT" />
        <img src="<%=img_main%>/icon/icon_de.gif" alt="더보기" />
        <img src="<%=img_main%>/icon/icon_il.gif" alt="S와이드 일반" />
        <img src="<%=img_main%>/icon/icon_acadmode.gif" alt="현강 모드" />
        <img src="<%=img_main%>/icon/icon_efocus.gif" alt="영어집중반" />
        <img src="<%=img_main%>/icon/icon_new.gif" alt="NEW" />-->
        
        <!--<img src="<%=img_main%>/icon/icon_best.gif" alt="BEST" />-->
        <!--<img src="<%=img_main%>/icon/icon_best_back.gif" alt="Best" />>-->
        
        <!--<img src="<%=img_main%>/icon/icon_cp_best.gif" alt="이 강좌의 최고 할인 쿠폰" />
        <img src="<%=img_main%>/icon/icon_lect.gif" alt="강좌" />
        <img src="<%=img_main%>/icon/icon_event2.gif" alt="EVENT" />
        <img src="<%=img_main%>/icon/icon_newTeacher.gif" alt="신규입성" />
        <img src="<%=img_main%>/icon/icon_goI.gif" alt="S와이드 HD" />
        <img src="<%=img_main%>/icon/icon_hd.gif" alt="S와이드 HD" />
        <img src="<%=img_main%>/icon/icon_tnew.gif" alt="신규입성" />
        <img src="<%=img_main%>/icon/icon_pmp02.gif" alt="PMP" />
        <img src="<%=img_main%>/icon/icon_super.gif" alt="슈퍼와이드" />
        <img src="<%=img_main%>/icon/icon_profi.gif" alt="소개영상" />
        <img src="<%=img_main%>/icon/icon_mob.gif" alt="모바일" />
        <img src="<%=img_main%>/icon/icon_KHTeacher.gif" alt="경행전문" />
        <img src="<%=img_main%>/icon/icon_eword.gif" alt="단어암기전문" />
        <img src="<%=img_main%>/icon/icon_go.gif" alt="S와이드 HD" />
        <img src="<%=img_main%>/icon/icon_dada.gif" alt="다다익선" />
        <img src="<%=img_main%>/icon/icon_junTeacher.gif" alt="전격영입" />
        <img src="<%=img_main%>/icon/icon_sinTeacher.gif" alt="전격영입" />
        <img src="<%=img_main%>/icon/icon_gnbSub_new.gif" alt="OPEN" />
        <img src="<%=img_main%>/icon/icon_encore.gif" alt="앙코르" />
    </div>
</div>-->


<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>

<!-- <p class="page_text">메가스터디 공무원 메인 페이지에서 사용되는 슬라이드 배너 기능입니다.<br> 페이지 중앙부에 위치하고 있으며 반응형의 경우 Dot 슬라이드 버튼이 나타납니다. 또한 배너를 클릭할 경우, 홍보 및 이벤트 페이지로 연결됩니다.<br> 기본적으로 우측에서 좌측으로 자연스럽게 넘어가는 효과와 함께 3초 단위로 슬라이드가 변경됩니다.</p>
-->
<!-- Code View -->
<!--<pre class="language-html html act"></pre>

                <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div>--><!-- .page_text_wrap -->








            <div class="page_text_wrap">
                <p class="page_head">기타</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/icon4.png" alt='아이콘위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="icon_set">
    <img src="<%=img_main%>/icon/megacst.ico" alt="메가스터디 아이콘" />
    <img src="<%=img_main%>/icon/lecture_paper.png" alt="강의자료" />
    <img src="<%=img_main%>/icon/lecture_go.png" alt="강의 재생" />
    <img src="<%=img_main%>/icon/lecture_home.png" alt="강의홈" />
    <img src="<%=img_main%>/icon/notice_file.gif" alt="공지파일" />
    <img src="<%=img_main%>/icon/icon_guide.png" alt="" />
    <img src="<%=img_main%>/icon/icon_exclamation.gif" alt="" />
    <img src="<%=img_main%>/icon/icon_01.gif" alt="" />
    <img src="<%=img_main%>/icon/icon_file.jpg" alt="" />
    <img src="<%=img_main%>/icon/lecture_down.png" alt="" />
    <img src="<%=img_main%>/icon/lecture_cart.png" alt=""  class="white_ico"/>
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>


<p class="page_text">메가스터디 공무원에서 제작한 아이콘 이미지입니다.<br> 메인 로고 및 영상 재생 버튼, 자료 다운로드 버튼 등 다양한 곳에서 사용되고 있습니다. </p>


<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/megagong.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#로고</p> </li>
                            <li><p>#기본아이콘</p> </li>
                            <li><p>#게시글</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->








            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!--<div class="ball_fir_wrap">
                <div class="ball fir ver1"></div>
                <div class="ball fir ver3"></div>
            </div>
            <div class="ball_white">
            </div>-->
            <!-- #include virtual = "/inc/footer.asp"-->
            
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    

    <style>
    html {overflow-x:hidden;}
    .ball.fir.ver3 , .ball.fir.ver4, .ball.fir.ver5, .ball.fir.ver6, .ball.fir.ver1 , .ball.fir.ver2 {animation:inherit;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .icon_set {margin: auto;width: 387px;text-align: center;}
    .lectlist .lect_item {padding: 15px 0 0 0;}
    .lectlist .lect_item .listTitle {text-align: center;}
    .icon_set img {vertical-align: middle;}
    .white_ico {background: #b1b1b1;width: 40px; height: 40px;border-radius: 50%; padding: 2% 2.5% 2% 1.5%;box-sizing: border-box;}
    .board2 strong {font-weight: 500;}
    .eventico_wrap {text-align: center;}

    @media (max-width: 1200px) {
        .icon_set {width:100%}
    }
    </style>

    <script>

    $('.main_wrp .main_event .exhibi_wrap .more').on('click',function(){
        if ( $('.exhibi_wrap').hasClass('on')) {
            $('.main_wrp').css('overflow','hidden');
        } else {
            $('.main_wrp').css('overflow','inherit');
        }
    })

    </script>




<!-- #include virtual = "/inc/bottom.asp"-->