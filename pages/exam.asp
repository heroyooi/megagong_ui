<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 3
dp2 = 2
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap page_wide page_exam" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
                <h3 class="page_name">EXAM</h3>
                <h3 class="page_name_sub">합격예측 진단평가</h3>
                <p class="page_sub_text">메가공무원에서 제공하고 있는 합격예측 진단평가 서비스의 UI 컴포넌트입니다.<br>
            SELECT BOX의 관심 시험 종목을 선택하여 저장하면 해당 시험 종목의 선발인원 및 경쟁률 정보를 제공 받을 수 있습니다.<br>
            또한 해당 종목에 대한 진단평가 응시 및 채점과 해설, 성적 대비 합격 가능한 별도의 시험 종목 추천 서비스 역시 제공하고 있어<br>
            온라인 환경에서도 언제든지 합격 케어 서비스를 받아볼 수 있습니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>


            <div class="page_text_wrap">
                <p class="page_head">관심직렬 팝업 - 관심직렬 저장 전</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="certifiPop1" class="certifi_pop">
        <div class="popinner">
            <div class="interest_pop interest_pop_1">
                <strong class="bb_tit">진단평가 시작 전 관심직렬을 선택해 주세요.</strong>
                <div class="gray_area_box">
                    <ul>
                        <li>진단평가를 응시하기 전, 관심있는 직렬을 선택해주세요. (기술직 제외)</li>
                        <li>국가직 9급 직렬 내에서만 관심 직렬 선택이 가능합니다.</li>
                    </ul>
                </div>
                <strong class="bg_b_tit">관심 직렬 선택</strong>
                <div class="itrt_area">
                    <div class="itrt_box itrt_box1">
                        <strong class="itrt_tit">■ 관심1</strong>
                        <table class="table_itrt">
                            <colgroup>
                                <col width="31%">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>시험</th>
                                    <td>국가직 9급</td>
                                </tr>
                                <tr>
                                    <th>직렬</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt1_part1" id="dpt1_part1">
                                                <option value="">직렬</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>직류</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt2_part1" id="dpt2_part1">
                                                <option value="">직류</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- //itrt_box -->
                    <div class="itrt_box itrt_box2">
                        <strong class="itrt_tit">■ 관심2</strong>
                        <table class="table_itrt">
                            <colgroup>
                                <col width="31%">
                                <col>
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>시험</th>
                                    <td>국가직 9급</td>
                                </tr>
                                <tr>
                                    <th>직렬</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt1_part2" id="dpt1_part2">
                                                <option value="">직렬</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>직류</th>
                                    <td>
                                        <span class="select_box">
                                            <select name="dpt2_part2" id="dpt2_part2">
                                                <option value="">직류</option>
                                            </select>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div> <!-- //itrt_box -->
                </div> <!-- //itrt_area -->
                <a href="javascript:;" class="btn" onclick="setMemInfoX();">저장하기</a> <!-- 관심직렬저장후 onclick="popview_fnc2();" -->
            </div>
        </div>
        <div class="bg" onclick="clearpop_fnc();"></div>
    </div>
    <div class="black_bg" style="">팝업 블랙 배경</div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">메가공무원 진단평가 페이지에서 주로 사용되는 기능입니다.<br> 
사용자는 해당 기능을 통하여 관심이 있는 직렬을 선택하고 정보를 저장할 수 있습니다.<br>
또한 그러한 정보를 바탕으로 해당 직렬의 선발인원과 경쟁률 정보를 제공하고 상세 합격예측을 위한 진단평가 기능을 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 진단평가--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격예측</p> </li>
                            <li><p>#직렬</p> </li>
                            <li><p>#진단평가</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">엠블램 모음</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html"><div class="amblem_set">
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110041.png" alt="고용노동부" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110061.png" alt="교육부" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110331.png" alt="중앙선거관리위원회" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010110541.png" alt="경찰청" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010120361.png" alt="국세청" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010320731.png" alt="행정안전부" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010330051.png" alt="관세청" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010340791.png" alt="통계청" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010350082.png" alt="법무부" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010370031.png" alt="검찰" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1000010400741.png" alt="국토교통부" />
    <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1011010110571.png" alt="KOREA POST" />
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">메가공무원 진단평가 페이지에서 주로 사용되는 이미지입니다.<br> 선택한 직렬 과목에 해당되는 국가기관 엠블램이 사용자에게 보이게 됩니다.</p>

