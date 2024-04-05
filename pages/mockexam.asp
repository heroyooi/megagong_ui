<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/font_NotoSans_kr.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/mockexam/2022_1/style.css" />
<%
dp1 = 3
dp2 = 3
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">MOCKTEST</h3>
                <h3 class="page_name_sub">모의고사</h3>
                <p class="page_sub_text">메가공무원에서 제공하고 있는 온라인 모의고사 서비스의 UI 컴포넌트입니다.<br>
            모의고사 신청 및 응시정보 조회, 모의고사 응시하기, 결과 확인 및 정답해설까지 <br>
            온라인 환경에서도 부족함이 없도록 다양한 서비스를 제공하고 있습니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/font_NotoSans_kr.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/mockexam/2022_1/style.css" /></code></pre>          

            <div class="page_text_wrap">
                <p class="page_head">모의고사 접수 및 안내</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="eventWrap">
    <div id="exam_info" class="exam_info">
        <div class="inner">
            <h4>
                <img src="https://img.megagong.net/m/2021/1117_exam/info_tit1.png" alt="시험 안내">
                <span>2022 대비 메가공무원 전국 모의고사</span>
            </h4>
            <div class="tbl_wrp examinfo">
                <table class="tbl" title="시험 안내">
                    <colgroup>
                        <col style="width:20%">
                        <col style="width:15%">
                        <col style="width:15%">
                        <col style="width:50%">
                    </colgroup>
                    <tbody><tr>
                        <th>응시 직렬<br class="mo_for">(직류)</th>
                        <td colspan="3" class="aL bor">9급 일반행정(우정, 경찰청 포함), 고용노동, 교육행정, 선거행정, 직업상담, 세무, 관세, 교정(남/여), 보호(남/여), <br>검찰, 마약수사, 출입국관리, 철도경찰, 사회복지 등 14개</td>
                    </tr>
                    <tr>
                        <th>응시 과목</th>
                        <td colspan="3" class="aL bor">직렬(직류)별 필수과목 5과목 </td>
                    </tr>
                    <tr>
                        <th>신청 방법</th>
                        <td colspan="3" class="aL step bor">
                            <ol>
                                <li>
                                    <strong>STEP 01.</strong>
                                    <span>응시 가능 직렬(직류) 확인하기</span>
                                </li>
                                <li>
                                    <strong>STEP 02.</strong>
                                    <span>시험 일정 확인하기</span>
                                </li>
                                <li>
                                    <strong>STEP 03.</strong>
                                    <span>모의고사 응시권 구매하기</span>
                                </li>
                            </ol>
                        </td>
                    </tr>
                    <tr>
                        <th>응시 방법</th>
                        <td colspan="3" class="aL step bor">
                            <ol>
                                <li>
                                    <strong>STEP 01.</strong>
                                    <span>시험 당일 온라인 응시 클릭 후 응시 정보 입력</span>
                                </li>
                                <li>
                                    <strong>STEP 02.</strong>
                                    <span>100분간 모의고사 응시 후 답안 제출</span>
                                </li>
                            </ol>
                        </td>
                    </tr>
                </tbody></table>
            </div>
            <h4 id="schedule">
                <img src="https://img.megagong.net/m/2021/1117_exam/info_tit2.png" alt="일정 안내">
                <span>2022 대비 메가공무원 전국 모의고사</span>
            </h4>
            <ul class="tab_list">
                <li class="on"><a href="javascript:;" title="제1회"><span>제1회</span></a></li>
                <li><a href="javascript:;" title="제2회"><span>제2회</span></a></li>
                <li><a href="javascript:;" title="제3회"><span>제3회</span></a></li>
                <li><a href="javascript:;" title="제4회"><span>제4회</span></a></li>
            </ul>
            <div class="tab_cont">
                <div class="item on">
                    <div class="tbl_con">
                        <div class="flow long2">
                            <strong>신청 기간</strong>
                            <div>11/17(수) <br>~12/17(금) 24:00</div>
                        </div>
                        <div class="flow long">
                            <strong>응시 기간</strong>
                            <div>12/18(토) 10:00 <br>~12/19(일) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>해설 강의</strong>
                            <div>12/18(토) 10:00~</div>
                        </div>
                        <div class="flow">
                            <strong>문항 문의</strong>
                            <div>12/18(토) 10:00 <br>~12/20(월) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>성적 발표</strong>
                            <div>12/24(금) 17:00</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="tbl_con">
                        <div class="flow long2">
                            <strong>신청 기간</strong>
                            <div>12/18(토) <br>~1/21(금) 24:00</div>
                        </div>
                        
                        <div class="flow long">
                            <strong>응시 기간</strong>
                            <div>1/22(토) 10:00 <br>~1/23(일) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>해설 강의</strong>
                            <div>1/22(토) 10:00~</div>
                        </div>
                        <div class="flow">
                            <strong>문항 문의</strong>
                            <div>1/22(토) 10:00 <br>~1/24(월) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>성적 발표</strong>
                            <div>1/28(금) 17:00</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="tbl_con">
                        <div class="flow long2">
                            <strong>신청 기간</strong>
                            <div>1/22(토) <br>~2/18(금) 24:00</div>
                        </div>
                        
                        <div class="flow long">
                            <strong>응시 기간</strong>
                            <div>2/19(토) 10:00 <br>~2/20(일) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>해설 강의</strong>
                            <div>2/19(토) 10:00~</div>
                        </div>
                        <div class="flow">
                            <strong>문항 문의</strong>
                            <div>2/19(토) 10:00 <br>~2/21(월) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>성적 발표</strong>
                            <div>2/25(금) 17:00</div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="tbl_con">
                        <div class="flow long2">
                            <strong>신청 기간</strong>
                            <div>2/19(토) <br>~3/18(금) 24:00</div>
                        </div>
                        
                        <div class="flow long">
                            <strong>응시 기간</strong>
                            <div>3/19(토) 10:00 <br>~3/20(일) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>해설 강의</strong>
                            <div>3/19(토) 10:00~</div>
                        </div>
                        <div class="flow">
                            <strong>문항 문의</strong>
                            <div>3/19(토) 10:00 <br>~3/21(월) 24:00</div>
                        </div>
                        <div class="flow">
                            <strong>성적 발표</strong>
                            <div>3/25(금) 17:00</div>
                        </div>
                    </div>
                </div>
                <p class="tiny_txt">※  시험 세부 일정은 주최측의 사정에 의해 변동될 수 있습니다.</p>
            </div>
            <h4>
                <img src="https://img.megagong.net/m/2021/1117_exam/info_tit3.png" alt="시험 신청하기">
                <span>2022 대비 메가공무원 전국 모의고사</span>
                <a href="javascript:;" onclick="window.open('<%=url_main%>/s/gong/mockexam/2022_1/pop_notice.asp', 'faq', 'width=800px, height=660px,top=50,left=50,scrollbars=yes');" class="faq">[FAQ] 모의고사 신청 전 확인해 주세요!</a>
            </h4>
            <div class="apply_box">
                <span class="end">  
                    <!-- 마감 -->
                    <img src="https://img.megagong.net/m/2021/1117_exam/end.png" alt="마감">
                </span>
                <div class="info">
                    <img src="https://img.megagong.net/m/2021/1117_exam/apply_info.png" alt="제1회 메가공무원 전국 모의고사 상품 구성: 시험지 + 해설강의 + 성적분석 서비스 (시험지는 PDF파일로 제공됩니다.) 응시료 5,000원">
                    <div class="btn_box">
                        <a href="javascript:;" onclick="applyX();">신청하기 &nbsp;&nbsp;&gt;</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div></div>


