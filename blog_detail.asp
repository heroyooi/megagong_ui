<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 4
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_blog page_blog_detail" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap blogver">
              <h3 class="page_name"></h3>
              <div class="page_sub_text"></div>
              <div class="page_print">
                  <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
              </div>
            </div>
            <div class="page_blog_wrap detail">

              <!-- 보기 -->
              <div class="blog_detail_wrap">
                <div class="blog_loading">LOADING ...</div>
                <div class="blog_detail_btns">
                  <a href="./blog.asp">목록</a>
                  <a href="#" id="btnModify" style="display: none;">수정</a>
                  <a href="#" id="btnDelete" style="display: none;">삭제</a>
                </div>
              </div>

              <!-- 수정 -->
              <div class="blog_edit_wrap" style="display: none;">
                <h4>수정 영역</h4>
                <div class="blog_edit_close_btns"><a href="#">닫기</a></div>
                <ul class="edit_form">
                  <li>
                    <input type="text" class="blog_edit_title" placeholder="제목" />
                  </li>
                  <li>
                    <textarea class="blog_edit_content" id="blogEditEditor"></textarea>
                  </li>
                </ul>
                <button class="btn_save" id="btnEdit">저장</button>
              </div>

              <div class="comment_list_wrap">
                <h4>COMMENT LIST</h4>
                <ul id="comment_list"></ul>
              </div>
              
              <div class="comment_write_wrap">
                <h4>POST</h4>
                <div class="write_form_wrap">
                  <ul class="write_form">
                    <li>
                      <!--<span class="label">내용</span>-->
                      <textarea class="comment_content"></textarea>
                    </li>
                  </ul>
                  <button class="btn_save" id="btnSave">댓글 달기</button>
                </div>
              </div><!-- .comment_write_wrap -->

            </div><!-- .page_blog_wrap -->
            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>

    <style>
      .page_wrap .page_name {font-family: 'NotoSans KR';}
      .page_blog_wrap { background: #fff;position: relative;}
      :not(.page_text_wrap) a:hover {color: #ffffff;}
      .page_blog_detail .author_wrp .author {color: #000;}
      button.btn_delete_comment {color: #ff7d7d;font-family: 'NotoSans KR';font-size: 11px;font-weight: 300;margin-left: 5px;vertical-align: middle;}
    </style>


    <div class="ank"></div>
<!-- #include virtual = "/inc/bottom.asp"-->