<!-- Code View -->
<pre class="language-html act html"></pre>
<pre class="language-html act css"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 진단평가--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#이미지자료</p> </li>
                            <li><p>#엠블램</p> </li>
                            <li><p>#진단평가</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">합격예측 진단평가</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_start" class="apply_start">
        <div class="inner">
            <h4>메가공무원 기초학습 진단평가</h4>
            <ul class="question_info">
                <li>
                    진단평가는 <strong>1회만 응시</strong>할 수 있으며, 정확한 진단 결과를 얻기 위해서는 모르는 문항이라도 그냥 넘어가기보다 <strong>가급적 모든 문항을 푸는 것</strong>이 좋습니다.
                </li>
                <li>
                    실제 시험에서는 100문항 당 100분이 주어집니다. 따라서 본 진단평가에서는 <strong>과목당 5분 ~ 10분 이내에 문제 풀이 및 답안 작성을 완료</strong>하시길 바랍니다.
                </li>
                <li>모든 문항에 답안을 입력하여야 최종 제출이 가능합니다.</li>
            </ul>
            <div class="result_tab on">
                <ul class="on">
                    <li name="li_subj_cd_10" class="on"><a href="javascript:;" title="국어">국어</a></li>
                    <li name="li_subj_cd_11" class=""><a href="javascript:;" title="영어">영어</a></li>
                    <li name="li_subj_cd_12" class=""><a href="javascript:;" title="한국사">한국사</a></li>
                </ul>
            </div>

            <!-- 문제영역 S -->
            <div class="question_wrap">
                <div class="question_zone">
                    <div class="question">
                        <!-- 문제 이미지 -->
                        <div class="img_box">
                            <% '이미지 경로 :   /m/2022/0708_examinfo/q/  %>
                            <img src="<%=img_main%>/m/2022/0708_examinfo/q/q_10_1.png" alt="문제이미지" id="q_img" onclick="return false" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
                            <br/>
                        </div>
                        <!-- // 문제 이미지 -->
                    </div>

                    <!-- 과목 버튼 -->
                    <div class="btn_wrap subject">
                        <a href="javascript:;" name="btn_prev_subj" title="이전 문제">◀ 이전 문제</a>
                        <a href="javascript:;" name="btn_next_subj" class="next" title="다음 문제">다음 문제 ▶</a>
                    </div>
                    <!-- //과목 버튼 -->
                </div>
            </div>
            <!-- 문제영역 E -->

            <!-- 답안지 S -->
            <div class="answer_sheet">
                <div class="tbl_wrap">
                    <table title="답안지 입력">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="6">국어 답안지</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_10_1" class="">
                                <th>1</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_2" class="">
                                <th>2</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_3" class="">
                                <th>3</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_4" class="end">
                                <th>4</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a class="on" href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_10_5" class="">
                                <th>5</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <table title="답안지 입력">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="6">영어 답안지</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_11_1" class="end">
                                <th>1</th>
                                <td><a class="on" href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_2" class="end">
                                <th>2</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a class="on" href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_3" class="end">
                                <th>3</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a class="on" href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_4" class="">
                                <th>4</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_11_5" class="end">
                                <th>5</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a class="on" href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <table title="답안지 입력">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="6">한국사 답안지</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr id="answer_12_1" class="">
                                <th>1</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_2" class="">
                                <th>2</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_3" class="">
                                <th>3</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_4" class="">
                                <th>4</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                            <tr id="answer_12_5" class="">
                                <th>5</th>
                                <td><a href="javascript:;" title="1"><span>1</span></a></td>
                                <td><a href="javascript:;" title="2"><span>2</span></a></td>
                                <td><a href="javascript:;" title="3"><span>3</span></a></td>
                                <td><a href="javascript:;" title="4"><span>4</span></a></td>
                                <td><a href="javascript:;" title="5"><span class="last">모름</span></a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>

                <p class="tiny_txt">* 모든 답안을 입력하면 답안 제출이 가능합니다.</p>
                <a id="btn_final_apply" href="javascript:;" class="answer_check" title="답안 제출">답안 제출</a>
            </div>
            <!-- // 답안지 E -->
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">메가공무원 진단평가 페이지에서 사용되는 기초학습 진단 기능입니다.<br>
맛보기의 형식으로 국어, 영어, 한국사 한 과목당 5문항 씩, 총 15문항을 제공하며<br>
해당 진단평가의 결과를 바탕으로 현재 사용자의 학습 수준을 간편하게 진단하고 관련 정보를 제공해줍니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 진단평가--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#기초학습</p> </li>
                            <li><p>#맛보기</p> </li>
                            <li><p>#진단평가</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->
            







            <div class="page_text_wrap">
                <p class="page_head">채점결과</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_result" class="exam_info result on">
        <div class="new_basic_cont on">
            <div class="inner">
                <h5>채점결과</h5>
                <div class="result_tab on">
                    <ul class="on">
                        <li class="on"><a href="javascript:;" title="종합성적">종합성적</a></li>
                        <li><a href="javascript:;" title="국어">국어</a></li>
                        <li><a href="javascript:;" title="영어">영어</a></li>
                        <li><a href="javascript:;" title="한국사">한국사</a></li>
                    </ul>
                </div>
                <div class="tbl_wrap">
                    <div class="exm_tblpoint"><strong>정답률</strong> 예시 데이터입니다.</div>

                    <!-- 종합성적 성적표 S -->
                    <table title="종합성적 채점결과 예시" class="tb_scr" id="tb_scr_total">
                        <colgroup>
                            <col width="">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="7.333%">
                            <col width="">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">과목</th>
                                <th scope="col" colspan="2">1번</th>
                                <th scope="col" colspan="2">2번</th>
                                <th scope="col" colspan="2">3번</th>
                                <th scope="col" colspan="2">4번</th>
                                <th scope="col" colspan="2">5번</th>
                                <th scope="col">정답/전체</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>국어</th>
                                <td class="ans_X">X</td>
                                <td>86.7</td>
                                <td class="ans_X">X</td>
                                <td>95.5</td>
                                <td class="ans_X">X</td>
                                <td>88</td>
                                <td class="ans_X">X</td>
                                <td>92.9</td>
                                <td class="ans_X">X</td>
                                <td>88.1</td>
                                <td>0/5</td>
                            </tr>
                            <tr>
                                <th>영어</th>
                                <td class="ans_X">X</td>
                                <td>89</td>
                                <td class="ans_X">X</td>
                                <td>86.8</td>
                                <td class="ans_X">X</td>
                                <td>63.3</td>
                                <td class="ans_O">O</td>
                                <td>94.6</td>
                                <td class="ans_X">X</td>
                                <td>85.8</td>
                                <td>1/5</td>
                            </tr>
                            <tr>
                                <th>한국사</th>
                                
                                <td class="ans_X">X</td>
                                <td>86.5</td>
                                <td class="ans_X">X</td>
                                <td>85.6</td>
                                <td class="ans_O">O</td>
                                <td>88.1</td>
                                <td class="ans_X">X</td>
                                <td>89</td>
                                <td class="ans_X">X</td>
                                <td>87.9</td>
                                <td>1/5</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- // 종합성적 성적표 E -->

                    <!-- 과목별 성적표 S -->
                    <table title="국어 채점결과 예시" class="tb_scr" id="tb_scr_10" style="display: none;">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">1번</th>
                                <th scope="col">2번</th>
                                <th scope="col">3번</th>
                                <th scope="col">4번</th>
                                <th scope="col">5번</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>입력답안</th>
                                <td>5</td>
                                <td>5</td>
                                <td>5</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <th>정답</th>
                                <td class="ans_X">X(2)</td>
                                <td class="ans_X">X(3)</td>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(4)</td>
                                <td class="ans_X">X(1)</td>
                            </tr>
                            <tr>
                                <th>정답률(%)</th>
                                <td>86.7</td>
                                <td>95.5</td>
                                <td>88</td>
                                <td>92.9</td>
                                <td>88.1</td>
                            </tr>
                            <tr>
                                <th>문제 및 해설</th>
                                <td>
                                    <a onclick="showQst('10', '1')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3674, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '2')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3675, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '3')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3676, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '4')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3677, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('10', '5')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3678, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                        
                            </tr>
                        </tbody>
                    </table>
                            
                    <table title="영어 채점결과 예시" class="tb_scr" id="tb_scr_11" style="display: none;">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">1번</th>
                                <th scope="col">2번</th>
                                <th scope="col">3번</th>
                                <th scope="col">4번</th>
                                <th scope="col">5번</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>입력답안</th>
                                <td>3</td>
                                <td>1</td>
                                <td>3</td>
                                <td>3</td>
                                <td>5</td>
                            </tr>
                            <tr>
                                <th>정답</th>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(4)</td>
                                <td class="ans_X">X(2)</td>
                                <td class="ans_O">O</td>
                                <td class="ans_X">X(4)</td>
                            </tr>
                            <tr>
                                <th>정답률(%)</th>
                                <td>89</td>
                                <td>86.8</td>
                                <td>63.3</td>
                                <td>94.6</td>
                                <td>85.8</td>
                            </tr>
                            <tr>
                                <th>문제 및 해설</th>
                                <td>
                                    <a onclick="showQst('11', '1')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3684, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '2')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3685, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '3')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3686, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '4')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3687, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="showQst('11', '5')" href="javascript:;" id="" class="qst_view" title="문항 보기">문항 보기</a>
                                    <a onclick="javascript:GongcampusFreePlay('E',3688, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table title="한국사 채점결과 예시" class="tb_scr" id="tb_scr_12" style="display: none;">
                        <colgroup>
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                            <col width="16.666%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col">번호</th>
                                <th scope="col">1번</th>
                                <th scope="col">2번</th>
                                <th scope="col">3번</th>
                                <th scope="col">4번</th>
                                <th scope="col">5번</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>입력답안</th>
                                <td>3</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>5</td>
                            </tr>
                            <tr>
                                <th>정답</th>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(4)</td>
                                <td class="ans_O">O</td>
                                <td class="ans_X">X(1)</td>
                                <td class="ans_X">X(2)</td>
                            </tr>
                            <tr>
                                <th>정답률(%)</th>
                                <td>86.5</td>
                                <td>85.6</td>
                                <td>88.1</td>
                                <td>89</td>
                                <td>87.9</td>
                            </tr>
                            <tr>
                                <th>문제 및 해설</th>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3679, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3680, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3681, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3682, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                                <td>
                                    <a onclick="javascript:GongcampusFreePlay('E',3683, '', 0);" href="javascript:;" id="" class="qst_view" title="해설강의 보기"><img src="<%=img_main%>/m/2021/0819_basicexam/icon_1.png" alt=""></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- // 과목별 성적표 E -->
                    <p class="tiny_txt" style="text-align: left;opacity:0.5;">
                        * 정답률은 메가공무원 풀서비스 참여자 기준입니다.
                    </p>
                </div>
            </div>
        </div>
    </div>

    <!--  문제 이미지 팝업 -->
    <div id="questnPop" class="layerPopup questn_pop" style="display: none;">
        <span class="dimBg" onclick="">-</span>
        <div class="contentBox">
            <!-- <p class="tit">문제 및 해설</p> -->
            <div class="scroll_box">
                <div class="img_box">
                    <img src="<%=img_main%>/m/2021/0106_basicexam/exam_img/question_01_res.png" alt="문제이미지" id="q_img2" onclick="return false;" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
                </div>
            </div>
            <button onclick="" class="btnClose">팝업 닫기</button>
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<!-- JS -->
<script>$('#apply_result .result_tab li').on('click', function(e){
    e.preventDefault();
    $(this).addClass('on');
    $(this).siblings().removeClass('on');
    $('#apply_result .tbl_wrap').find('.tb_scr').hide();
    $('#apply_result .tbl_wrap').find('.tb_scr').eq($(this).index()).show();;
});