<script>/* 온라인 접수 */
function applyX() {
    <% if cook_id = "" then %>
        alert("로그인 후 신청할 수 있습니다.");
        location.href="https://www.megagong.net/member/login.asp";
        return false;
    <% end if %>

    <% if cdate(lo_now_date) > cdate(buy_end_dt) then %>
        alert("모의고사 신청 기간이 종료되었습니다.");
        return false;
    <% end if %>

    <% if bPayMem then %>
        alert("이미 신청하였습니다.");
        return false;
    <% end if %>
    var chr_cd ="<%=FeeChrCd%>"

    window.open('<%=url_main%>/mypage/pay/my_direct_pay_pre.asp?cartType=chr&chrChk='+chr_cd);
}</script>


<p class="page_text">메가공무원의 전국 모의고사 서비스 관련 페이지에서 사용되는 요소양식입니다. <br>
시험 및 일정 안내와 시험 신청의 기능을 제공하고 있습니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>




                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/mockexam/2022_1/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#시험신청</p> </li>
                            <li><p>#시험안내</p> </li>
                            <li><p>#모의고사신청</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">온라인 응시 - 응시 정보 입력하기</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="eventWrap firbox">
    <div id="apply_main" class="apply_main">
        <h3>
            <span><img src="<%=img_main%>/m/2021/1117_exam/0318/top_subtitle_v4.png" alt="2022 대비 제4회 메가공무원 전국 모의고사"></span>
        </h3>
        <div class="inner">
            <!-- 응시하기 첫 화면 입니다.-->
            <div class="exam_intro">
                <p class="intro_tit"><strong>응시 정보 입력 후 응시가 가능합니다. <br/>응시 정보를 입력해 주세요.</strong><span>(※ 팝업차단을 해제해 주세요.)</span></p>

                <div class="btn_wrap">
                    <a href="javascript:;" onclick="popupApply();" title="응시 정보 입력하기">응시 정보 입력하기 &gt;</a>
                </div>
            </div>
            <!-- 응시하기 첫 화면 입니다.-->
        </div>
    </div>
