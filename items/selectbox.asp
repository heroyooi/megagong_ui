<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" />
<script src="<%=url_main%>/common/js/ui_lab.js"></script>
<%
dp1 = 2
dp2 = 11
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">SELECTBOX</h3>
                <h3 class="page_name_sub">셀렉트박스</h3>
                <p class="page_sub_text">메가공무원 사이트에서 통상적으로 사용되는 셀렉트박스 요소입니다.<br>
                사용자의 원활한 정보검색 혹은 옵션선택을 위해 제공되며, <br>
                페이지의 디자인 방향성에 따라 셀렉트박스 외관의 변경 및 수정이 가능합니다.
                </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css" /></code></pre>
<pre class="language-html js"><code><script src="<%=url_main%>/common/js/ui_lab.js"></script></code></pre>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->
            <div class="page_text_wrap">
                <p class="page_head">디자인 셀렉트박스</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->

<!-- HTML -->
<div class="code-box html"><div class="tbl-wrp select-wrp">
    <div class="choice-box">
        <span class="select-base">
            <span class="value"></span>
            <select name="ag_apptype" id="ag_apptype">
                <option value="1" selected>공채</option>
                <option value="2">경채</option>
            </select>
        </span>
    </div>
</div></div>

<p class="page_text">합격전략 연구소 등에서 사용되는 셀렉트박스 기능입니다. <br>지역별 채용 비교 등, 다양한 모집정보를 확인하기 위해 사용됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="https://lab.megagong.net/l/sobang/guide/series.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#채용정보</p> </li>
                            <li><p>#채용기준</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">디자인 셀렉트박스 - 여러개 사용</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><div class="select-wrp">
    <ul>
        <li class="choice-box">
            <span class="select-base">
                <span class="value"></span>
                <select id="exam_apptype" name="exam_apptype">
                    <option value="1" selected>일반전형</option>
                    <option value="2">장애인</option>
                    <option value="3">저소득</option>
                </select>
            </span>								
        </li>
        <li class="choice-box">
            <span class="select-base">
                <span class="value"></span>
                <select id="exam_grp" name="exam_grp">
                    <option value="101">행정직군</option>
                    <option value="102">기술직군</option>
                </select>
            </span>								
        </li>
    </ul>
</div></div>


<p class="page_text">메가공무원 사이트에서 다양하게 사용되는 셀렉트박스 기능입니다. <br>학습 Q&A 등, 사용자가 원하는 종류의 정보를 용이하게 찾기 위해 사용됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#2단</p> </li>
                            <li><p>#셀렉트박스</p> </li>
                            <li><p>#선택</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">셀렉트박스 - 시험회차</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><table class="test_info">
<colgroup>
    <col style="width:14.5667%">
    <col style="width:35.8333%">
    <col style="width:16.6667%">
    <col style="width:33.3333%">
</colgroup>
<tbody>
    <tr>
        <th>시험명</th>
        <td>
            <select name="examnm" id="examnm" onchange="examnmchg();">
                <!-- <option value="">시험 선택</option> -->
                <!--<'%
                    if isarray(examnmlist) = true then
                        for n = 0 to ubound(examnmlist,2)
                            examidx   = examnmlist(0,n)
                            examnm    = examnmlist(1,n)
                            row_no    = examnmlist(2,n) '최신등록한 시험마스터
                    %>                        
                        <option value="<'%=examidx%>" style="color:black" <'%if row_no = "1" then%>selected<'%end if%>><'%=examnm%></option>
            
                    <'%
                        next 
                    end if 
                %'>-->
                <!-- 예시 -->
                <option value="19" style="color:black" selected="">2023 고종훈 동형 모의고사 시즌2</option>
                <option value="16" style="color:black">2023 동형모의고사 시즌1 </option>
                <option value="15" style="color:black">2023 고종훈 기출을 섞은 모의고사 </option>
            </select>    
        </td>
        <th>시험회차</th>
        <td>
            <select id="examqcnt" name="examqcnt">
                <option value="">회차 선택</option>
                <option value="1">1회차</option>
                <option value="2">2회차</option>
                <option value="3" style="color:#B7B7B7">3회차</option>
                <option value="4" style="color:#B7B7B7">4회차</option>
                <option value="5" style="color:#B7B7B7">5회차</option>
                <option value="6" style="color:#B7B7B7">6회차</option>
                <option value="7" style="color:#B7B7B7">7회차</option>
                <option value="8" style="color:#B7B7B7">8회차</option>
                <option value="9" style="color:#B7B7B7">9회차</option>
                <option value="10" style="color:#B7B7B7">10회차</option>
                <option value="11">11회차</option>
                <option value="12" style="color:#B7B7B7">12회차</option>
                <option value="13" style="color:#B7B7B7">13회차</option>
                <option value="14" style="color:#B7B7B7">14회차</option>
            </select>
        </td>
    </tr>