function showQst(subj_cd,qno) {
    var ts = new Date().getTime();
    src_no = qno;
    var src = "<%=img_main%>/m/2022/0708_examinfo/qa/qa_"+subj_cd+"_"+src_no+".png?now="+ts
    // console.log(src)
    
    $("#q_img2").prop("src",src);
    
    qst_popupOn();
    $('div.scroll_box').animate({scrollTop : 0}, 0);
}

function qst_popupOn(subj_nm) {
    if($("#questnPop").css("display") == "none"){
        $("#questnPop").show();
        //wrapWindowByMask();
        $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop").hide();
        $("body").unbind('touchmove');
    }
    return false;
}
(function() {
    $('#questnPop .btnClose').on('click', function (e) {
        e.preventDefault();
        $('#questnPop').hide().removeClass('on');
    });
    $('#questnPop .dimBg').on('click', function () {
        $('#questnPop .btnClose').trigger('click');
    });
})();
</script>

<p class="page_text">메가공무원 진단평가 페이지에서 사용되는 기초학습 진단 채점 결과입니다.<br> 국어, 영어, 한국사의 종합성적과 정답률 및 해설 영상 등을 제공하고 있습니다.<br> 해설 영상은 플레이 버튼을 누르면 Popup의 형식으로 나타나며 영상코드를 이용하여 변경할 수 있습니다. </p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 진단평가--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#채점</p> </li>
                            <li><p>#종합성적</p> </li>
                            <li><p>#해설</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">예상 성적 및 합격 가능 직렬</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_result" class="exam_info result on">
        <div class="new_basic_cont on">
            <div class="inner">
                <h5>예상 성적 및 합격 가능 직렬</h5>
                <div class="exm_point">2023 <br>예상 성적 <br>보기</div>
                <div class="exm_tblpoint"><strong>합격가능성</strong> 예시 데이터입니다.</div>
                <div class="tbl_wrap mb0">
                    <table title="2023 예상 성적표">
                        <colgroup>
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                            <col width="20%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="5">
                                    2023 예상 성적
                                    <span class="predict_score"><strong>68 점</strong> (100점 만점)</span>
                                </th>
                            </tr>
                            <tr>
                                <th scope="col">국어</th>
                                <th scope="col">영어</th>
                                <th scope="col">한국사</th>
                                <th scope="col">행정법총론</th>
                                <th scope="col">행정학개론</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>75</td>
                                <td>70</td>
                                <td>80</td>
                                <td>55</td>
                                <td>60</td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="tiny_txt gray">※ 2023 예상 성적은 메가공무원 수험생들의 수험 기간별 추적 관리한 성적의 변화를 분석해 도출한 결과입니다.</p>
                    <p class="tiny_txt gray">※ 본 자료는 참고로만 활용하시기 바랍니다.</p>
                </div>
                <!-- 예상 성적 및 합격 가능 직렬 E -->
                <!-- 관심 직렬 합격 가능 예측 S -->
                <div class="cont_atpt">
                    <h5 class="bg_tit"><span>홍길동</span>님의 관심 직렬 합격 가능 예측</h5>
                    <div class="interest_box interest_box1">
                        <h6><strong>관심1</strong> - 국가직 9급 일반행정-전국</h6>
                        <table>
                            <colgroup>
                                <col width="20%">
                                <col width="24%">
                                <col width="">
                                <col width="">
                                <col width="">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td rowspan="4">
                                        <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1011410110531.png" alt="">
                                    </td>
                                </tr>
                                <tr>
                                    <th>연도</th>
                                    <td><strong>2022</strong></td>
                                    <td><strong>2021</strong></td>
                                    <td><strong>합격가능성</strong></td>
                                </tr>
                                <tr>
                                    <th>선발인원(명)</th>
                                    <td>456</td>
                                    <td>416</td>
                                    <td rowspan="2">
                                        <span class="state st1">합격<br />가능</span>
                                        <!-- <span class="state st2">합격<br />도전</span> -->
                                    </td>
                                </tr>
                                <tr>
                                    <th>경쟁률(:1)</th>
                                    <td>93.92</td>
                                    <td>100.37</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="interest_box interest_box2">
                        <h6><strong>관심2</strong> - 국가직 9급 일반행정(우정)-서울</h6>
                        <table>
                            <colgroup>
                                <col width="20%">
                                <col width="24%">
                                <col width="">
                                <col width="">
                                <col width="">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td rowspan="4">
                                        <img src="<%=img_main%>/m/2022/0708_examinfo/amblem/1911-1011010110571.png" alt="">
                                    </td>
                                </tr>
                                <tr>
                                    <th>연도</th>
                                    <td><strong>2022</strong></td>
                                    <td><strong>2021</strong></td>
                                    <td><strong>합격가능성</strong></td>
                                </tr>
                                <tr>
                                    <th>선발인원(명)</th>
                                    <td>90</td>
                                    <td>26</td>
                                    <td rowspan="2">
                                        <span class="state st2">합격<br />도전</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>경쟁률(:1)</th>
                                    <td>20.47</td>
                                    <td>33.85</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div> <!-- // cont_atpt -->
                <div class="cont_atpt_explain">
                    <h5 class="bg_tit">직렬 정보 및 합격 가능 예측</h5>
                    <div>
                        2023년 국가직 공무원 <strong>시험 예상 성적은 <span class="cr_blue">68점</span>이며,</strong><br>
                        자신의 예상 성적을 바탕으로 하단의 리스트에서 직렬별 합격 가능성을 예측할 수 있습니다.
                        <br><br>
                        공부를 시작한지 얼마되지 않아 기초가 부족한 상황입니다.<br />
                        본 예상 성적은 응시자께서 공부를 열심히 하지 않고 시험에 응시했을 때 받게 되는 성적입니다.<br />
                        메가공무원이 제공하는 학습법을 토대로 열심히 공부하시면 어떤 직렬을 원하시더라도 합격하실 수 있으니, 목표를 잡고 열심히 공부하시기 바랍니다.
                    </div>
                </div> <!-- // cont_atpt_explain -->
                <!-- 관심 직렬 합격 가능 예측 E -->
            </div>
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<p class="page_text">메가공무원 진단평가 페이지에서 사용되는 기능입니다.<br> 
사용자가 응시한 진단평가의 결과를 토대로 실제 시험에서의 예상 성적을 제공하고 있습니다.<br> 
또한 예상 성적을 바탕으로 사용자가 희망하는 직렬의 합격 가능성을 ‘합격가능’과 ‘합격도전’으로 나누어 표기하여 주고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 진단평가--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격예측</p> </li>
                            <li><p>#예상성적</p> </li>
                            <li><p>#관심직렬</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">나의 관심 직렬</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html"><div class="eventWrap">
    <div id="apply_result" class="exam_info result on">
        <div class="new_basic_cont on">
            <div class="inner">
                <div class="item tm2">
                    <div class="itrt_series">
                        <strong class="series_tit"><img src="<%=img_main%>/m/2021/0709_basicexam/icon_i.png" alt=""> 나의 관심 직렬</strong>
                        <div class="series_w">
                            <span class="sample_ex">맛보기 문제</span>
                            <div class="series_table_w">
                                <table class="series_table">
                                    <colgroup class="mo_none">
                                        <col width="18%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="10%">
                                        <col width="28%">
                                        <col width="12%">
                                    </colgroup>
                                    <colgroup class="mo_block">
                                        <col width="18%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="8%">
                                        <col width="10%">
                                        <col width="28%">
                                        <col width="12%">
                                    </colgroup>
                                    <thead>
                                        <tr class="mo_none">
                                            <th rowspan="2">직렬<span class="mo_none">-지역</span></th>
                                            <th colspan="2">2022</th>
                                            <th colspan="3">2021</th>
                                            <th rowspan="2">전문과목</th>
                                            <th rowspan="2">합격 가능 예측</th>
                                        </tr>
                                        <tr>
                                            <th class="mo_block">직렬</th>
                                            <th class="mo_none">선발인원</th>
                                            <th class="mo_none">경쟁률(:1)</th>
                                            <th class="mo_none">선발인원</th>
                                            <th class="mo_none">경쟁률(:1)</th>
                                            <th>21년 합격선</th>
                                            <th class="mo_block">전문과목</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <tr class="challenge">
                                            <th>교육행정</th> 
                                            <td class="mo_none">71</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">51</td>  
                                            <td class="mo_none">282.24</td>    
                                            <td>411.84</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('교육학개론');">교육학개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="possibility">
                                            <th>출입국관리</th> 
                                            <td class="mo_none">17</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">28</td>  
                                            <td class="mo_none">144.46</td>    
                                            <td>403.66</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('국제법개론');">국제법개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">가능</span></td>
                                        </tr>
                                                
                                        <tr class="challenge good">
                                            <th>일반행정-전국</th> 
                                            <td class="mo_none">456</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">416</td>  
                                            <td class="mo_none">100.37</td>    
                                            <td>400.84</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정학개론');">행정학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>관세</th> 
                                            <td class="mo_none">38</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">55</td>  
                                            <td class="mo_none">51.56</td>    
                                            <td>400.09</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('관세법개론');">관세법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('회계원리');">회계원리</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>선거행정</th> 
                                            <td class="mo_none">60</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">60</td>  
                                            <td class="mo_none">20.52</td>    
                                            <td>396.75</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('공직선거법');">공직선거법</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>일반행정(경찰)</th> 
                                            <td class="mo_none">338</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">383</td>  
                                            <td class="mo_none">30.37</td>    
                                            <td>394.1</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정학개론');">행정학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="possibility">
                                            <th>통계</th> 
                                            <td class="mo_none">47</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">66</td>  
                                            <td class="mo_none">19.42</td>    
                                            <td>393.42</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('통계학개론');">통계학개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('경제학개론');">경제학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">가능</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>검찰</th> 
                                            <td class="mo_none">248</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">233</td>  
                                            <td class="mo_none">44.68</td>    
                                            <td>389.08</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('형법');">형법</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법');">형사소송법</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>일반행정(우정)-서울</th> 
                                            <td class="mo_none">90</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">26</td>  
                                            <td class="mo_none">33.85</td>    
                                            <td>388.18</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정학개론');">행정학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>고용노동</th> 
                                            <td class="mo_none">469</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">656</td>  
                                            <td class="mo_none">27.27</td>    
                                            <td>387.34</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('노동법개론');">노동법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>마약수사</th> 
                                            <td class="mo_none">19</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">15</td>  
                                            <td class="mo_none">52.73</td>    
                                            <td>382.14</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('형법');">형법</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법');">형사소송법</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>보호(여)</th> 
                                            <td class="mo_none">59</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">56</td>  
                                            <td class="mo_none">60.7</td>    
                                            <td>381.85</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법개론');">형사소송법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('사회복지학개론');">사회복지학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>일반행정(우정)-인천·경기</th> 
                                            <td class="mo_none">149</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">31</td>  
                                            <td class="mo_none">29.16</td>    
                                            <td>379.5</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('행정법총론');">행정법총론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('행정학개론');">행정학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge good">
                                            <th>세무</th> 
                                            <td class="mo_none">850</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">1,111</td>  
                                            <td class="mo_none">17.72</td>    
                                            <td>375.34</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('세법개론');">세법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('회계학');">회계학</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>철도경찰</th> 
                                            <td class="mo_none">19</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">18</td>  
                                            <td class="mo_none">44.78</td>    
                                            <td>372.56</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법개론');">형사소송법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('형법총론');">형법총론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>교정(여)</th> 
                                            <td class="mo_none">118</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">52</td>  
                                            <td class="mo_none">24.54</td>    
                                            <td>365.06</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('교정학개론');">교정학개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법개론');">형사소송법개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>보호(남)</th> 
                                            <td class="mo_none">137</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">131</td>  
                                            <td class="mo_none">18.85</td>    
                                            <td>364.62</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법개론');">형사소송법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('사회복지학개론');">사회복지학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>직업상담</th> 
                                            <td class="mo_none">125</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">180</td>  
                                            <td class="mo_none">17.81</td>    
                                            <td>361.72</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('노동법개론');">노동법개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('직업상담_심리학개론');">직업상담·심리학개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                        <tr class="challenge">
                                            <th>교정(남)</th> 
                                            <td class="mo_none">705</td>   
                                            <td class="mo_none">-</td>  
                                            <td class="mo_none">603</td>  
                                            <td class="mo_none">11.28</td>    
                                            <td>340.59</td>
                                            <td class="subject">
                                                <a href="javascript:;" onclick="qst_popupOn2('교정학개론');">교정학개론</a>
                                                <a href="javascript:;" onclick="qst_popupOn2('형사소송법개론');">형사소송법개론</a>
                                            </td>
                                            <td class="mo_none"><span class="result">도전</span></td>
                                        </tr>
                                                
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="pc_txt">
                            <p class="tiny_txt gray">※ 2021년 실제 합격선은 선택과목 및 조정점수를 적용한 점수입니다.</p>
                            <p class="tiny_txt gray">※ 본 기초학습 진단평가의 결과와 2023년 점수계산법을 반영하여 <span class="icon_cl">도전</span> <span class="icon_pb">가능</span> 으로 합격 가능성을 예측하였습니다.</p>
                            <p class="tiny_txt gray">※ 전문과목 맛보기를 클릭하여 각 과목의 예시문제를 확인할 수 있습니다. 예시 문제는 가장 정답률이 높은 기출 문제로 구성됩니다.</p>
                        </div>
                        <div class="mo_txt">
                            <p class="tiny_txt gray">※ 합격 도전권 <span class="bg_pink"></span> , 합격 가능권 <span class="bg_sky"></span></p>
                            <p class="tiny_txt gray">※ 본 기초학습 진단평가의 결과와 2023년 점수 계산법을 반영하여 합격 가능성을 예측하였습니다.</p>
                            <p class="tiny_txt gray">※ 2021년 실제 합격선은 선택과목 및 조정점수를 적용한 점수입니다.</p>
                            <p class="tiny_txt gray">※ 전문과목 맛보기를 클릭하여 각 과목의 예시문제를 확인할 수 있습니다. 예시 문제는 가장 정답률이 높은 기출 문제로 구성됩니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!--  나의관심직렬 문제 이미지 팝업 -->
    <div id="questnPop2" class="layerPopup questn_pop" style="display: none;">
        <span class="dimBg" onclick="">-</span>
        <div class="contentBox">
            <!-- <p class="tit">문제 및 해설</p> -->
            <div class="scroll_box">
                <div class="img_box">
                    <img src="<%=img_main%>/m/2021/0106_basicexam/exam_img/question_01_res.png" alt="문제이미지" id="sample_q_img" onclick="return false;" oncontextmenu="return false" style="-webkit-touch-callout:none;-webkit-user-select:none;-khtml-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none">
                </div>
            </div>
            <button onclick="" class="btnClose">팝업 닫기</button>
        </div>
    </div>