</div></div>


<script>var winApply = null;
function popupApply() {
    if(winApply != null) {
        winApply.close();
    }
    winApply = window.open("./mockexam/pop_apply.asp?cc=Y","winApply","width=700,height=850,location=no,status=no,scrollbars=yes");
}</script>
<style></style>

<p class="page_text">메가공무원의 전국 모의고사 서비스 관련 페이지에서 사용되는 요소양식입니다. <br>
응시 정보 입력 버튼을 클릭할 경우, 상세 응시 정보를 입력할 수 있는 팝업창을 제공하고 있습니다.</p>


<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/mockexam/2022_1/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#입력팝업</p> </li>
                            <li><p>#응시정보</p> </li>
                            <li><p>#모의고사신청</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">온라인 응시 - 응시 정보 조회 및 시작</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="eventWrap">
    <div id="apply_main" class="apply_main">
        <h3>
            <span><img src="<%=img_main%>/m/2021/1117_exam/0318/top_subtitle_v4.png" alt="2022 대비 제4회 메가공무원 전국 모의고사"></span>
        </h3>
        <div class="inner">
            <h4 class="tit2">
                <span>응시 정보</span>
            </h4>
            <div class="tbl_wrap exam_myinfo">
                <table title="응시정보">
                    <colgroup>
                        <col with="25%">
                        <col with="25%">
                        <col with="25%">
                        <col with="25%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>응시 직렬</th>
                            <th colspan="2">응시 지역</th>
                            <th>성명</th>
                        </tr>
                        <tr>
                            <td>일반행정</td>
                            <td colspan="2">서울·인천·경기</td>
                            <td>홍길동</td>
                        </tr>
                        <tr>
                            <th>시험 과목</th>
                            <th>응시일</th>
                            <th>시험 시간</th>
                            <th>시험지 다운로드</th>
                        </tr>
                        <tr>
                            <td>국어, 영어, 한국사<br>행정법총론, 행정학개론</td>
                            <td>
                                -
                            </td>
                            <td>100 분</td>
                            <td><a href="javascript:;" onclick="downPaper();" class="down_btn" title="다운로드">다운로드</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="tiny_txt" style="color:#ff0000">
                ※ &lt;제4회 메가공무원 전국 모의고사&gt; 시험지 다운로드는 <br class="mo_view">모의고사 신청자에 한하여 3/20(일) 24:00까지 가능합니다. 
            </p>
            <h4 class="tit2">
                <span>응시자 유의사항</span>
            </h4>
            <div class="exam_caution">
                <h5>1. 응시 관련 안내</h5>
                <ol>
                    <li>시험은 3/19(토) 10:00 ~ 3/20(일) 24:00 내에만 응시 가능합니다.</li>
                    <li>허위로 시험에 응시하거나(동일한 번호 마킹, 과목별 50% 미만 답안 마킹 등) 부정적인 방법으로 시험에 응시할 경우, 성적 처리에서 제외될 수 있습니다. </li>
                    <li>문제지 PDF 파일은 3/19(토) 10:00 ~ 3/20(일) 24:00까지 다운로드 가능합니다</li>
                    <li>모의고사 응시권 포함 공무원 메가패스 구매 회원은 메가패스 환급 또는 연장 시 2022대비 메가공무원 전국 모의고사 1회 이상 필수 응시해야 환급 대상자에 포함됩니다.</li>
                    <li>응시한 모의고사의 전과목 합산점수가 0점인 경우 환급 및 수강연장 대상자에 포함되지 않습니다.</li>
                </ol>
                <h5>2. 저작권 관련 안내</h5>
                <ol>
                    <li>&lt;메가공무원 전국 모의고사&gt;와 관련된 모든 자료의 저작권은 메가스터디교육(주)에 있습니다.</li>
                    <li>시험 자료를 타 개인 또는 단체에 무단으로 배포하거나 시험 응시 이외의 목적으로 활용할 경우, 관련 법에 의거하여 처벌될 수 있습니다.</li>
                </ol>
                <h5>3. 답안 제출 관련 안내</h5>
                <ol>
                    <li>응시 시작 후 100분이 지나면 답안이 자동 제출되며, 이후 재응시가 불가합니다.</li>
                </ol>
                <h5>4. 해설강의 관련 안내</h5>
                <ol>
                    <li>해설강의와 해설지는 모의고사 응시 완료 시 내 강의실에 자동 지급됩니다.</li>
                    <li>해설지는 제공기간(3/19(토) 10:00~4/1(금) 24:00) 내에만 해설강의 목록에서 다운로드 가능하며, 제공기간 이후에는 별도로 제공하지 않습니다.</li>
                    <li>최종 정답 제출을 완료하지 않으면 해설강의와 해설지가 지급되지 않습니다. </li>
                </ol>
                <h5>5. 문항 문의 및 최종 성적 발표 관련 안내</h5>
                <ol>
                    <li>문항 문의는 3/19(토) 10:00 ~ 3/21(월) 24:00에 문의게시판을 통해 하실 수 있습니다.</li>
                    <li>최종 성적은 모의고사 신청 시 입력한 정보와 채점 시 입력한 답안 정보를 토대로 산출하며, 3/25(금)에 발표됩니다. </li>
                    <li>온라인 응시자 중 0점은 성적 처리(성적분석, 합격 가능성 분석, 문항분석)가 되지 않습니다</li>
                    <li>사회복지직은 예상 합격선이 제공되지 않습니다. </li>
                </ol>
            </div>
            <p class="agree_check_box">
                <input type="checkbox" id="agree_check" name="agree_check">
                <label for="agree_check">위 내용을 충분히 숙지하였고, 불이행 시 법적인 책임을 지도록 하겠습니다.</label>
            </p>

            <div class="btn_box">
                <% if MTI_END_YN = "Y" then %>
                <a href="javascript:;" onclick="goTake(2)" class="point" title="문항 분석 확인하기">
                    <span>문항 분석 확인하기 &gt;</span>
                </a>
                <% else %>
                <a href="javascript:;" onclick="goTake(1)" title="응시 시작하기">
                    <span>응시 시작하기 &gt;</span>
                </a>
                <% end if %>
            </div>
        </div>
    </div>
