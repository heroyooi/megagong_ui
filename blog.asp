<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 4
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_blog" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">BLOG</h3>
              <h3 class="page_name_sub">��� ��α�</h3>
              <p class="page_sub_text">�ް����͵��� ��������������� ��� ��α��Դϴ�.</p>
              <div class="blog_write_btns"><a href="#">�۾���</a></div>
            </div>
            <div class="page_blog_wrap">
              <div class="blog_loading">LOADING ...</div>
              <ul class="blog_list"></ul>
            </div><!-- .page_blog_wrap -->


            <div class="page_write_wrap">
              <h4>�۾��� ����</h4>
              <div class="blog_write_close_btns"><a href="#">�ݱ�</a></div>
              <ul class="write_form">
                <!--
                <li class="file_area">
                  <label for="attach-file">���� ÷��</label>
                  <input type="file" id="attach-file" type="file" accept="image/*" />
                  <span class="preview_wrp"></span>
                </li>
                -->
                <li>
                  <input type="text" class="blog_title" placeholder="����" />
                </li>
                <li>
                  <textarea class="blog_content" id="blogEditor"></textarea>
                </li>
              </ul>

              <div class="btnSave_wrap">
                <button class="btn_save" id="btnSave">����</button>
              </div>
            </div><!-- .page_write_wrap -->


            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

    <style>
    .page_wrap {background: linear-gradient(227deg, rgb(155 155 155) -31%, rgb(70 70 70) 68%);}
    :not(.page_text_wrap) a:hover {color: #ffffff;}
    .write_form {height: inherit;}
    .btnSave_wrap { text-align: center;margin-top: 2%;}
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->