</div></div>
                
<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="/css/exam_style.css">
<link type="text/css" rel="stylesheet" href="/css/exam_style2.css">
<link type="text/css" rel="stylesheet" href="/css/exam_popup.css"></div>

<!-- JS -->
<script>//  팝업 띄우기
function qst_popupOn2(subj_nm) {
    var ts = new Date().getTime();
    var src = "<%=img_main%>/m/2022/0708_examinfo/sample_q/"+subj_nm+".png?now="+ts
    $("#sample_q_img").prop("src",src);
    
    if($("#questnPop2").css("display") == "none"){
        $("#questnPop2").show();
        //wrapWindowByMask();
        $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop2").hide();
        $("body").unbind('touchmove');
    }
    return false;
}
(function () {
    $('#questnPop2 .btnClose').on('click', function (e) {
        e.preventDefault();
        $('#questnPop2').hide().removeClass('on');
    });
    $('#questnPop2 .dimBg').on('click', function () {
        $('#questnPop2 .btnClose').trigger('click');
    });
})();
</script>

<p class="page_text">메가공무원 진단평가 페이지에서 사용되는 기능입니다.<br> 사용자의 예상점수를 바탕으로 직렬별 합격 가능 예측 및 해당 과목별 맛보기 문제를 제공하고 있습니다.<br> 사용자가 관심 직렬로 등록한 과목의 경우 #6a68ff 색상으로 별도 표시됩니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/exam/basic/gong_3/apply_start.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 진단평가--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격예측</p> </li>
                            <li><p>#표</p> </li>
                            <li><p>#관심직렬</p> </li>
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
    .page_wrap.page_exam .eventWrap{min-height:inherit;position:relative;padding:0;}
    .page_wrap.page_exam .certifi_pop{position:relative;}
    .page_wrap.page_exam .certifi_pop .bg{position:absolute;}
    .page_wrap.page_exam .black_bg{position:absolute;}
    .page_wrap.page_exam .eventWrap .inner{width:100%;}
    .page_wrap.page_exam .eventWrap .exam_info{padding:30px 0;}

    .page_wrap.page_exam .amblem_set{position:relative;left:-5px;text-align: center;}
    .page_wrap.page_exam .amblem_set img{width:95px;margin:5px;}

    .page_wrap.page_exam .eventWrap .tbl_wrap{overflow:inherit;max-height:inherit;}
    .page_wrap.page_exam .layerPopup{position: absolute;}
    .page_wrap.page_exam .certifi_pop .popinner{width:auto;}

    .interest_pop .btn:hover {color:#fff;}
    .eventWrap .layerPopup.questn_pop .scroll_box {max-height: 440px; }

    @media (max-width: 768px) {
        .eventWrap .layerPopup.questn_pop .contentBox .img_box { max-height: 45vw;}
    }
    </style>

<!-- #include virtual = "/inc/bottom.asp"-->