</div></div>


<script>function goTake(no) {    
    if(no==1) {
    <% if cdate(lo_now_date) >= cdate(apply_end_dt) then %>
        alert("모의고사 응시 기간이 종료되었습니다.");
        return false;
    <% end if %>

    <% if cdate(lo_now_date) < cdate(apply_open_dt) then %>
        alert("모의고사 응시는 <%=month(apply_open_dt)%>/<%=day(apply_open_dt)%>(<%=fncWeekDay(d)%>) 10:00부터 가능합니다.");
        return false;
    <% elseif exam_mem_idx = "" or isnull(exam_mem_idx) = true then %>
        alert("모의고사 응시 정보를 입력한 회원만 응시 가능합니다.");
        return false;
    <% end if %>

        if(!$("#agree_check").prop("checked")) {
            alert("유의사항 동의란에 체크해 주세요.");
            return false;
        } else {
            if(confirm("모의고사 응시는 한 번만 가능하며, 시험 시작 후 100분이 지나면 답안이 자동 제출되어 재응시가 불가능합니다. 응시를 시작 하시겠습니까?")) {
                location.href="./apply_start.asp#apply_start";
            }
            return false;
        }
    } else if(no==2) {
        location.href="./anal_qst.asp#apply_score"; 
        return false;
    }
}</script>

