<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 14
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">CHECKBOX</h3>
                <h3 class="page_name_sub">체크박스</h3>
                <p class="page_sub_text">메가공무원 사이트에서 통상적으로 사용되는 체크박스 컴포넌트입니다.<br>
                사용되는 페이지의 디자인 및 용도에 맞게 다양한 변형이 가능합니다.
                </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">체크박스 - 기본형</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->

<!-- HTML -->
<div class="code-box html"><span class="chk_base">
    <input type="checkbox" id="agree_member_update" name="agree_member_update" />
    <label for="agree_member_update">입력하신 내용으로 회원정보를 업데이트 합니다.(필수)</label>
</span></div>

<p class="page_text">체크박스는 지정된 고유의 CSS를 유지하여 모두 동일한 디자인이 되도록 작업합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/study/my_study.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#디자인체크박스</p></li>
                            <li><p>#약관동의</p></li>
                            <li><p>#회원동의</p></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <!--<div class="page_text_wrap board2">
                <p class="page_head">버튼  - 이미지 &amp; 중앙정렬</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div>--><!-- 채팅박스 동적으로 생성 -->

<!-- HTML -->
<!--<div class="code-box html"><div class="btn_list tC">
  <a href="#none"><img src="<%=img_main%>/btn/btn_write2.gif" alt="글쓰기"></a>
  <a href="#none"><img src="<%=img_main%>/btn/bt_pqa3.gif" alt="질문하기"></a>
</div></div>>-->

<!--<p class="page_text">글 작성 및 질문 등의 용도를 가진 버튼들은 지정된 고유의 이미지를 활용하여 모두 동일한 디자인이 되도록 작업합니다.</p>-->

<!-- Code View -->
<!--<pre class="language-html html act"></pre>

                <a class="use_link" href="<%=url_main%>/teacher/notice/notice.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div>--><!-- .page_text_wrap -->




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
    .board1 .btn_wrap {margin-top: 10px;}
    .board1 .btn_wrap .btn { margin: auto;}
    .btn_list {margin-top:0px;text-align: center;}
    .round_btn_wrap a.btn_round {color: #fff;}
    .slick-prev9, .slick-next9 {background-size: 100%;background-position: 0;}
    .code-box a:hover {color: #fff}
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->