</tbody>
</table></div>
<style>.test_info { font-size: 15px;border: 1px solid rgba(204,204,204, 1);background: #fff; }
.test_info th, .test_info td {padding: 10px 0;}
.test_info th {font-weight: 900;background: #f5f5f5; text-align: center; }
.test_info td {text-align: left; border: 1px solid rgba(204,204,204, 1);border-width: 0 1px; padding-left: 20px;}
.test_info select { padding: 2% 5%; font-size: 15px;}

@media (max-width: 1200px){
.test_info {font-size: 14px;}
.test_info select {font-size: 14px;}
}
@media (max-width: 1081px){
.test_info td {padding-right: 20px;}
.test_info select {width: 100%;}
}
@media (max-width: 768px){
.test_info {font-size: 13px;}
.test_info th {padding: 10px 2px;}
.test_info td {padding: 10px 3px;}
.test_info select {font-size: 13px;padding: 0 7px;height: 30px;line-height: 30px;}
}
@media (max-width: 576px){
.test_info {font-size: 12px;}
.test_info select {font-size: 12px;}
}
@media (max-width: 480px){
.test_info {font-size: 11px;}
.test_info select {font-size: 11px;}
}
</style>

<p class="page_text">이벤트 및 모의고사 홍보 페이지에서 주로 사용되는 셀렉트박스 기능입니다.<br>
사용자가 희망하는 시즌 및 회차를 선택하여 모의고사 서비스를 이용할 수 있도록 돕습니다. </p>


<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/event/2023/02200013/exam.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#시험회차</p> </li>
                            <li><p>#시험선택</p> </li>
                            <li><p>#모의고사</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">셀렉트박스 - 바로가기</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><ul class="hdtop-wrap">
<li class="link-wrap">
    <a href="javascript:;" class="link-btn" title="메가공무원">메가공무원 바로가기</a>
    <ul class="link-list">
        <li><a href="https://www.megagong.net/megagong.asp" target="_blank">메가공무원 바로가기</a></li>
        <li><a href="https://sobang.megagong.net/megagong.asp" target="_blank">메가소방 바로가기</a></li>
        <li><a href="https://army.megagong.net/megagong.asp" target="_blank">메가군무원 바로가기</a></li>
    </ul>
</li>
</ul></div>
<style>
.hdtop-wrap .link-wrap {position: relative;}
.hdtop-wrap .link-wrap .link-btn {min-width: 110px;position: relative;display: block;color: #777;border: 1px solid #777; font-size: 13px;padding: 4px 32px 4px 15px;  border-radius: 30px; text-align: left;}
.hdtop-wrap .link-wrap .link-btn::before {content: "";display: block;position: absolute;right: 15px;top: 50%;transform: translateY(-50%); background: url(https://img.megagong.net/lab/common/arr_down.png) center center no-repeat; width: 8px; height: 4px;}
.hdtop-wrap .link-wrap .link-list {display: none;}
.hdtop-wrap .link-wrap .link-btn.on::before { transform: rotate(180deg); top: 40%;}
.hdtop-wrap .link-wrap .link-list.on { display: block; position: absolute; top: 27px; right: 0; z-index: 4;background: #fff;border: 1px solid #777; border-radius: 10px;}
.hdtop-wrap > li a { position: relative;}
.hdtop-wrap .link-wrap .link-list li a {display: block;color: #777;padding: 0 32px 7px 15px;min-width: 110px;white-space: nowrap;}
.hdtop-wrap .link-wrap .link-list li:first-child a {padding-top: 15px;}

</style>
<script>
$(document).ready(function() {
    $('.hdtop-wrap').click(function(){
        /* --- 클래스 on 토글--- */
        if($('.link-btn').hasClass('on')){
            $('.link-btn').removeClass('on');
            $('.link-list').removeClass('on');
        }else{
            $('.link-btn').addClass('on');
            $('.link-list').addClass('on');
        }
    });
});
</script>

<p class="page_text">메가공무원 합격전략 메인사이트 최상단 우측에 위치한 셀렉트버튼 요소입니다.<br>
해당 셀렉트버튼을 이용하면 합격전략 사이트에서 메가공무원, 메가소방, 메가군무원 메인사이트로의 바로가기가 가능합니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/teacher/qna/qna.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#바로가기</p> </li>
                            <li><p>#라운드</p> </li>
                            <li><p>#네비게이션</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">셀렉트박스 - 합격전략연구소</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <!-- <div class="position_site"><img src="/images/btn.png" alt='버튼위치' ></div> -->
                

<!-- HTML -->
<div class="code-box html"><ul class="depth3-box" style="display: block;">
    <li class="depth3"><a href="javascript:void(0);">시험제도</a></li>
    <li class="current"><a href="javascript:void(0);" title="시험제도">시험제도</a></li>
    <li class=" "><a href="javascript:void(0);" title="시험일정">시험일정</a></li>
    <li class=" "><a href="javascript:void(0);" title="모집정보">모집정보</a></li>
    <li class=" "><a href="javascript:void(0);" title="전지적 직렬탐구시점">전지적 직렬탐구시점</a> </li>
</ul></div>
<style>
.depth3-box li a {font-weight: bold;height: 40px;    line-height: 14px;position: relative;display: block;padding: 13px 20px;font-size: 13px; text-align: left;  font-size: 14px; color: #333; background: #f5f5f5;}
.depth3-box li:first-child a { border-radius: 20px;}
.depth3-box li.on:first-child a { border-top-right-radius: 20px;border-top-left-radius: 20px;}
.depth3-box li:last-child a {padding-bottom: 25px;border-bottom-right-radius: 20px;border-bottom-left-radius: 20px;}

.depth3-box .depth3.on a {border-bottom-right-radius: 0;border-bottom-left-radius: 0;padding: 13px 20px 25px;}
.depth3-box .depth3 a:before {content: ''; display: block; right: 20px;top: 50%; position: absolute; background: url(https://img.megagong.net/lab/common/arr_depdown.png) no-repeat center center; width: 8px;  height: 4px;  transform: translateY(-50%);}
.depth3-box .depth3.on a:before {background: url(https://img.megagong.net/lab/common/arr_depup.png) no-repeat center center; top: 37%;}
.depth3-box .depth3 ~ li {display: none;}
.depth3-box .depth3.on ~ li {display: block;}

</style>
<script>
$(document).ready(function() {
    $('.depth3').click(function(){
        /* --- 클래스 on 토글--- */
        if($('.depth3').hasClass('on')){
            $('.depth3').removeClass('on');
        }else{
            $('.depth3').addClass('on');
        }
    });
});
</script>

<p class="page_text">메가공무원 합격전략 사이트에서 주로 사용되는 셀렉트박스 기능입니다.<br>
클릭할 경우 해당 페이지의 하위 페이지 목록들이 나열되며, Nav를 이용하지 않고서도 셀렉트박스를 통해 하위 페이지로의 이동이 가능합니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-css act"></pre>
<pre class="language-javascript act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="https://lab.megagong.net/l/gong/guide/guide.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#라운드</p> </li>
                            <li><p>#셀렉트박스</p> </li>
                            <li><p>#시험제도</p> </li>
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
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .board1 .btn_wrap {float: right;margin-top: 20px;}
    .btn_list {margin-top:0px}
    /* .co-loading{display:block !important;} */
    .select-wrp ul li, .select-wrp.tbl-wrp .choice-box{padding:5px 15px;}
    .test_info select {width: 93%;}
    .issue-box-wrap {border-bottom:none;}
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->