<p class="page_text">메가공무원의 전국 모의고사 서비스 관련 페이지에서 사용되는 요소양식입니다. <br>
해당 양식을 통하여 사용자가 입력한 응시 정보를 확인하고 전국 모의고사 응시를 시작할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/mockexam/2022_1/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#정보조회</p> </li>
                            <li><p>#유의사항</p> </li>
                            <li><p>#모의고사시작</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">모의고사 응시</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div id="eventWrap" class="eventWrap">
    <div id="apply_start" class="apply_start">
        <h3>
            <span><img src="<%=img_main%>/m/2021/1117_exam/top_subtitle.png" alt="2022 대비 제1회 메가공무원 전국 모의고사"></span>
        </h3>
        <div class="inner">
            <!-- 문제영역 S -->
            <div class="question_wrap">
                <div class="subject_tab">
                        <ul class="gong">
                            <li class="on"><a href="?subj_cd=10#eventWrap" title="국어">국어</a></li>
                            <li class=""><a href="?subj_cd=11#eventWrap" title="영어">영어</a></li>
                            <li class=""><a href="?subj_cd=12#eventWrap" title="한국사">한국사</a></li>
                            <li class=""><a href="?subj_cd=13#eventWrap" title="행정법총론">행정법총론</a></li>
                            <li class=""><a href="?subj_cd=14#eventWrap" title="행정학개론">행정학개론</a></li>
                        </ul>
                        <select name="subj_cd" id="subj_cd" onchange="location.href='?subj_cd='+this.value+'&amp;go=q';">
                            <option value="10" selected>국어</option>
                            <option value="11">영어</option>
                            <option value="12">한국사</option>
                            <option value="13">행정법총론</option>
                            <option value="14">행정학개론</option>
                        </select>
                </div>
                <p class="time_state" style="color: rgb(0, 115, 189);"><span>남은 시간 : <strong>96</strong>분 <strong>09</strong>초</span></p>
                <div class="question_number">
                    <ul>
                        <li id="q_no_1" class="on"><a href="javascript:;" onclick="setQno(1)" title="1번">1</a></li>
                        <li id="q_no_2"><a href="javascript:;" onclick="setQno(2)" title="2번">2</a></li>
                        <li id="q_no_3"><a href="javascript:;" onclick="setQno(3)" title="3번">3</a></li>
                        <li id="q_no_4"><a href="javascript:;" onclick="setQno(4)" title="4번">4</a></li>
                        <li id="q_no_5"><a href="javascript:;" onclick="setQno(5)" title="5번">5</a></li>
                        <li id="q_no_6"><a href="javascript:;" onclick="setQno(6)" title="6번">6</a></li>
                        <li id="q_no_7"><a href="javascript:;" onclick="setQno(7)" title="7번">7</a></li>
                        <li id="q_no_8"><a href="javascript:;" onclick="setQno(8)" title="8번">8</a></li>
                        <li id="q_no_9"><a href="javascript:;" onclick="setQno(9)" title="9번">9</a></li>
                        <li id="q_no_10"><a href="javascript:;" onclick="setQno(10)" title="10번">10</a></li>
                        <li id="q_no_11"><a href="javascript:;" onclick="setQno(11)" title="11번">11</a></li>
                        <li id="q_no_12"><a href="javascript:;" onclick="setQno(12)" title="12번">12</a></li>
                        <li id="q_no_13"><a href="javascript:;" onclick="setQno(13)" title="13번">13</a></li>
                        <li id="q_no_14"><a href="javascript:;" onclick="setQno(14)" title="14번">14</a></li>
                        <li id="q_no_15"><a href="javascript:;" onclick="setQno(15)" title="15번">15</a></li>
                        <li id="q_no_16"><a href="javascript:;" onclick="setQno(16)" title="16번">16</a></li>
                        <li id="q_no_17"><a href="javascript:;" onclick="setQno(17)" title="17번">17</a></li>
                        <li id="q_no_18"><a href="javascript:;" onclick="setQno(18)" title="18번">18</a></li>
                        <li id="q_no_19"><a href="javascript:;" onclick="setQno(19)" title="19번">19</a></li>
                        <li id="q_no_20"><a href="javascript:;" onclick="setQno(20)" title="20번">20</a></li>
                    </ul>
                </div>
                <div class="question_zone">
                    <div class="question">
                        <!-- 문제 이미지 -->
                        <div class="img_box">
                            
                            <img src="<%=img_main%>/m/2021/1117_mockexam/q_img/gong_10_01.jpg?now=1669615735651" alt="문제이미지" id="q_img" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none" onerror="this.src='https://img.megagong.net//image/m/2020/1212_exam/gong/exam_img/sample.jpg?now=2022-11-28 오후 3:08:52';">
                            <br>
                        </div>
                        <!-- // 문제 이미지 -->
                        <!-- 과목 버튼 -->
                        <div class="btn_wrap subject">
                            <a href="?subj_cd=11&amp;go=q" name="btn_next_subj" class="next" title="다음 과목" style="display: none;">다음 과목 ▶</a>
                        </div>
                        <!-- //과목 버튼 -->
                    </div>
                    <!-- 문제 버튼 -->
                    <div class="btn_wrap number">
                        <a href="javascript:;" name="btn_prev_qno" onclick="getPrevQno()" title="이전 문제" style="display: none;">이전 문제</a>
                        <a href="javascript:;" name="btn_next_qno" onclick="getNextQno()" class="next" title="다음 문제">다음 문제</a>
                    </div>
                    <!-- // 문제 버튼 -->
                </div>
            </div>
            <!-- 문제영역 E -->
            <!-- 답안지 S -->
            <div class="answer_sheet">
                <p class="time_state" style="color: rgb(0, 115, 189);"><span>남은 시간 : <strong>96</strong>분 <strong>09</strong>초</span></p>
                
                <!-- 문제 버튼 -->
                <!--
                <div class="btn_wrap direct">
                    <a href="javascript:;" name="btn_prev_qno" onclick="getPrevQno()" title="이전 문제">◀ 이전 문제</a>
                    <a href="javascript:;" name="btn_next_qno" onclick="getNextQno()" class="next" title="다음 문제">다음 문제 ▶</a>
                </div>
                -->
                <!-- // 문제 버튼 -->
                <div class="tbl_wrap">
                    <table title="답안지 입력">
                        <colgroup>
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="5" style="letter-spacing: 0.3em;">답안지</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_1" class="end">
                                <th>1</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(1,1,this)" class="on"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(1,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(1,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(1,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_2">
                                <th>2</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(2,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(2,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(2,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(2,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_3">
                                <th>3</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(3,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(3,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(3,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(3,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_4">
                                <th>4</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(4,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(4,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(4,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(4,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_5">
                                <th>5</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(5,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(5,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(5,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(5,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_6">
                                <th>6</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(6,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(6,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(6,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(6,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_7">
                                <th>7</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(7,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(7,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(7,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(7,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_8">
                                <th>8</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(8,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(8,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(8,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(8,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_9">
                                <th>9</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(9,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(9,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(9,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(9,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_10">
                                <th>10</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(10,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(10,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(10,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(10,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_11">
                                <th>11</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(11,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(11,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(11,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(11,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_12">
                                <th>12</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(12,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(12,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(12,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(12,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_13">
                                <th>13</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(13,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(13,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(13,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(13,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_14">
                                <th>14</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(14,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(14,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(14,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(14,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_15">
                                <th>15</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(15,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(15,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(15,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(15,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_16">
                                <th>16</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(16,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(16,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(16,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(16,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_17">
                                <th>17</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(17,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(17,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(17,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(17,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_18">
                                <th>18</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(18,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(18,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(18,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(18,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_19">
                                <th>19</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(19,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(19,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(19,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(19,4,this)"><span>4</span></a></td>
                            </tr>
                            
                            <tr id="answer_20">
                                <th>20</th>
                                <td><a href="javascript:;" title="1" onclick="setAns(20,1,this)"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2" onclick="setAns(20,2,this)"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3" onclick="setAns(20,3,this)"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4" onclick="setAns(20,4,this)"><span>4</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>

                <a href="javascript:;" onclick="window.open('./mockexam/pop_answer.asp','winApply','width=650,height=900,location=no,status=no,scrollbars=yes');" class="answer_check" title="답안 제출">답안 제출</a>
            
            </div>
            <!-- // 답안지 E -->
        </div>
    </div>
</div></div>
<div class="code-box js">
</div>
<script>function setAns(s_cd,q_no,a_no,o) {
    <% if bExistsMemInfo = false then %>
    alert("관심직렬이 선택되지 않았습니다.");
    return false;
    <% end if %>
    $.post("./apply_proc.asp",{"mode":"set_ans","subj_cd":s_cd,"q_no":q_no,"a_no":a_no},function(data) {
        //$(o).addClass("on").parents().siblings().children("a").removeClass("on");

        if (data["msg"] != "") {
            alert(data["msg"]);
        }
        getAns();
    },"json");
}

function getAns() {
    $("tr[id^=answer]").removeClass("end");
    $("tr[id^=answer] > td > a").removeClass("on").removeClass("pass");
    $.post("./apply_proc.asp",{"mode":"get_ans"},function(data) {
        for(var i=0; i < data.data.length; i++) {
            var q_no = data.data[i]["q_no"];
            var a_no = data.data[i]["a_no"];
            var s_cd = data.data[i]["s_cd"];
            //console.log(data.data[i]["q_no"] +":"+ data.data[i]["a_no"])
            $("#answer_"+s_cd+"_"+q_no).addClass("end");

            $("#answer_"+s_cd+"_"+q_no+" > td > a[title="+a_no+"]").addClass("on")
        }

        setBtnFinalShow();
    },"json");
}</script>
<style></style>

<p class="page_text">메가공무원의 전국 모의고사 서비스 관련 페이지에서 사용되는 요소양식입니다. <br>
답안지의 숫자를 클릭하여 답안 마킹이 가능하며 풀이 종료 후 제출 버튼을 통해 작성한 답안을 제출할 수 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/mockexam/2022_1/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#답안제출</p> </li>
                            <li><p>#시험응시</p> </li>
                            <li><p>#모의고사응시</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">문항 분석</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div id="eventWrap" class="eventWrap">
    <div id="apply_score" class="apply_score on">
        <div class="inner on">
            <h4>
                <img src="<%=img_main%>/m/2021/1117_exam/anal_tit.png" alt="문항분석">
                <span>2022 대비 메가공무원 전국 모의고사</span>
            </h4>
            <h5>과목별 채점 결과</h5>
            <div class="tbl_wrap">
                <table title="과목별 채점 결과" class="bor">
                    <colgroup>
                        <col width="14.285%">
                        <col width="14.285%">
                        <col width="14.285%">
                        <col width="14.285%">
                        <col width="14.285%">
                        <col width="14.285%">
                        <col width="14.285%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="bor_le_none"></th>
                            <th scope="col">국어</th>
                            <th scope="col">영어</th>
                            <th scope="col">한국사</th>
                            <th scope="col">행정법<br class="mo_for">총론</th>
                            <th scope="col">행정학<br class="mo_for">개론</th>
                            <th scope="col" class="bor_ri_none">총</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" class="bor_le_none">맞은 <br class="mo_for">문항</th>
                            <td><span class="score">4</span>/20</td>
                            <td><span class="score">4</span>/20</td>
                            <td><span class="score">4</span>/20</td>
                            <td><span class="score">4</span>/20</td>
                            <td><span class="score">5</span>/20</td>
                            <td class="bor_ri_none"><span class="score">21</span>/100</td>
                        </tr>
                        <tr>
                            <th scope="row" class="bor_le_none">정답률</th>
                            <td>20%</td>
                            <td>20%</td>
                            <td>20%</td>
                            <td>20%</td>
                            <td>25%</td>
                            <td class="bor_ri_none">21%</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <h5>과목별 분석 결과</h5>
            <ul class="subject_select">
                <li><label for="subject_0"><input type="radio" id="subject_0" name="subject_check" value="10" checked="checked">국어</label></li>
                <li><label for="subject_1"><input type="radio" id="subject_1" name="subject_check" value="11">영어</label></li>
                <li><label for="subject_2"><input type="radio" id="subject_2" name="subject_check" value="12">한국사</label></li>
                <li><label for="subject_3"><input type="radio" id="subject_3" name="subject_check" value="13">행정법총론</label></li>
                <li><label for="subject_4"><input type="radio" id="subject_4" name="subject_check" value="14">행정학개론</label></li>
            </ul>
            <div class="result_tab on">
                <ul class="on">
                    <li class="on"><a href="javascript:;" onclick="getPart(1,this);" title="채점 결과">채점 결과</a></li>
                    <li><a href="javascript:;" onclick="getPart(2,this);" title="문항 난이도 분석">문항 난이도 분석</a></li>
                    <li><a href="javascript:;" onclick="getPart(3,this);" title="단원별 분석">단원별 분석</a></li>
                </ul>
            </div>
            <div class="result_cont"></div>
        </div>
    </div>
</div></div>

<script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
<script>function getPart(no,o) {
    <% if cdate(lo_now_date) < cdate(anal_detail_open_dt) then %>
    if (no == 2) {
        alert("문항 난이도 분석은 <%=month(anal_detail_open_dt)%>/<%=day(anal_detail_open_dt)%>(<%=fncWeekDay(anal_detail_open_dt)%>) 17시에 오픈됩니다.");
        return false;
    }
    <% end if %>
    var subj_cd = $("input[type=radio][name=subject_check]:checked").val();

    $(o).parents().addClass("on").siblings().removeClass("on");
    $.post("./mockexam/anal_qst_part_"+no+".asp",{"subj_cd":subj_cd},function(html) {
        $("div.result_cont").html(html);
    });
}

$(function() {
    $("div.result_tab a").eq(0).click();

    $("input[type=radio][name=subject_check]").on("click",function() {
        $("div.result_tab li.on > a").click()
    });
});
</script>

<p class="page_text">메가공무원의 전국 모의고사 서비스 관련 페이지에서 사용되는 요소양식입니다. <br>
사용자가 제출한 답안을 바탕으로 결과를 분석하여 다양한 정보를 제공합니다.<br><br>

<strong>채점 결과</strong> - 정오표와 함께 해당 문제를 바로 확인할 수 있도록 문항보기 기능을 제공하고 있습니다. 또한 해당 문제에 대한 평균 정답률이 표기됩니다.<br>
<strong>문항 난이도 분석</strong> - 문제의 난이도를 최상,상,중,하,최하 (5단계)로 구분하고 있습니다. 또한 다른 사용자들의 응시결과와 비교하여 사용자가 이익,손해를 본 문항과 점수내역을 제공합니다.<br>
<strong>단원별 분석</strong> - 사용자의 응시결과를 과목 단원별로 분석하고 점수 향상을 위한 향후 학습 방법을 제안하고 있습니다.<br> 또한 우측의 레이더 차트를 통해 다른 사용자들의 결과와 사용자 본인의 결과를 직관적으로 확인할 수 있도록 기능을 제공하고 있습니다.
</p>


<!-- Code View -->
<!--
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-html js act"></pre>
<pre class="language-javascript act"></pre>
-->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/mockexam/2022_1/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#분석</p> </li>
                            <li><p>#채점</p> </li>
                            <li><p>#정오표</p> </li>
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
    .eventWrap .exam_info{background-color:#ffffff;}
    .eventWrap.firbox {min-height:inherit;}
    .code-box {width:100%}
    .eventWrap .apply_score h5:before {display: inline-block;}
    .page_text strong {font-weight: 600;}
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->