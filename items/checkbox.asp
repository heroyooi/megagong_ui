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
                <h3 class="page_name_sub">üũ�ڽ�</h3>
                <p class="page_sub_text">�ް������� ����Ʈ���� ��������� ���Ǵ� üũ�ڽ� ������Ʈ�Դϴ�.<br>
                ���Ǵ� �������� ������ �� �뵵�� �°� �پ��� ������ �����մϴ�.
                </p>
              <div class="page_print"><input type="button" value="�μ��ϱ�" id="print" onclick="window.print()"/></div>

            </div>

            <!--<p class="page_sub_text">���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�. ���⿡ �ٱ۷� ������ �����ϴ�.</p>
            <hr/>-->
            
            <div class="page_text_wrap">
                <p class="page_head">üũ�ڽ� - �⺻��</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- ä�ùڽ� �������� ���� -->

<!-- HTML -->
<div class="code-box html"><span class="chk_base">
    <input type="checkbox" id="agree_member_update" name="agree_member_update" />
    <label for="agree_member_update">�Է��Ͻ� �������� ȸ�������� ������Ʈ �մϴ�.(�ʼ�)</label>
</span></div>

<p class="page_text">üũ�ڽ��� ������ ������ CSS�� �����Ͽ� ��� ������ �������� �ǵ��� �۾��մϴ�.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/study/my_study.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#������üũ�ڽ�</p></li>
                            <li><p>#�������</p></li>
                            <li><p>#ȸ������</p></li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <!--<div class="page_text_wrap board2">
                <p class="page_head">��ư  - �̹��� &amp; �߾�����</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div>--><!-- ä�ùڽ� �������� ���� -->

<!-- HTML -->
<!--<div class="code-box html"><div class="btn_list tC">
  <a href="#none"><img src="<%=img_main%>/btn/btn_write2.gif" alt="�۾���"></a>
  <a href="#none"><img src="<%=img_main%>/btn/bt_pqa3.gif" alt="�����ϱ�"></a>
</div></div>>-->

<!--<p class="page_text">�� �ۼ� �� ���� ���� �뵵�� ���� ��ư���� ������ ������ �̹����� Ȱ���Ͽ� ��� ������ �������� �ǵ��� �۾��մϴ�.</p>-->

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