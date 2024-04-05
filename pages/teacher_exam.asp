<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 3
dp2 = 5
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">TEACHER'S EXAM</h3>
              <h3 class="page_name_sub">강사별 모의고사</h3>
              <p class="page_sub_text">대표 문구가 나옵니다.</p>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/font_NotoSans_kr.css" /></code></pre>          
<pre class="language-html javascript"><code><script type="text/javascript" src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script></code></pre>          

            <div class="page_text_wrap">
                <p class="page_head">정답 입력 및 오답 확인</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div id="exam_lyj4718">
    <div class="tab_wrap">
        <div class="tab_box">
            <ul class="tab_list clearfix tab3" id="tab_list">
                <li class="on"><a href="javascript:void(0);"><span>정답 입력 및 오답 확인</span></a></li>
                <li><a href="javascript:void(0);"><span>누적 성적 및 유형별 정답률</span></a></li>
                <li><a href="javascript:void(0);"><span>유사 유형 검색 서비스</span></a></li>
            </ul>
        </div>
        <div class="tab_area">
            <!-- tab1 정답 입력 및 오답 확인-->
            <div class="tab_cont on" id="tab_cont1"></div>						
            <!-- // tab1 -->
            <!-- tab2 누적 성적 및 유형별 정답률 -->
            <div class="tab_cont" id="tab_cont2"></div>
            <!-- // tab2 -->
            <!-- tab3 유사 유형 검색 서비스 -->
            <div class="tab_cont" id="tab_cont3"></div>
            <!-- // tab3 -->
        </div>
    </div>
</div></div>
<style>
#exam_lyj4718{font-family: 'NotoSans KR';text-align:center;}
#exam_lyj4718 .tab_wrap { position: relative; } 
#exam_lyj4718 .tab_wrap.v-fixed { padding-top:100px; } 
#exam_lyj4718 .tab_box { position: relative; background: #9fafff; z-index: 3; } 
#exam_lyj4718 .tab_list { width: 1080px; position: relative; margin: 0 auto; } 
#exam_lyj4718 .tab_box.fixed { position: fixed; top:0; left:0; width: 100%; z-index: 4; } 
#exam_lyj4718 .tab_list li { float: left; font-size: 22px; margin: 0 auto; width: 50%; height: 100px; box-sizing: border-box; background: #c4ceff; color: #8493e0; font-weight: 700; cursor: pointer; display:table; } 
#exam_lyj4718 .tab_list li.on { position: relative; background: #fff; color: #30488d } 
#exam_lyj4718 .tab_list li:not(:first-child) { margin-right: 0; } 
#exam_lyj4718 .tab_list li a { display: block; } 
#exam_lyj4718 .tab_list.tab3 li { width:33.33%; position:relative; } 
#exam_lyj4718 .tab_list.tab3 li a { display:table; width:100%; height:100%; } 
#exam_lyj4718 .tab_list.tab3 li a > span { display:table-cell; vertical-align:middle; } 
#exam_lyj4718 .tab_list.tab3 li a > span > span { display:inline-block; vertical-align:top; margin-left:3px; } 
#exam_lyj4718 .tab_cont { display: none; position: relative; } 
#exam_lyj4718 .tab_cont.on { display: block; } 
</style>
<script>
var isFixed = false;
$(window).on('load scroll', function(){
    var tabPos = $('.tab_wrap').offset().top;
    var scTop = $(this).scrollTop();
    if (scTop >= tabPos && !isFixed) {
        $('body').addClass('v-fixed');
        $('.tab_box').addClass('fixed');
        $('.tab_wrap').addClass('v-fixed');
        isFixed = true;
    }
    if (scTop < tabPos && isFixed){
        $('body').removeClass('v-fixed');
        $('.tab_box').removeClass('fixed');
        $('.tab_wrap').removeClass('v-fixed');
        isFixed = false;
    }
});

$(".tab_list li").on('click', function () {
    var li_index = $(this).index();
    $(".tab_list li").removeClass("on");
    $(this).addClass("on");
    $(this).closest(".tab_wrap").find(".tab_cont").removeClass("on");
    $(this).closest(".tab_wrap").find(".tab_cont").eq(li_index).addClass("on");

    $("#tab_cont1").html("");   
    $("#tab_cont2").html("");   
    $("#tab_cont3").html("");   

    //정답 입력 및 오답 확인
    if (li_index == 0){
        $.get("./teacher_exam/tab_exam.asp?1=1&" + new Date().getTime(),function(html) {
            $("#tab_cont1").html(html);   
        });
    }
    //누적 성적 및 유형별 정답률
    else if (li_index == 1){
        $.get("./teacher_exam/tab_result.asp?1=1&" + new Date().getTime(),function(html) {
            $("#tab_cont2").html(html);   
        });
    }//유사 유형 검색 서비스
    else if (li_index==2){
        <%if cook_id ="" then %>
            alert('로그인이 필요합니다.');
            document.location.href = "/member/login.asp";
            return;
        <%else%>
        //관리자 계정만 선오픈
            <% If mem_type = "E" then%>
            $.get("./teacher_exam/tab3_qst.asp?1=1&now2=<%=lo_now_date%>&" + new Date().getTime(),function(html) {
                $("#tab_cont3").html(html);   
            });	
            <%else%>
                alert("12월27일 오픈 예정입니다.");
                reset();
            <%end if%>	
        <%end if%>		
    }
    setTimeout(function(){
        // $('html, body').animate({ scrollTop: $('.tab_wrap').offset().top }, 0);
        window.scrollTo(0, $('.tab_wrap').offset().top);
    }, 250);
});
</script>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                <a class="use_link" href="<%=url_main%>/s/gong/event/2022/12220192/index.asp#con1" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
            </div><!-- .page_text_wrap -->

            <!-- #include virtual = "/inc/tweet_popup_all.asp"-->
            <!-- #include virtual = "/inc/ball.asp"-->
            <!-- #include virtual = "/inc/footer.asp"-->
        </div> <!--//page_inner -->
    
    </div>


    <div class="ank"></div>

<!-- #include virtual = "/inc/bottom.asp"-->