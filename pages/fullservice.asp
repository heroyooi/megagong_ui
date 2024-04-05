<!-- #include virtual = "/inc/top.asp"-->
<link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/fullsvc.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/full_main.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/style.css" />
<%
dp1 = 3
dp2 = 6
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    <div class="page_wrap page_wide page_fullserivce" id="page_wrap">

        <div class="page_inner">
            <div class="page_name_wrap">
              <h3 class="page_name">풀서비스</h3>
              <h3 class="page_name_sub">합격예측 풀서비스</h3>
              <p class="page_sub_text">메가공무원에서 제공하는 ‘합격예측 풀서비스’ 페이지 관련 UI 컴포넌트입니다. <br>실제 시험 응시 후 메가공무원 사이트에서 가채점을 진행할 경우,<br> 해당 가채점 데이터를 바탕으로 합격가능성 및 과락 예측 결과 정보를 제공합니다.</p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
            </div>

<pre class="language-html css"><code><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/fullsvc.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/full_main.css" />
<link type="text/css" rel="stylesheet" href="<%=url_main%>/s/gong/full/20221029/style.css" /></code></pre>

            <div class="page_text_wrap">
                <p class="page_head">풀서비스 메인</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html tp2"><div class="my_test_series">
    <div class="full_tit_wrp">
        <h4>나의 응시 직렬</h4>
    </div>
    <div class="full_tbl_wrap dim_on"> <!-- 테이블 딤 : class="dim_on" 추가 -->
        <div class="tbl_top">
            <div class="ex_score">
                <strong>2022 나의 예상 점수</strong>
                <span>0 점</span>
            </div>
            <a href="javascipt:;" onclick="tab4_act();return false;" class="go_link" title="합격가능성 바로가기">합격가능성 바로가기 ▶</a>
        </div>
    
        <div class="tbl_dim">
            <p>
                <span>채점 후 확인할 수 있습니다.</span>
            
                <!--<a href="./marking.asp?go=full_tab" title="채점하기">-->
                <a href="javascript:void(0);" title="채점하기">
            
                    채점하러 가기 →
                </a>
            </p>
        </div>
        <table class="gray_tbl all_center">
            <colgroup>
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
            </colgroup>
            <tbody>
                <tr>
                    <td rowspan="3">
                        <div class="img">
                        
                            <img src="https://img.megagong.net/new/mypage/amblem/2/2_11.png" alt="-">
                        
                        </div>
                    </td>
                    <th>응시직렬</th>
                    <td colspan="2" class="tal"> /  / </td>	
                    <th>합격<br class="br_mo">가능성</th>
                    <td>
                                                                    
                            <span class="tbl_icon1 analysis">분석중</span>
                        
                    </td>
                </tr>
                <tr>
                    <th>선발인원</th>
                    <th>출원인원</th>
                    <th>경쟁률</th>
                    <th>예상<br class="br_mo">응시인원</th>
                    <th>예상<br class="br_mo">필합인원</th>
                </tr>
                <tr>
                    <td>
                    &nbsp;
                    </td>
                    <td>
                    &nbsp;
                    </td>
                    <td>
                    &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>											
                </tr>
            </tbody>
        </table>

        <table class="gray_tbl all_center mt10">
            <colgroup>
                <col width="20%"><col width="20%"><col width="20%"><col width="20%"><col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th>석차</th>
                    <th>채점인원</th>
                    <th>최고점</th>
                    <th>상위 <br class="br_mo">10% 컷</th>
                    <th>상위 <br class="br_mo">30% 컷</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                    분석중
                    </td>
                    <td>
                    분석중
                    </td>
                    <td>
                    분석중
                    </td>											
                    <td>
                    분석중
                    </td>
                    <td>
                    분석중
                    </td>
                </tr>
            </tbody>
        </table>
        <!-- <p class="tbl_btm_txt tar">* 출원인원은 1차시험(PSAT) 합격인원 기준</p> -->
        <p class="tbl_btm_txt tar">
            * 최근 데이터 업데이트:
            
                10월 29일 10시 00분
            
        </p>
    </div>
</div>
<div class="my_test_series mt25">
    <div class="full_tit_wrp">
        <h4>나의 응시 직렬</h4>
    </div>
    <div class="full_tbl_wrap"> <!-- 테이블 딤 : class="dim_on" 추가 -->
        <div class="tbl_top">
            <div class="ex_score">
                <strong>2022 나의 예상 점수</strong>
                <span>
                0 점
                </span>
            </div>
            <a href="javascipt:;" onclick="tab4_act();return false;" class="go_link" title="합격가능성 바로가기">합격가능성 바로가기 ▶</a>
        </div>
    
        <div class="tbl_dim">
            <p>
                <span>채점 후 확인할 수 있습니다.</span>
            
                <a href="./scoring.asp?go=full_tab" title="내 성적표">
            
                    채점하러 가기 →
                </a>
            </p>
        </div>
        <table class="gray_tbl all_center">
            <colgroup>
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
                <col width="16.666%">
            </colgroup>
            <tbody>
                <tr>
                    <td rowspan="3">
                        <div class="img">
                        
                            <img src="<%=img_main%>/new/mypage/amblem/2/2_11.png" alt="-">
                        
                        </div>
                    </td>
                    <th>응시직렬</th>
                    <td colspan="2" class="tal">일반전형 / 일반행정 / 서울특별시-서울시</td>	
                    <th>합격<br class="br_mo">가능성</th>
                    <td>
                        <span class="tbl_icon1" style="background: #FF839F;">과락</span>
                        <span class="tbl_icon1" style="background: #FF839F;">평락</span>
                        <span class="tbl_icon1" style="background: #50C2FF;">확실</span>
                        <span class="tbl_icon1" style="background: #F6ACE6;">유력</span>
                        <span class="tbl_icon1" style="background: #99EFA8;">가능</span>
                        <span class="tbl_icon1" style="background: #FFD1A5;">불안</span>
                    </td>
                </tr>
                <tr>
                    <th>선발인원</th>
                    <th>출원인원</th>
                    <th>경쟁률</th>
                    <th>예상<br class="br_mo">응시인원</th>
                    <th>예상<br class="br_mo">필합인원</th>
                </tr>
                <tr>
                    <td>
                    194
                    </td>
                    <td>
                    13,049
                    </td>
                    <td>
                    67.26
                    </td>
                    <td>
                        11,614
                    </td>
                    <td>
                        233
                    </td>											
                </tr>
            </tbody>
        </table>

        <table class="gray_tbl all_center mt10">
            <colgroup>
                <col width="20%"><col width="20%"><col width="20%"><col width="20%"><col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th>석차</th>
                    <th>채점인원</th>
                    <th>최고점</th>
                    <th>상위 <br class="br_mo">10% 컷</th>
                    <th>상위 <br class="br_mo">30% 컷</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                    3
                    </td>
                    <td>
                    4
                    </td>
                    <td>
                    100
                    </td>											
                    <td>
                    100
                    </td>
                    <td>
                    100
                    </td>
                </tr>
            </tbody>
        </table>
        <!-- <p class="tbl_btm_txt tar">* 출원인원은 1차시험(PSAT) 합격인원 기준</p> -->
        <p class="tbl_btm_txt tar">
            * 최근 데이터 업데이트:
            10월 31일 23시 55분
            
        </p>
    </div>
</div>
<div class="my_test_series mt25">
    <div class="full_tit_wrp">
        <h4>인기 지역 Best 5 (일반전형 기준)</h4>
    </div>
    <div class="full_tbl_wrap<% If Tab3_Open_Yn = "N" Then %> dim_on<% End If %>" id="fullTbl1"> <!-- 테이블 딤 : class="dim_on" 추가 -->
        <div class="tbl_dim">
            <p>
                <span>집계중입니다.</span>
            </p>
        </div>
        <table class="gray_tbl all_center">
            <colgroup>
                <col width="11%">
                <col >
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
                <col width="10%">
            </colgroup>
            <thead>
                <tr>
                    <th>직류</th>
                    <th>지역</th>
                    <th>선발<br class="br_mo">인원</th>
                    <th>출원<br class="br_mo">인원</th>
                    <th>경쟁률</th>
                    <th>채점<br class="br_mo">인원</th>											
                    <th>최고점</th>
                    <th>상위<br class="br_mo">10% 컷</th>
                    <th>상위<br class="br_mo">30% 컷</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="bg_white">일반행정</th>
                    <td>서울특별시-서울시</td>
                    <td>194</td>
                    <td>13,049</td>
                    <td>67.26</td>
                    <td>871</td>
                    <td>98</td>
                    <td>89</td>
                    <td>84</td>
                </tr>
                <tr>
                    <th class="bg_white">일반행정</th>
                    <td>경기도-경기도</td>
                    <td>25</td>
                    <td>2,982</td>
                    <td>119.28</td>
                    <td>123</td>
                    <td>100</td>
                    <td>88</td>
                    <td>84</td>
                </tr>
                <tr>
                    <th class="bg_white">일반행정</th>
                    <td>부산광역시</td>
                    <td>15</td>
                    <td>1,980</td>
                    <td>132.00</td>
                    <td>88</td>
                    <td>95</td>
                    <td>90</td>
                    <td>81</td>
                </tr>
                <tr>
                    <th class="bg_white">일반행정</th>
                    <td>대구광역시</td>
                    <td>12</td>
                    <td>1,560</td>
                    <td>130.00</td>
                    <td>74</td>
                    <td>92</td>
                    <td>88</td>
                    <td>81</td>
                </tr>
                <tr>
                    <th class="bg_white">일반행정</th>
                    <td>전라남도-도일괄</td>
                    <td>46</td>
                    <td>1,251</td>
                    <td>27.20</td>
                    <td>65</td>
                    <td>92</td>
                    <td>87</td>
                    <td>81</td>
                </tr>
            </tbody>
        </table>
        <p class="tbl_btm_txt tar">- 최근 데이터 업데이트 : 10월 29일 10시 00분</p>
    </div>
</div>
<div class="totalbf_zone mt60">
    <div class="difficulty_view">
        <div class="full_tit_wrp">
            <h4 class="tt">과목별 성적 분포도</h4>
        </div>
        <div class="difficulty_grpwrp">
            <div class="totalbf_anno index" style="display:none">
                <p class="agn">
                    <strong class="loading">집계중입니다.</strong>
                    <span class="cr_deepBlue">15분마다 데이터가 업데이트됩니다.</span>
                    <i class="icon_loading">
                        <img src="<%=img_main%>/m/2022/0402_fullserv/loading.png" alt="로딩중">
                    </i>
                </p>
            </div>

            <div id="div_scr_distr">
                <div class="stk_grp">
                    <h5>주요 과목 성적 분포도(%)</h5>
                    <!-- 데이터 0일때 이미지 -->
                    <div class="data_none_img">
                        <img src="https://img.megagong.net/m/2022/1029_fullsrv/stk_grp_pc.png" alt="pc 데이터 0 이미지" class="pc">
                        <img src="https://img.megagong.net/m/2022/1029_fullsrv/stk_grp_mo.png" alt="mo 데이터 0 이미지" class="mo" style="margin:0 auto">
                    </div>
                    <div id="stkSlider1" class="stk_slider">
                        <div class="row_stk scrollx_box">
                            <div class="sg_inner"> <!-- 테이블 딤 : class="dim_on" 추가 -->
                                <!-- dim -->
                                <div class="tbl_dim">
                                    <p class="agn">
                                        <strong class="loading">집계중입니다.</strong>
                                        <i class="icon_loading">
                                            <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                        </i>
                                    </p>
                                </div> <!-- // dim -->
                                <strong class="tit">국어</strong>
                                <canvas id="divSubDistribution_req_1" style="width:316px;height:195px;"></canvas>
                            </div>
                            <div class="sg_inner dim_on"> <!-- 테이블 딤 : class="dim_on" 추가 -->
                                <!-- dim -->
                                <div class="tbl_dim">
                                    <p class="agn">
                                        <strong class="loading">집계중입니다.</strong>
                                        <i class="icon_loading">
                                            <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                        </i>
                                    </p>
                                </div> <!-- // dim -->
                                <strong class="tit">헌법</strong>
                                <canvas id="divSubDistribution_req_2" style="width:316px;height:195px;"></canvas>
                            </div>
                            <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                                <!-- dim -->
                                <div class="tbl_dim">
                                    <p class="agn">
                                        <strong class="loading">집계중입니다.</strong>
                                        <i class="icon_loading">
                                            <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                        </i>
                                    </p>
                                </div> <!-- // dim -->
                                <strong class="tit">행정법</strong>
                                <canvas id="divSubDistribution_req_3" style="width:316px;height:195px;"></canvas>
                            </div>
                            <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                                <!-- dim -->
                                <div class="tbl_dim">
                                    <p class="agn">
                                        <strong class="loading">집계중입니다.</strong>
                                        <i class="icon_loading">
                                            <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                        </i>
                                    </p>
                                </div> <!-- // dim -->
                                <strong class="tit">행정학</strong>
                                <canvas id="divSubDistribution_req_4" style="width:316px;height:195px;"></canvas>
                            </div>
                            <div class="sg_inner" > <!-- 테이블 딤 : class="dim_on" 추가 -->
                                <!-- dim -->
                                <div class="tbl_dim">
                                    <p class="agn">
                                        <strong class="loading">집계중입니다.</strong>
                                        <i class="icon_loading">
                                            <img src="https://img.megagong.net/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                        </i>
                                    </p>
                                </div> <!-- // dim -->
                                <strong class="tit">지방자치론</strong>
                                <canvas id="divSubDistribution_req_6" style="width:316px;height:195px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <p class="right_info mt10" id="p_scr_distr">※우측으로 이동시 응시직렬의 과목별 성적분포도를 확인할 수 있습니다.</p>
    </div>
</div>
<div class="totalbf_zone v2 mt60">
    <div class="level_view">
        <div class="tit_wrp">
            <div class="full_tit_wrp">
                <h4>과목별 오답률 및 체감 난이도</h4>
            </div>
            <select class="selct_sbj" onchange="chgLevelView(this);" id="sel_level_view">
                <option value="101">국어</option>
                <option value="102">헌법</option>
                <option value="103">행정법</option>
                <option value="104">행정학</option>
            </select>
        </div>
        <div class="level_zone">
            <!-- dim -->
            <div class="tbl_dim">
                <p class="agn">
                    <strong class="loading">집계중입니다.</strong>
                    <i class="icon_loading">
                        <img src="<%=img_main%>/m/2022/0402_fullserv/loading.png" alt="로딩중">
                    </i>
                </p>
            </div> <!-- // dim -->
            <div class="level_grpwrp">
                <div class="stk_grp">
                    <div class="sg_inner">
                        <div class="graph_tbl_w">
                            <h5>[ 오답률 Top 5 ]</h5>
                            <div class="full_tbl_wrap">
                                <div class="tbl_dim" style="display:none;">
                                    <p>
                                        <span>집계중입니다.</span>
                                        <i class="icon_loading">
                                            <img src="<%=img_main%>/m/2022/0402_fullserv/loading.png" alt="로딩중">
                                        </i>
                                    </p>
                                </div>
                                <table class="gray_tbl all_center mt10">
                                    <colgroup>
                                        <!-- 단일 책형인 경우 -->
                                        <col width="10%">
                                        <col width="26%">
                                        <col width="15%">
                                        <col width="12%">
                                        <col width="12%">
                                        <col width="12%">
                                        <col width="12%">

                                        <!-- 단일 책형 아닌 경우 -->
                                        <!-- <col width="16.6%">
                                        <col width="16.6%">
                                        <col width="16.6%">
                                        <col width="16.6%">
                                        <col width="16.6%">
                                        <col width="16.6%"> -->
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th rowspan="2">순서</th>
                                            <!-- 단일 책형인 경우 비노출 -->
                                            <th rowspan="2">문항</th>
                                            <!-- //단일 책형인 경우 비노출 -->
                                            <th rowspan="2">오답률</th>
                                            <th colspan="4">선지 선택 비율</th>
                                        </tr>
                                        <tr>
                                            <th>1</th>
                                            <th>2</th>
                                            <th>3</th>
                                            <th>4</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                        <tr>
                                            <th class="bg_white">1</th>
                                            <!-- 단일 책형인 경우 비노출-->
                                            <td>3번&nbsp;(18번)</td>
                                            <!-- //단일 책형인 경우 비노출-->
                                            <td>76%</td>
                                            <td>8%</td>
                                            <td>40%</td>
                                            <td class="bg_sky">28%</td>
                                            <td>24%</td>
                                        </tr>
                                        <tr>
                                            <th class="bg_white">2</th>
                                            <!-- 단일 책형인 경우 비노출-->
                                            <td>4번&nbsp;(17번)</td>
                                            <!-- //단일 책형인 경우 비노출-->
                                            <td>72%</td>
                                            <td>60%</td>
                                            <td>8%</td>
                                            <td>4%</td>
                                            <td class="bg_sky">28%</td>
                                        </tr>
                                        <tr>
                                            <th class="bg_white">3</th>
                                            <!-- 단일 책형인 경우 비노출-->
                                            <td>5번&nbsp;(16번)</td>
                                            <!-- //단일 책형인 경우 비노출-->
                                            <td>72%</td>
                                            <td class="bg_sky">36%</td>
                                            <td>20%</td>
                                            <td>20%</td>
                                            <td>24%</td>
                                        </tr>
                                        <tr>
                                            <th class="bg_white">4</th>
                                            <!-- 단일 책형인 경우 비노출-->
                                            <td>7번&nbsp;(14번)</td>
                                            <!-- //단일 책형인 경우 비노출-->
                                            <td>72%</td>
                                            <td>24%</td>
                                            <td>32%</td>
                                            <td class="bg_sky">28%</td>
                                            <td>16%</td>
                                        </tr>
                                        <tr>
                                            <th class="bg_white">5</th>
                                            <!-- 단일 책형인 경우 비노출-->
                                            <td>8번&nbsp;(13번)</td>
                                            <!-- //단일 책형인 경우 비노출-->
                                            <td>68%</td>
                                            <td>44%</td>
                                            <td>12%</td>
                                            <td>16%</td>
                                            <td class="bg_sky">28%</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <p class="right_info">※ 괄호 번호는 시험지 다형 기준입니다.</p>
                    </div>
                </div>
                <div class="circle_grp">
                    <div class="cg_inner" >
                        <h5>[ 체감 난이도 ]</h5>
                        <div style="width:100%;height:300px;" >
                            <canvas id="divSubSurv" style="width:100%;height:100%"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="info_txt_w">
            <p class="right_info abso_r">- 최근 데이터 업데이트 일시 : 10월 31일 23시 55분</p>
            <p class="left_info">· 오답률은 해당 과목을 응시한 회원들의 가채점 데이터를 활용해 작성합니다.</p>
            <p class="left_info" style="padding-top:5px">· 자세한 사항은 내 성적표에서 확인하실 수 있습니다.</p>
        </div>
    </div>
</div></div><!-- .code-box -->
<div class="code-box js"><script src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script></div>
<script>// 과목별 성적 분포도
var arrChartColor = ["#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b","#922d3b"]
var barChartOpt = {
    //responsive: true,
    legend: {
        position: 'top',
        display: false
    },
    title: {
        display: false,
        text: 'Chart.js Bar Chart'
    }
    ,scales:{
        yAxes:[{
            ticks:{
                //"beginAtZero":true
                min: 0,
                max: 50,
                stepSize: 10,
                callback: function(value,index,values) {
                    return value+'%';
                }
            }
        }]
    }
}

var barChartData_subj_1 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '국어',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [7.5,1.8,2.8,6.6,10.7,15.6,18.7,17.4,12,4.8,2.1]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_1').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_1,
    options: barChartOpt
});

var barChartData_subj_2 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '헌법',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [22.8,2.8,4.9,4.5,4.9,5.8,7.3,7.1,9.5,13.7,16.6]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_2').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_2,
    options: barChartOpt
});

var barChartData_subj_3 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '행정법',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [15.7,3.1,3.1,4.4,5.1,6,8.9,8.5,13.1,15.6,16.6]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_3').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_3,
    options: barChartOpt
});

var barChartData_subj_4 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '행정학',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [11.1,3.5,3.4,5.4,8.2,10.3,12.9,15.8,15.5,10.2,3.8]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_4').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_4,
    options: barChartOpt
});

var barChartData_subj_6 = {
    labels: ['50미만','50~55','55~60','60~65','65~70','70~75','75~80','80~85','85~90','90~95','95이상'],
    datasets: [
        {
            label: '지방자치론',
            backgroundColor: arrChartColor,
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 12,
            data: [20.7,4.2,5,5.4,5.3,6.2,7.1,8.5,11.4,12.3,13.9]
        }
    ]
};
new Chart(document.getElementById('divSubDistribution_req_6').getContext('2d'), {
    type: 'bar',
    data: barChartData_subj_6,
    options: barChartOpt
});

// 체감 난이도
var HbarChartData = {
    labels: ['매우쉬움','쉬움','보통','어려움','매우어려움']
    ,datasets: [
        {
            //backgroundColor: ["#7b2c18","#7b2c18","#7b2c18","#7b2c18","#7b2c18"],
            // backgroundColor: ["#c6da55","#81ac2f","#cbb25b","#fc552c","#7b2c18"],
            backgroundColor: ["#922d3b","#922d3b","#922d3b","#922d3b","#922d3b"],
            //borderColor: ["rgb(255, 99, 132)","rgb(255, 159, 64)","rgb(255, 205, 86)"],
            borderWidth: 1,
            barThickness: 25,
            data: [36,28,8,16,12]
        }
    ]
    
};
var HbarChartOpt = {
    responsive: true,
    legend: {
        position: 'right',
        display: false
    },
    title: {
        display: false,
        text: 'Chart.js Bar Chart'
    }
    ,tooltips: {
        callbacks: {
            label: function(tti,data) {
                return data["datasets"][0]["data"][tti["index"]]+"%"
            }
        }
    }
    ,scales:{
        xAxes:[{
            ticks:{
                //"beginAtZero":true
                min: 0,
                max: 60,
                stepSize: 10,
                callback: function(value,index,values) {
                    return value+'%';
                }
            }
        }]
    }
}
new Chart(document.getElementById('divSubSurv').getContext('2d'), {
    type: 'horizontalBar',
    data: HbarChartData,
    options: HbarChartOpt
});
</script>

<p class="page_text">풀서비스의 메인 페이지에서 활용되는 요소입니다.<br> 
사용자들이 입력한 가채점 데이터들을 바탕으로 합격가능성, 성적 분포도, 체감 난이도 등 다양한 정보를 표, 차트 등의 방법으로 제공해줍니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html js act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 풀서비스--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#응시직렬</p> </li>
                            <li><p>#성적분포도</p> </li>
                            <li><p>#오답률</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">채점하기</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->

<div class="code-box html tp2"><section id="f_tabCon"class="full_tabcon">
    <h3 class="blindw">풀서비스 탭 컨텐츠</h3>
    <!-- '채점 및 성적분석' -->
    <div class="ftabcon_inner fscoring">
        <div class="testinfo_cautn">
            <dl>
                <dt class="blindw">유의사항</dt>
                <dd>채점하기 : 일반행정, 지방세, 일반토목, 건축 제공.  합격가능성 : 행정직군만 서비스 제공됩니다.</dd>
                <dd>정확한 결과를 위해 정답률 및 합격선은 채점 데이터 분석 후 오픈합니다.</dd>
            </dl>
        </div>
        
        <!-- 응시 정보 입력 영역 -->
        <div class="testinfo_view bmb60">
            <div class="tit_wrp">
                <h4>
                    응시 정보 입력
                    <!-- 응시 정보 확인 -->
                    <span class="t_info">
                        ※ 응시 정보는 1회만 수정이 가능합니다.
                    </span>
                </h4>
            </div>

            <!-- 응시 정보 입력란 /  입력 후 class="tble_wrp write_on"-->
            <div class="testinfo_write">
                <div class="tble_wrp">
                    <table class="fbasic_tbl">
                        <caption>응시 정보 입력</caption>
                        <colgroup>
                            <col style="width: 20%">
                            <col style="width: 22%">
                            <col style="width: 10%">
                            <col style="width: 16%">
                            <col style="width: 16%">
                            <col style="width: 16%">
                        </colgroup>

                        <tr>
                            <th>이름</th>
                            <td colspan="2">											
                                <input type="text" id="mem_name" name="mem_name" value="홍길동" maxlength="8" class="w100" />
                            </td>
                            <th>성별</th>
                            <td colspan="2">
                                <label style="margin-right:15px"><input type="radio" name="mem_sex" value="1" checked=""><span> 남</span></label>
                                <label><input type="radio" name="mem_sex" value="2" /><span> 여</span></label>
                            </td>
                        </tr>									
                        <tr>
                            <th>전형/직렬/지역</th>
                            <td colspan="5" class="m_serial">
                            
                                <label for="exam_apptype">전형</label>
                                <select id="exam_apptype" name="exam_apptype" class="w140"><option value="">전형</option><option value="1" selected="">일반전형</option><option value="2">장애인</option></select>

                                <label for="">직렬</label>
                                <select id="exam_dpt2" name="exam_dpt2" class="w140"><option value="">직렬</option><option value="053" selected="">일반행정</option><option value="071">지방세</option><option value="051">일반토목</option><option value="002">건축</option></select>

                                <label for="">지역1</label>
                                <select id="exam_sido" name="exam_sido" class="w140"><option value="">지역1</option><option value="11" selected="">서울특별시</option><option value="26">부산광역시</option><option value="27">대구광역시</option><option value="28">인천광역시</option><option value="29">광주광역시</option><option value="30">대전광역시</option><option value="31">울산광역시</option><option value="36">세종특별자치시</option><option value="41">경기도</option><option value="42">강원도</option><option value="43">충청북도</option><option value="44">충청남도</option><option value="45">전라북도</option><option value="46">전라남도</option><option value="47">경상북도</option><option value="48">경상남도</option></select>			
                                
                                <label for="">지역2</label>
                                <select id="exam_sigungu" name="exam_sigungu" class="w140"><option value="000" selected="">서울시</option><option value="901">지방의회</option></select>

                            </td>
                        </tr>
                        <tr>
                            <th>수험<br class="br_mb">번호</th>
                            <td colspan="5" class="m_number">
                                <label for="app_no">수험번호</label>
                                <input type="text" id="app_no" name="app_no" value="10000001" maxlength="9"  onkeyup="fncNumChk2(this);"/>
                                <span class="smll_info" style="display:block;padding:5px 0">
                                    <span>※ 수험번호는 반드시 숫자만 입력해주세요.</span>
                                    ※ 수험번호를 정확히 입력하지 않으실 경우, 서비스 이용에 제한이 있을 수 있습니다.
                                </span>
                                
                            <%'	if fncCheckOfficeIp() = true then  %>
                                <input type="text" name="min_app_no" id="min_app_no" value="10000001" />
                                <input type="text" name="max_app_no" id="max_app_no" value="10013049"  />
                            <%'  Else %>
                                <input type="hidden" name="min_app_no" id="min_app_no"><input type="hidden"  name="max_app_no" id="max_app_no">
                            <%' End If %>
                            </td>
                        </tr>
                        <tr>
                            <th>시험지 <br class="br_mb">유형</th>
                            <td colspan="5" id="td_exam_gbn">
                                <label style="margin-right:15px"><input type="radio" name="exam_gbn" value="1" checked><span> 가형</span></label>
                                <label><input type="radio" name="exam_gbn" value="2"><span> 다형</span></label>
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="2">응시<br class="br_mb">과목</th>
                            <td class="tC"><b>필수과목</b></td>
                            <!-- <td colspan="4" id="td_subj_req">직렬을 선택하세요.</td> -->
                            <td colspan="4" id="td_subj_req">국어, 헌법, 행정법, 행정학</td>
                        </tr>
                        <tr>
                            <td class="tC"><b>선택과목</b></td>
                            <td class="m_serial " colspan="4">
                                <label for="subj_sel_1">선택과목</label>
                                <select id="subj_sel_1" name="subj_sel_1" class="w170"><option value="">선택과목</option><option value="106">지방자치론</option><option value="105" selected="">경제학원론</option><option value="107">지역개발론</option></select>

                                <input type="hidden" name="subj_choice_flg" id="subj_choice_flg">
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="2">가산점</th>
                            <td class="tL"><b>취업지원대상자 및 <br class="br_mb">의사상자 등</b></td>
                            <td colspan="2" class="m_addpoint">
                                <label><input type="radio" name="addscore_emp_support" value="0" checked/><span> 없음</span></label>											
                                <label><input type="radio" name="addscore_emp_support" value="3" /><span> 3%</span></label>
                                <label><input type="radio" name="addscore_emp_support" value="5" /><span> 5%</span></label>
                                <label><input type="radio" name="addscore_emp_support" value="10" /><span> 10%</span></label>
                            </td>
                            <td colspan="2" class="txt_td" style="font-size:13px;text-align:center;">취업지원대상자와 의사상자 중<br class="br_pc">본인에게 유리한 것 하나만 입력</td>
                        </tr>
                        <tr id="tr_addscore_common_license">
                            <td class="tL"><b>직렬별 자격증</b></td>
                            <td colspan="4" class="m_addpoint">
                                <label><input type="radio" name="addscore_common_license" value="0" checked/><span> 없음</span></label>
                                <label><input type="radio" name="addscore_common_license" value="3" /><span> 3%</span></label>											
                                <label><input type="radio" name="addscore_common_license" value="5" /><span> 5%</span></label>
                            </td>
                        </tr>
                        <tr>
                            <th>수험기간</th>
                            <td colspan="2" class="m_serial">
                                <label for="exam_period">수험기간</label>
                                <select name="exam_period" id="exam_period" class="w170">
                                    <option value="">수험기간</option>
                                    <option value="1" selected>6개월 미만</option>
                                    <option value="2">6개월~1년</option>
                                    <option value="3">1년~1년 6개월</option>
                                    <option value="4">1년 6개월~2년</option>
                                    <option value="5">2년~2년 6개월</option>
                                    <option value="6">2년 6개월~3년</option>
                                    <option value="7">3년 이상</option>
                                </select>
                        
                            </td>
                            
                            <th>일 평균 학습시간</th>
                            <td class="m_serial" colspan="2">
                                <label for="average_hour">일 평균 학습시간</label>
                                <select name="average_hour" id="average_hour" class="w170">
                                    <option value="">일 평균 학습시간</option>
                                    <option value="1" selected>4시간 이하</option>
                                    <option value="2">4시간~6시간</option>
                                    <option value="3">6시간~8시간</option>
                                    <option value="4">8시간~10시간</option>
                                    <option value="5">10시간 이상</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>수험생활</th>
                            <td class="m_serial" colspan="2">
                                <label for="job">수험생활</label>
                                <select name="exam_job" id="exam_job" class="w170">
                                    <option value="">수험생활</option>
                                    <option value="1" selected>전업 수험생</option>
                                    <option value="2">아르바이트 병행</option>
                                    <option value="3">직장인</option>
                                    <option value="4">대학생</option>
                                    <option value="5">육아병행</option>
                                    <option value="6">기타</option>
                                </select>
                            </td>

                            <th>공부방법</th>
                            <td class="m_serial" colspan="2">
                                <label for="how_study">공부방법</label>
                                <select name="how_study" id="how_study" class="w170">
                                    <option value="">공부방법</option>
                                    <option value="1" selected>독학</option>
                                    <option value="2">인터넷 강의</option>
                                    <option value="3">학원</option>
                                    <option value="4">관리형 독서실</option>
                                    <option value="5">스터디 그룹</option>
                                    <option value="5">기타</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!-- 개인정보 수집 이용동의 영역 -->
            <div class="priva_agree">
                <ol>
                    <li>
                        <strong>1. 개인정보 수집 이용 목적</strong>
                        <span>- 합격예측 풀서비스 성적분석 통계 및 마케팅 등에 활용, 이벤트 안내 SMS 발송</span>
                    </li>
                    <li>
                        <strong>2. 개인정보 수집 항목 및 보유 기간</strong>
                        <span>- 이름, 성별, 전형/직렬/지역, 수험번호, 시험지유형, 응시과목, 가산점, 수험기간, 일 평균 학습시간, 수험생활, 공부방법, 회원가입 시 입력한 휴대폰 번호</span>
                        <span>- 합격예측 풀서비스 성적분석이 종료된 후 2년까지 보유합니다. (단, 회원가입 시 입력한 정보는 회원가입 시 동의한 기간에 따름)</span>
                    </li>
                    <li>
                        <strong>3. 개인정보제공 동의거부 권리 및 동의거부에 따른 불이익</strong>
                        <span>- 귀하는 개인정보 제공 동의를 거부할 수 있으며 동의 거부에 따른 불이익은 없으나 위 제공사항은 풀서비스에 반드시 필요한 사항으로, 거부하실 경우 해당 서비스 이용이 불가함을 안내드립니다. </span>
                    </li>
                </ol>
            </div>
            <p class="priagree_btnwrp bttn_wrp mt20">
                <label><input type="checkbox" id="agree_yn" name="agree_yn" value="Y"/> <strong>(필수)</strong> 합격예측 풀서비스 이용을 위한 개인정보 수집 및 이용에 동의합니다.</label> 
                <button onclick="procStdInfo();" title="응시 정보 저장"><span>응시 정보 저장</span></button>
            </p>
            <!-- // 개인정보 수집 이용동의 영역 -->
        </div>
        <!-- // 응시 정보 입력 영역 -->
        <!-- 빠른 채점하기 -->
        <div class="fstscoring_wrp">
            <% if 1=2 then%>
            <!-- <div class="totalbf_anno" style="display:block">
                <strong class="loading">응시정보 입력 후 채점할 수 있습니다.</strong>
            </div> -->
            <%end if %>
            <div class="tit_wrp">
                <h4>채점하기
                    <span class="t_info">
                        * 답안 입력은 최대 1회 수정 가능합니다.
                    </span>
                </h4>
            </div>
            <!-- 빠른채점 표 -->
            <div class="full_tbl_wrap dim_on"> <!-- 테이블 딤 : class="dim_on" 추가 -->
                <div class="tbl_dim">
                    <p>
                        <span class="cr_deepBlue" style="color:#5997ff">응시정보 입력 후 채점할 수 있습니다.</span>
                        <span class="icon_smile">
                            <img src="<%=img_main%>/m/2022/0402_fullserv/icon_smile.png" alt="^^">
                        </span>
                    </p>
                </div>
                <form>						
                    <div class="fstscoring_tit">
                        <h5>국어</h5>
                        <dl>
                            <dt>체감 난이도 </dt>
                            <dd>
                                <label><input type="radio" name="lev1" value="" tabindex="">매우쉬움</label>
                                <label><input type="radio" name="lev1" value="" tabindex="">쉬움</label>
                                <label><input type="radio" name="lev1" value="" tabindex="">보통</label>
                                <label><input type="radio" name="lev1" value="" tabindex="">어려움</label>
                                <label><input type="radio" name="lev1" value="" tabindex="" checked="">매우어려움</label>
                            </dd>
                        </dl>
                    </div>
                    <div class="divtbl_wrp">
                        <div class="dv_row">
                            <div class="tit">번호</div>
                            <div class="num_box">
                                <label for="">1</label>
                                <label for="">2</label>
                                <label for="">3</label>
                                <label for="">4</label>
                                <label for="">5</label>
                            </div>
                            <div class="num_box">
                                <label for="">6</label>
                                <label for="">7</label>
                                <label for="">8</label>
                                <label for="">9</label>
                                <label for="">10</label>
                            </div>
                            <div class="num_box">
                                <label for="">11</label>
                                <label for="">12</label>
                                <label for="">13</label>
                                <label for="">14</label>
                                <label for="">15</label>
                            </div>
                            <div class="num_box">
                                <label for="">16</label>
                                <label for="">17</label>
                                <label for="">18</label>
                                <label for="">19</label>
                                <label for="">20</label>
                            </div>
                        </div>
                        <div class="dv_row">
                            <div class="tit" style="background-color:#fff">답안</div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>											
                        </div>
                        
                    </div>
                    
                    <div class="fstscoring_tit">
                        <h5>경제학원론</h5>
                        <dl>
                            <dt>체감 난이도 </dt>
                            <dd>
                                <label><input type="radio" name="lev2" value="" tabindex="">매우쉬움</label>
                                <label><input type="radio" name="lev2" value="" tabindex="">쉬움</label>
                                <label><input type="radio" name="lev2" value="" tabindex="">보통</label>
                                <label><input type="radio" name="lev2" value="" tabindex="">어려움</label>
                                <label><input type="radio" name="lev2" value="" tabindex="" checked="">매우어려움</label>
                            </dd>
                        </dl>
                    </div>

                    <div class="divtbl_wrp">
                        <div class="dv_row">
                            <div class="tit">번호</div>
                            <div class="num_box">
                                <label for="">1</label>
                                <label for="">2</label>
                                <label for="">3</label>
                                <label for="">4</label>
                                <label for="">5</label>
                            </div>
                            <div class="num_box">
                                <label for="">6</label>
                                <label for="">7</label>
                                <label for="">8</label>
                                <label for="">9</label>
                                <label for="">10</label>
                            </div>
                            <div class="num_box">
                                <label for="">11</label>
                                <label for="">12</label>
                                <label for="">13</label>
                                <label for="">14</label>
                                <label for="">15</label>
                            </div>
                            <div class="num_box">
                                <label for="">16</label>
                                <label for="">17</label>
                                <label for="">18</label>
                                <label for="">19</label>
                                <label for="">20</label>
                            </div>												
                        </div>
                        
                        <div class="dv_row">
                            <div class="tit" style="background-color:#fff">답안</div>
                            
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>											
                        </div>
                    </div>													
                </form>
                <p class="left_info">※ 허위 데이터, 불성실 데이터는 데이터 삭제 및 서비스 이용에 제한이 있을 수 있습니다.</p>

                <!-- 20210902추가 -->
                <p class="priagree_btnwrp bttn_wrp">
                    <button title="채점 정보 저장"><span>채점 정보 저장</span></button>
                </p> <!-- // 20210902추가 -->
            </div>
            <!-- 빠른채점 표 -->

            <div class="tit_wrp mt25">
                <h4>채점하기
                    <span class="t_info">
                        * 답안 입력은 최대 1회 수정 가능합니다.
                    </span>
                </h4>
            </div>
            <!-- 빠른채점 표 -->
            <div class="full_tbl_wrap">
                <div class="tbl_dim">
                    <p>
                        <span class="cr_deepBlue" style="color:#5997ff">응시정보 입력 후 채점할 수 있습니다.</span>
                        <span class="icon_smile">
                            <img src="<%=img_main%>/m/2022/0402_fullserv/icon_smile.png" alt="^^">
                        </span>
                    </p>
                </div>
                <form>						
                    <div class="fstscoring_tit">
                        <h5>국어</h5>
                        <dl>
                            <dt>체감 난이도 </dt>
                            <dd>
                                <label><input type="radio" name="lev3" value="" tabindex="">매우쉬움</label>
                                <label><input type="radio" name="lev3" value="" tabindex="">쉬움</label>
                                <label><input type="radio" name="lev3" value="" tabindex="">보통</label>
                                <label><input type="radio" name="lev3" value="" tabindex="">어려움</label>
                                <label><input type="radio" name="lev3" value="" tabindex="" checked="">매우어려움</label>
                            </dd>
                        </dl>
                    </div>
                    <div class="divtbl_wrp">
                        <div class="dv_row">
                            <div class="tit">번호</div>
                            <div class="num_box">
                                <label for="">1</label>
                                <label for="">2</label>
                                <label for="">3</label>
                                <label for="">4</label>
                                <label for="">5</label>
                            </div>
                            <div class="num_box">
                                <label for="">6</label>
                                <label for="">7</label>
                                <label for="">8</label>
                                <label for="">9</label>
                                <label for="">10</label>
                            </div>
                            <div class="num_box">
                                <label for="">11</label>
                                <label for="">12</label>
                                <label for="">13</label>
                                <label for="">14</label>
                                <label for="">15</label>
                            </div>
                            <div class="num_box">
                                <label for="">16</label>
                                <label for="">17</label>
                                <label for="">18</label>
                                <label for="">19</label>
                                <label for="">20</label>
                            </div>
                        </div>
                        <div class="dv_row">
                            <div class="tit" style="background-color:#fff">답안</div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>											
                        </div>
                        
                    </div>
                    
                    <div class="fstscoring_tit">
                        <h5>경제학원론</h5>
                        <dl>
                            <dt>체감 난이도 </dt>
                            <dd>
                                <label><input type="radio" name="lev4" value="" tabindex="">매우쉬움</label>
                                <label><input type="radio" name="lev4" value="" tabindex="">쉬움</label>
                                <label><input type="radio" name="lev4" value="" tabindex="">보통</label>
                                <label><input type="radio" name="lev4" value="" tabindex="">어려움</label>
                                <label><input type="radio" name="lev4" value="" tabindex="" checked="">매우어려움</label>
                            </dd>
                        </dl>
                    </div>

                    <div class="divtbl_wrp">
                        <div class="dv_row">
                            <div class="tit">번호</div>
                            <div class="num_box">
                                <label for="">1</label>
                                <label for="">2</label>
                                <label for="">3</label>
                                <label for="">4</label>
                                <label for="">5</label>
                            </div>
                            <div class="num_box">
                                <label for="">6</label>
                                <label for="">7</label>
                                <label for="">8</label>
                                <label for="">9</label>
                                <label for="">10</label>
                            </div>
                            <div class="num_box">
                                <label for="">11</label>
                                <label for="">12</label>
                                <label for="">13</label>
                                <label for="">14</label>
                                <label for="">15</label>
                            </div>
                            <div class="num_box">
                                <label for="">16</label>
                                <label for="">17</label>
                                <label for="">18</label>
                                <label for="">19</label>
                                <label for="">20</label>
                            </div>												
                        </div>
                        
                        <div class="dv_row">
                            <div class="tit" style="background-color:#fff">답안</div>
                            
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>
                            <div class="inp_box">
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                                <span><input type="text" /></span>
                            </div>											
                        </div>
                    </div>													
                </form>
                <p class="left_info">※ 허위 데이터, 불성실 데이터는 데이터 삭제 및 서비스 이용에 제한이 있을 수 있습니다.</p>

                <!-- 20210902추가 -->
                <p class="priagree_btnwrp bttn_wrp">
                    <button title="채점 정보 저장"><span>채점 정보 저장</span></button>
                </p> <!-- // 20210902추가 -->
            </div>
            <!-- 빠른채점 표 -->
        </div>
        <!-- // 빠른 채점하기 -->
    </div>
    <!-- // '채점 및 성적분석' -->
</section></div>

<p class="page_text">풀서비스의 메인 페이지에서 활용되는 요소입니다.<br> 응시 정보를 입력한 이후, 채점 기능을 이용할 수 있으며 응시 정보 입력 전까지는 딤드(Dimmed) 처리로 사용자의 답안 입력을 방지합니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 풀서비스--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#채점</p> </li>
                            <li><p>#응시정보</p> </li>
                            <li><p>#정보입력</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
                <p class="page_head">내 성적표</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->

<div class="code-box html tp2"><section id="f_tabCon"class="full_tabcon">
    <h3 class="blindw">풀서비스 탭 컨텐츠</h3>
    <!-- '채점 및 성적분석' -->
    <div class="ftabcon_inner fscoring step3">
        <!-- 예상 성적표 -->
        <div class="totalbf_zone">
            <div class="myscore_preview bmb60">
                <div class="tit_wrp">
                    <h4>내 성적표</h4>
                </div>
                <div class="tble_wrp" id="fullTbl2">
                    <!-- 내 예상 성적표 블랙팝업 / 집계 후 display:none 처리-->
                    <% 'exam_qst_ready=false '퍼블 테스트용 %>
                    <div class="totalbf_anno" style="display:none">
                        <strong>집계중입니다.</strong>
                    </div>
                    <!-- // 내 예상 성적표 블랙팝업-->
                    <table class="fbasic_tbl">
                        <caption>채점 결과 분석</caption>
                        <!--
                        <colgroup>
                            <col width="17%">
                            <col width="14.4%">
                            <col width="14.4%">
                            <col width="14.4%">
                            <col width="14.4%">
                            <col width="14.4%">
                            <col width="11%">
                        </colgroup>
                        //-->
                        <thead>
                            <tr>
                                <th class="bgB">과목</th>
                                <th class="bgB">국어</th>
                                <th class="bgB">헌법</th>
                                <th class="bgB">행정법</th>
                                <th class="bgB">행정학</th>
                                <th class="bgB">경제학원론</th>
                                <th class="bgB">평균</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg_sky">원점수</th>
                                <td>25</td>
                                <td>35</td>
                                <td>10</td>
                                <td>20</td>
                                <td>25</td>
                                <td>23</td>
                            </tr>
                            <tr>
                                <th class="bg_sky">적용 <br class="br_mo">가산점</th>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>0</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg_sky">최종 <br class="br_mo">점수</th>
                                <td class="bg_red">25</td>
                                <td class="bg_red">35</td>
                                <td class="bg_red">10</td>
                                <td class="bg_red">20</td>
                                <td class="bg_red">25</td>
                                <td class="bg_red">0</td>
                            </tr>
                            <tr>
                                <th class="bg_sky">과락</th>
                                <td class="cr_red">과락</td>
                                <td class="cr_red">과락</td>
                                <td class="cr_red">과락</td>
                                <td class="cr_red">과락</td>
                                <td class="cr_red">과락</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="left_info">
                    ※ 과락은 원점수 40점 미만에 해당함 (가산점 미반영) <br>
                    ※ 한 과목 이상 과락인 경우 총점평균은 0점으로 처리합니다.
                </p>
            </div>
            <div class="myscore_previewGraph">
                <div class="tit_wrp second">
                    <h4>과목별 원점수 분포도<br><span>(가산점 반영)</span></h4>
                    <!--<span class="last_up">최종 업데이트 : 06/15 00:00</span>-->
                </div>
                <div class="myscore_graph_n0902">
                    <div class="myscore_graph">
                        <canvas id="chart_radar" style="width:100%;height:100%"></canvas>
                    </div>
                </div>
            </div>
        </div>
        <!-- // 예상 성적표  -->

        <!-- 채점 결과 보기 -->
        <div class="scorresult_wrp">
            <div class="tit_wrp">
                <h4>과목별 채점 결과  
                    <span class="t_info">※답안 입력은 최대 1회 수정 가능합니다.</span>
                    <!-- <span class="t_info">* 답안 입력은 총 1회 수정이 가능하며, 현재 1회 남았습니다.</span> -->
                </h4>
            </div>
            <!-- 채점 결과 보기 표 -->
            <div class="scorresult_tit">
                <h5>국어 </h5>
                <dl>
                    <dt>체감 난이도 : </dt>
                    <dd><strong>매우쉬움</strong></dd>
                </dl>
            </div>
            <div class="tble_wrp">
                <!-- PC용 -->
                <table class="fbasic_tbl tbl_pc">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                    
                        <col style="width: 5%">
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                                                            
                            <th>총점</th>
                        
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">답안</td>
                            
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray" rowspan="3">25</td>
                                
                            
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>

                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>48</td>
                                    
                            <td>36</td>
                                    
                            <td>24</td>
                                    
                            <td>28</td>
                                    
                            <td>28</td>
                                    
                            <td>40</td>
                                    
                            <td>28</td>
                                    
                            <td>32</td>
                                    
                            <td>36</td>
                                    
                            <td>48</td>
                                    
                            <td>44</td>
                                    
                            <td>44</td>
                                    
                            <td>44</td>
                                    
                            <td>40</td>
                                    
                            <td>40</td>
                                    
                            <td>32</td>
                                    
                            <td>40</td>
                                    
                            <td>40</td>
                                    
                            <td>44</td>
                                    
                            <td>48</td>
                                    
                        </tr>
                    </tbody>
                </table>
                <!-- // PC용 -->

                <!-- 모바일용 -->
                <table class="fbasic_tbl tbl_mb">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 15%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                    </colgroup>
                    <tbody>
                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>48</td>
                                    
                            <td>36</td>
                                    
                            <td>24</td>
                                    
                            <td>28</td>
                                    
                            <td>28</td>
                                    
                            <td>40</td>
                                    
                            <td>28</td>
                                    
                            <td>32</td>
                                    
                            <td>36</td>
                                    
                            <td>48</td>
                                    
                        </tr>



                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>44</td>
                                    
                            <td>44</td>
                                    
                            <td>44</td>
                                    
                            <td>40</td>
                                    
                            <td>40</td>
                                    
                            <td>32</td>
                                    
                            <td>40</td>
                                    
                            <td>40</td>
                                    
                            <td>44</td>
                                    
                            <td>48</td>
                                    
                        </tr>


                        
                        <tr>
                            <th>총점</th>
                            <td colspan="10">25</td>
                        </tr>
                        
                    </tbody>
                </table>
                <!-- // 모바일용 -->
            </div>
            <div class="scorresult_tit">
                <h5>헌법 </h5>
                <dl>
                    <dt>체감 난이도 : </dt>
                    <dd><strong>쉬움</strong></dd>
                </dl>
            </div>
            <div class="tble_wrp">
                <!-- PC용 -->
                <table class="fbasic_tbl tbl_pc">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                    
                        <col style="width: 5%">
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                                                            
                            <th>총점</th>
                        
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">답안</td>
                            
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray" rowspan="3">35</td>
                                
                            
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>

                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>73.7</td>
                                    
                            <td>73.7</td>
                                    
                            <td>73.7</td>
                                    
                            <td>57.9</td>
                                    
                            <td>84.2</td>
                                    
                            <td>73.7</td>
                                    
                            <td>63.2</td>
                                    
                            <td>57.9</td>
                                    
                            <td>68.4</td>
                                    
                            <td>63.2</td>
                                    
                            <td>63.2</td>
                                    
                            <td>63.2</td>
                                    
                            <td>78.9</td>
                                    
                            <td>63.2</td>
                                    
                            <td>57.9</td>
                                    
                            <td>47.4</td>
                                    
                            <td>73.7</td>
                                    
                            <td>57.9</td>
                                    
                            <td>47.4</td>
                                    
                            <td>47.4</td>
                                    
                        </tr>
                    </tbody>
                </table>
                <!-- // PC용 -->

                <!-- 모바일용 -->
                <table class="fbasic_tbl tbl_mb">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 15%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                    </colgroup>
                    <tbody>
                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>73.7</td>
                                    
                            <td>73.7</td>
                                    
                            <td>73.7</td>
                                    
                            <td>57.9</td>
                                    
                            <td>84.2</td>
                                    
                            <td>73.7</td>
                                    
                            <td>63.2</td>
                                    
                            <td>57.9</td>
                                    
                            <td>68.4</td>
                                    
                            <td>63.2</td>
                                    
                        </tr>



                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>63.2</td>
                                    
                            <td>63.2</td>
                                    
                            <td>78.9</td>
                                    
                            <td>63.2</td>
                                    
                            <td>57.9</td>
                                    
                            <td>47.4</td>
                                    
                            <td>73.7</td>
                                    
                            <td>57.9</td>
                                    
                            <td>47.4</td>
                                    
                            <td>47.4</td>
                                    
                        </tr>


                        
                        <tr>
                            <th>총점</th>
                            <td colspan="10">35</td>
                        </tr>
                        
                    </tbody>
                </table>
                <!-- // 모바일용 -->
            </div>
            <div class="scorresult_tit">
                <h5>행정법 </h5>
                <dl>
                    <dt>체감 난이도 : </dt>
                    <dd><strong>보통</strong></dd>
                </dl>
            </div>
            <div class="tble_wrp">
                <!-- PC용 -->
                <table class="fbasic_tbl tbl_pc">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                    
                        <col style="width: 5%">
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                                                            
                            <th>총점</th>
                        
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">답안</td>
                            
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray" rowspan="3">10</td>
                                
                            
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>

                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>71.4</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>64.3</td>
                                    
                            <td>85.7</td>
                                    
                            <td>85.7</td>
                                    
                            <td>64.3</td>
                                    
                            <td>64.3</td>
                                    
                            <td>50</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>42.9</td>
                                    
                            <td>50</td>
                                    
                            <td>64.3</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>64.3</td>
                                    
                            <td>50</td>
                                    
                            <td>57.1</td>
                                    
                        </tr>
                    </tbody>
                </table>
                <!-- // PC용 -->

                <!-- 모바일용 -->
                <table class="fbasic_tbl tbl_mb">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 15%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                    </colgroup>
                    <tbody>
                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>71.4</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>64.3</td>
                                    
                            <td>85.7</td>
                                    
                            <td>85.7</td>
                                    
                            <td>64.3</td>
                                    
                            <td>64.3</td>
                                    
                            <td>50</td>
                                    
                            <td>71.4</td>
                                    
                        </tr>



                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>57.1</td>
                                    
                            <td>42.9</td>
                                    
                            <td>50</td>
                                    
                            <td>64.3</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>64.3</td>
                                    
                            <td>50</td>
                                    
                            <td>57.1</td>
                                    
                        </tr>


                        
                        <tr>
                            <th>총점</th>
                            <td colspan="10">10</td>
                        </tr>
                        
                    </tbody>
                </table>
                <!-- // 모바일용 -->
            </div>
            <div class="scorresult_tit">
                <h5>행정학 </h5>
                <dl>
                    <dt>체감 난이도 : </dt>
                    <dd><strong>어려움</strong></dd>
                </dl>
            </div>
            <div class="tble_wrp">
                <!-- PC용 -->
                <table class="fbasic_tbl tbl_pc">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                    
                        <col style="width: 5%">
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                                                            
                            <th>총점</th>
                        
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">답안</td>
                            
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray" rowspan="3">20</td>
                                
                            
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>

                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>57.1</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>50</td>
                                    
                            <td>71.4</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>50</td>
                                    
                            <td>64.3</td>
                                    
                            <td>42.9</td>
                                    
                            <td>57.1</td>
                                    
                            <td>42.9</td>
                                    
                            <td>42.9</td>
                                    
                            <td>42.9</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>64.3</td>
                                    
                            <td>64.3</td>
                                    
                            <td>57.1</td>
                                    
                        </tr>
                    </tbody>
                </table>
                <!-- // PC용 -->

                <!-- 모바일용 -->
                <table class="fbasic_tbl tbl_mb">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 15%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                    </colgroup>
                    <tbody>
                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>57.1</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>50</td>
                                    
                            <td>71.4</td>
                                    
                            <td>71.4</td>
                                    
                            <td>57.1</td>
                                    
                            <td>50</td>
                                    
                            <td>64.3</td>
                                    
                            <td>42.9</td>
                                    
                        </tr>



                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>57.1</td>
                                    
                            <td>42.9</td>
                                    
                            <td>42.9</td>
                                    
                            <td>42.9</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>57.1</td>
                                    
                            <td>64.3</td>
                                    
                            <td>64.3</td>
                                    
                            <td>57.1</td>
                                    
                        </tr>


                        
                        <tr>
                            <th>총점</th>
                            <td colspan="10">20</td>
                        </tr>
                        
                    </tbody>
                </table>
                <!-- // 모바일용 -->
            </div>
            <div class="scorresult_tit">
                <h5>경제학원론 </h5>
                <dl>
                    <dt>체감 난이도 : </dt>
                    <dd><strong>매우어려움</strong></dd>
                </dl>
            </div>
            <div class="tble_wrp">
                <!-- PC용 -->
                <table class="fbasic_tbl tbl_pc">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                        <col style="width: 4.5%">
                    
                        <col style="width: 5%">
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                                                            
                            <th>총점</th>
                        
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">답안</td>
                            
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray">2</td>
                                
                                <td class="br_gray">1</td>
                                
                                <td class="br_gray" rowspan="3">25</td>
                                
                            
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>

                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>75</td>
                                    
                            <td>62.5</td>
                                    
                            <td>62.5</td>
                                    
                            <td>50</td>
                                    
                            <td>62.5</td>
                                    
                            <td>75</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                            <td>75</td>
                                    
                            <td>75</td>
                                    
                            <td>62.5</td>
                                    
                            <td>37.5</td>
                                    
                            <td>37.5</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                            <td>37.5</td>
                                    
                            <td>37.5</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                        </tr>
                    </tbody>
                </table>
                <!-- // PC용 -->

                <!-- 모바일용 -->
                <table class="fbasic_tbl tbl_mb">
                    <caption>채점 결과 보기</caption>
                    <colgroup>
                        <col style="width: 15%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                        <col style="width: 8.5%">
                    </colgroup>
                    <tbody>
                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td>O</td>
                                    
                            <td>O</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>75</td>
                                    
                            <td>62.5</td>
                                    
                            <td>62.5</td>
                                    
                            <td>50</td>
                                    
                            <td>62.5</td>
                                    
                            <td>75</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                            <td>75</td>
                                    
                            <td>75</td>
                                    
                        </tr>



                        <tr class="mb_thd">
                            <th>번호</th>
                            <th>11</th>
                            <th>12</th>
                            <th>13</th>
                            <th>14</th>
                            <th>15</th>
                            <th>16</th>
                            <th>17</th>
                            <th>18</th>
                            <th>19</th>
                            <th>20</th>
                        </tr>
                        <tr>
                            <td class="br_gray" style="font-weight:bold;">입력 답안</td>
                            
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                            <td class="br_gray">2</td>
                                    
                            <td class="br_gray">1</td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">정오</td>
                            
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                            <td><span style="color:#ff1149">X(1)</span></td>
                                    
                            <td><span style="color:#ff1149">X(2)</span></td>
                                    
                            <td><span style="color:#ff1149">X(3)</span></td>
                                    
                            <td><span style="color:#ff1149">X(4)</span></td>
                                    
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" class="ans_box">정답률<br class="br_mo">(%)</td>
                            
                            <td>62.5</td>
                                    
                            <td>37.5</td>
                                    
                            <td>37.5</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                            <td>37.5</td>
                                    
                            <td>37.5</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                            <td>50</td>
                                    
                        </tr>


                        
                        <tr>
                            <th>총점</th>
                            <td colspan="10">25</td>
                        </tr>
                        
                    </tbody>
                </table>
                <!-- // 모바일용 -->
            </div>
            <div class="info_btn_wrap">
                <p class="left_info">※ 허위 데이터, 불성실 데이터는 데이터 삭제 및 서비스 이용에 제한이 있을 수 있습니다.</p>
                <p class="bttn_wrp">
                    <button onclick="goEdit('mp')" title="채점 정보 수정"><span>채점 정보 수정</span></button>
                </p>
            </div>
        </div>
        <!-- 채점 결과 보기 표 -->
        <!-- // 채점 결과 보기 -->
        <!-- 내 응시 정보 입력 영역 -->
        <div class="testinfo_view">
            <div class="tit_wrp">
                <h4>나의 응시 정보</h4>
            </div>
            <!-- 응시 정보 입력란 /  입력 후 class="tble_wrp write_on"-->
            <div class="testinfo_write">
                <!-- 입력 후 class="tble_wrp write_on"-->
                <div class="tble_wrp write_on">
                    <table class="fbasic_tbl">
                        <caption>내 응시정보 보기</caption>
                            <colgroup>
                            <col width="20%">
                            <col width="23%">
                            <col width="10%">
                            <col width="19%">
                            <col width="14%">
                            <col width="14%">
                        </colgroup>

                            <tbody><tr>
                            <th>이름</th>
                            <td colspan="2">홍길동</td>
                            <th>성별</th>
                            <td colspan="2">남</td>
                        </tr>
                        <tr>
                            <th>전형/직렬<br class="br_mo">/지역</th>
                            <td colspan="5">일반전형 / 일반행정 / 서울특별시-서울시</td>
                        </tr>
                        <tr>
                            <th>수험<br class="br_mo">번호</th>
                            <td colspan="5" class="m_number">10000001</td>
                        </tr>
                        <tr>
                            <th>시험지 <br class="br_mo">유형</th>
                            <td colspan="5">가형</td>
                        </tr>
                        
                        <tr>
                            <th rowspan="2">응시<br class="br_mo">과목</th>
                            <td><b>필수과목</b></td>
                            <td colspan="4">국어, 헌법, 행정법, 행정학</td>
                        </tr>
                        <tr>
                            <td><b>선택과목</b></td>
                            <td class="m_serial " colspan="4">
                            경제학원론
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="3">가산점</th>
                            <td class="tL"><b>취업지원대상자 및 의사상자 등</b></td>
                            <td class="m_addpoint" colspan="4">0%</td>
                        </tr>
                        <tr>
                            <td class="tL"><b>직렬별 자격증</b></td>
                            <td class="m_addpoint" colspan="4">0%</td>
                        </tr>
                        <tr>
                            <td class="tL"><b>총 가산점</b></td>
                            <td class="m_addpoint" colspan="4">0%</td>
                        </tr>
                        

                        <tr>
                            <th>수험 기간</th>
                            <td colspan="2">
                            6개월 미만
                            </td>
                            <th>일 평균 학습시간</th>
                            <td colspan="2">
                            4시간 이하
                            </td>
                        </tr>
                        <tr>
                            <th>수험생활</th>
                            <td colspan="2">
                            전업 수험생
                            </td>
                            <th>공부방법</th>
                            <td colspan="2">
                            독학
                            </td>
                        </tr>

                            

                    </tbody></table>
                </div>
                <!-- // 입력 후 class="tble_wrp write_on"-->
            </div>
            <p class="bttn_wrp floright"></p>
        </div>
        <!-- // 내 응시 정보 입력 영역 -->
    </div>
    <!-- // '채점 및 성적분석' -->
</section></div>
<script>options = {
    maintainAspectRatio: false,
    legend: { display: false},
    scale: {
        angleLines: {
            display: false
        },
        ticks: {
            //suggestedMin: 0, suggestedMax: 11
            min:0
			, max:115
			, stepSize: 20
			, beginAtZero: true
        }
    }
};

var data = {
    labels: ['국어','헌법','행정법','행정학','경제학원론'],

    datasets: [
        {
        label:"내 점수",
        borderColor: "#922d3b",
        borderWidth: 3,
        fill:false,
        data: ['25','35','10','20','25']
        }
    ]
}

var myRadarChart = new Chart(document.getElementById("chart_radar"), {
    type: 'radar',
    data: data,
    options: options
});</script>


<p class="page_text">풀서비스의 메인 페이지에서 활용되는 요소입니다.<br> 입력한 답안대로 채점을 진행하여 결과를 표기하여 줍니다.<br> 또한 다른 사용자들이 입력한 정보를 바탕으로 평균적인 체감난이도와 함께 평균 정답률을 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 풀서비스--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#성적그래프</p> </li>
                            <li><p>#채점표</p> </li>
                            <li><p>#응시정보</p> </li>
                        </ul>
                    </div>
                </div>
            
            </div><!-- .page_text_wrap -->

            <div class="page_text_wrap">
                <p class="page_head">합격 가능성</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->

<div class="code-box html tp2"><section id="f_tabCon"class="full_tabcon">
    <h3 class="blindw">풀서비스 탭 컨텐츠</h3>
    <div class="ftabcon_inner frealtime">
        <!-- 합격가능성 -->
        <div class="my_test_series possibility_tbl1">
            <div class="full_tbl_wrap">
                <table class="gray_tbl all_center">
                    <colgroup>
                        <col width="16.666%">
                        <col width="16.666%">
                        <col width="16.666%">
                        <col width="16.666%">
                        <col width="16.666%">
                        <col width="16.666%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <td rowspan="3">
                                <div class="img">												
                                    <img src="<%=img_main%>/new/mypage/amblem/2/2_11.png" alt="-">
                                </div>
                            </td>
                            <th>응시직렬</th>
                            <td colspan="4" class="tal">일반전형 / 일반행정 / 서울특별시-서울시</td>
                        </tr>
                        <tr>
                            <th>선발인원</th>
                            <th>출원인원</th>
                            <th>경쟁률</th>
                            <th>예상<br class="br_mo">응시인원</th>
                            <th>예상<br class="br_mo">필합인원</th>
                        </tr>
                        <tr>
                            <td>
                                194
                            </td>
                            <td>
                                13,049
                            </td>
                            <td>
                                67.26
                            </td>
                            <td>
                                11,614
                            </td>
                            <td>
                                233
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div> <!-- // 합격가능성 -->

        <div class="possibility_dim_w "> <!--딤 : class="dim_on" 추가 -->
            <!-- 딤 -->
            <div class="tbl_dim" style="z-index: 3;">
                <p>
                    <span>해당 채용 분야의 예상 합격선은 서비스되지 않습니다.</span>
                </p>
            </div>
            <!-- // 딤 -->
            <!-- 합격가능성 나의점수 -->
            <div class="my_test_series possibility_tbl2">
                <div class="tbl_top">
                    <div class="ex_score">
                        <strong>2022 나의 예상 점수</strong>
                        <span>
                        0 점										
                        </span>
                    </div>
                </div>
                
                <div class="full_tbl_wrap"> <!-- 테이블 딤 : class="dim_on" 추가 -->
                    <div class="tbl_dim">
                        <p>
                            <span>표본 수집 중으로<br>적정 표본수 확보 후 서비스 됩니다.</span>
                        </p>
                    </div>

                    <table class="gray_tbl all_center">
                        <colgroup>
                            <col width="16.6667%">
                            <col width="16.6667%">
                            <col width="16.6667%">
                            <col width="16.6667%">
                            <col width="16.6667%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th>2022 <br class="br_mo">예상 합격선</th>
                                <th>상위 <br class="br_mo">10% 컷</th>
                                <th>상위 <br class="br_mo">30% 컷</th>
                                <th>응시생 <br class="br_mo">평균</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg_white">점수</th>
                                <td>88</td>
                                <td>
                                100
                                </td>
                                <td>
                                100</td>
                                <td>
                                62.67
                                </td>
                            </tr>
                            
                            <tr>
                                <th class="bg_white">차이점수</th>
                                <td>
                                    <span class="type2 type_arr">▲</span>88
                                </td>
                                <td>
                                    <span class="type2 type_arr">▲</span>100
                                </td>
                                <td>
                                    <span class="type2 type_arr">▲</span>100
                                </td>
                                <td>
                                    <span class="type2 type_arr">▲</span>62.67
                                </td>
                            </tr>
                            <tr>
                                <th class="bg_white">필기합격 <br class="br_mb">가능성</th>
                                <td>
                                
                                    <span class="tbl_icon1" style="background: #FF839F;">과락</span>
                                
                                </td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <p class="tbl_btm_txt tal">※ 유의사항: 해당 서비스는 동일직렬 응시생들의 상위 10%, 30% 컷과 본인의 예상점수를 단순비교한 결과입니다. 참고자료로만 활용하시기 바랍니다.</p>
            </div> <!-- // 합격가능성 나의점수 -->

            <!-- 내 위치 예측 그래프 -->
            
            <div class="loca_grp_wrp n0402"> <!--딤 : class="dim_on" 추가 -->
                <div class="lgw_inner">
                    <!-- 딤 -->
                    <div class="tbl_dim">
                        <p>
                            <span>표본 수집 중으로 적정 표본수 확보 후 서비스 됩니다.</span>
                        </p>
                    </div>
                    <!-- // 딤 -->

                    <div class="lgw_zone zone1" style="width:33.33%">불안
                        <span class="score_num">88점</span>
                    </div>
                    <div class="lgw_zone zone2" style="width:20%">가능
                        <span class="score_num">91점</span>
                    </div>
                    <div class="lgw_zone zone3" style="width:13.33%">유력
                        <span class="score_num">93점</span>
                    </div>
                    <div class="lgw_zone zone4" style="width:33.33%">확실</div>
                    <!-- '내 점수' 인라인스타일 % 로 위치 -->
                    
                    <strong class="pointer" style="left: 0%; margin-left: -70px;">내 점수 <span class="mo_none">:</span> <br>0점</strong>
                </div>
                <div class="grpbox">
                    <p class="grp_tit">
                        ※ 실시간 합격 가능성 분석 서비스 유의사항
                    </p>
                    <div class="inner">
                        <ul>
                            <li>- 본 서비스는 이용자의 입력 데이터와 과거 합격자 통계자료 등을 통해 구축한 자사만의 알고리즘에 기반한 합격예측 서비스입니다.</li>
                            <li>- 최근 3개년 합격선으로 제공되는 필기합격 가능성은 본인의 예상점수와의 단순 비교로 판단한 결과입니다. (※난이도 및 평균 차이를 고려하지 않음)</li>
                            <li>- 본 서비스에서 제공되는 예상 합격선은 실제 합격선과 차이가 있을 수 있으니, 참고자료로만 활용하시기 바랍니다.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- // 내 위치 예측 그래프 -->
        </div>

        <!-- 응시자 성적 분석 -->
        <div class="result_analyze_box">
            <div class="full_tit_wrp">
                <h4>응시자 성적 분석</h4>
            </div>
            <div class="full_tbl_wrap">
                <table class="gray_tbl all_center">
                    <colgroup>
                        <col width="20%">
                    
                        <col width="13.3333333333333%">
                    
                        <col width="13.3333333333333%">
                    
                        <col width="13.3333333333333%">
                    
                        <col width="13.3333333333333%">
                    
                        <col width="13.3333333333333%">
                    
                        <col width="13.3333333333333%">
                    
                    </colgroup>
                    <thead>
                        <tr>
                            <th></th>
                        <th>국어</th><th>헌법</th><th>행정법</th><th>행정학</th><th>경제학원론</th><th>평균</th>
                        </tr>	
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg_sky">원점수</th>
                        <td>25</td><td>35</td><td>10</td><td>20</td><td>25</td><td>23</td>
                        </tr>
                        <tr>
                            <th class="bg_sky">적용가산점</th>
                        <td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>-</td>
                        </tr>
                        <tr>
                            <th class="bg_sky">최종점수</th>
                        <td class="bg_red2">25</td><td class="bg_red2">35</td><td class="bg_red2">10</td><td class="bg_red2">20</td><td class="bg_red2">25</td><td class="bg_red2">0</td>
                        </tr>
                        <tr>
                            <th class="bg_sky">과락</th>
                        <td><span class="cr_red">과락</span></td><td><span class="cr_red">과락</span></td><td><span class="cr_red">과락</span></td><td><span class="cr_red">과락</span></td><td><span class="cr_red">과락</span></td><td>-</td>
                        </tr>
                        <tr>
                            <th class="bg_sky">백분위</th>
                        <td>17</td><td>17</td><td>17</td><td>17</td><td>50</td><td>13</td>
                        </tr>
                        <tr>
                            <th class="bg_sky">석차/<br class="br_mo">채점인원</th>
                        <td>3/3</td><td>3/3</td><td>3/3</td><td>3/3</td><td>1/1</td><td>3/4</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="tbl_btm_txt tal">※ 백분위, 석차, 채점인원은  동일직렬에 응시한 수험생 기준으로 보여집니다. </p>
        </div>
        <!-- // 응시자 성적 분석 -->

        <!-- 전체 응시자 통계 -->
        <div class="all_exam_stats_box">
            <div class="full_tit_wrp">
                <h4>전체 응시자 통계</h4>
            </div>
            <div class="full_tbl_wrap">
                <table class="gray_tbl all_center">
                    <colgroup>
                        <col width="16.66%">
                        <col width="16.66%">
                        <col width="16.66%">
                        <col width="16.66%">
                        <col width="16.66%">
                        <col width="16.66%">
                        <!--<col width="14.285%">-->
                    </colgroup>
                    <thead>
                        <tr>
                            <th>석차</th>
                            <th>채점<br class="br_mo">인원</th>
                            <th>백분위</th>
                            <th>최고점</th>
                            <!--<th>1배수 <br class="br_mo">컷</th>-->
                            <th>상위 <br class="br_mo">10% 컷</th>
                            <th>상위 <br class="br_mo">30% 컷</th>	
                        </tr>	
                    </thead>
                    
                    <tbody>
                    
                        <tr>
                            <td>
                            3
                            </td>
                            <td>4</td>
                            <td>
                            13
                            </td>
                            <td>100</td>
                            <!--<td>분석중</td>-->
                            <td>100</td>
                            <td>100</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="tbl_btm_txt tal">
                ※ 전체 응시자 통계는 직류별 응시생 통계 데이터로, 정확한 진단을 위해 일정 채점데이터 확보 후 서비스 됩니다.
            </p>
        </div>
        <!-- // 전체 응시자 통계 -->

        <!-- 지원자 전체보기 -->
        <div class="all_exam_stats_box">
            <div class="full_tit_wrp">
                <h4>지원자 전체보기</h4>
            </div>
            <div class="graph_area">
                <div class="graph_box">
                    <div class="row">
                        <ul class="left_legend">
                            <li>50%</li>
                            <li>40%</li>
                            <li>30%</li>
                            <li>20%</li>
                            <li>10%</li>
                            <li>0%</li>
                        </ul>
                        <div class="stick_box">
                            <ul class="stick_list">
                            
                                <li class="my_score" onclick="TermList('1');">
                                    <span class="stick" style="height:50%">
                                        <span class="balloon">25%</span>
                                        
                                        <span class="score">내 점수 <br>0점</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('2');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('3');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('4');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('5');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('6');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('7');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('8');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('9');">
                                    <span class="stick" style="height:50%">
                                        <span class="balloon">25%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('10');">
                                    <span class="stick" style="height:0%">
                                        <span class="balloon">0%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                                <li onclick="TermList('11');">
                                    <span class="stick" style="height:50%">
                                        <span class="balloon">25%</span>
                                        
                                        그래프막대
                                    </span>
                                </li>
                            
                            </ul>
                        </div>
                    </div>
                    <ul class="terms_txt">
                        <li class="terms">50미만</li>
                        <li class="terms">50~55</li>
                        <li class="terms">55~60</li>
                        <li class="terms">60~65</li>
                        <li class="terms">65~70</li>
                        <li class="terms">70~75</li>
                        <li class="terms">75~80</li>
                        <li class="terms">80~85</li>
                        <li class="terms">85~90</li>
                        <li class="terms">90~95</li>
                        <li class="terms">95이상</li>
                        <!--<li class="terms">101이상</li>//-->
                    </ul>
                </div>
            </div>

            <div class="full_tbl_wrap scroll_box">
                <div class="result_cont">
                    <table class="gray_tbl all_center">
                        <colgroup>
                        
                            <col width="14.2857142857143%">
                        
                            <col width="14.2857142857143%">
                        
                            <col width="14.2857142857143%">
                        
                            <col width="14.2857142857143%">
                        
                            <col width="14.2857142857143%">
                        
                            <col width="14.2857142857143%">
                        
                            <col width="14.2857142857143%">
                        
                        </colgroup>
                        <thead>
                            <tr>
                                <th>순위</th>
                            <th>국어</th><th>헌법</th><th>행정법</th><th>행정학</th><th>선택과목</th>
                                <th>평균</th>
                            </tr>	
                        </thead>
                        <tbody>
                        
                            <tr id="AncRank_0">
                                <td class="bg_sky3">3</td>
                            <td class="bg_sky3">25</td><td class="bg_sky3">35</td><td class="bg_sky3">10</td><td class="bg_sky3">20</td><td class="bg_sky3">25</td>
                                <td class="bg_sky3">0</td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
            </div>	
            <p class="tbl_btm_txt tal">
                ※ 최근 데이터 업데이트 일시:
                10월 31일 23시 55분
                    <br>
                    ※ 동일직렬에 응시한 수험생들의 과목별 가산점이 반영된 채점결과입니다.<br>
                    ※ 응시 정보 및 채점 정보를 수정하여 점수가 변경된 경우, 15분 후 채점자 통계가 업데이트됩니다.
            </p>
        </div>
        <!-- // 지원자 전체보기 -->
        
        <!-- 최근 3개년 추이 -->
        <div class="progress_view n0402">
            <div class="full_tit_wrp">
                <h4>최근 3개년 정보</h4>
            </div>

            <!-- 내 위치 예측 그래프 -->
            <div id="div_trans" class="progress_grp_wrp">
                <div class="series_graph">
                    <div id="chart1" style="width: 280px; height: 280px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 360px; height: 200px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="360" height="200" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_0"><clipPath id="_ABSTRACT_RENDERER_ID_1"><rect x="64" y="38" width="232" height="124"></rect></clipPath></defs><rect x="0" y="0" width="360" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="23.55" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">모집인원</text><rect x="64" y="12.5" width="232" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="38" width="232" height="124" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://dev.megagong.net/s/gong/full/20221029/predict.asp?go=full_tab#_ABSTRACT_RENDERER_ID_1)"><g><rect x="64" y="161" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="120" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="79" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="38" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="141" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="100" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="59" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><rect x="84" y="142" width="38" height="101" stroke="#922d3b" stroke-width="1" fill="#922d3b"></rect><rect x="161" y="128" width="38" height="115" stroke="#922d3b" stroke-width="1" fill="#922d3b"></rect><rect x="238" y="75" width="38" height="168" stroke="#922d3b" stroke-width="1" fill="#922d3b"></rect></g><g><rect x="103" y="130" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="180" y="116" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="257" y="63" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="103" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2019</text></g><g><text text-anchor="middle" x="180" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2020</text></g><g><text text-anchor="middle" x="257" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="end" x="54" y="165" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="54" y="124" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">150</text></g><g><text text-anchor="end" x="54" y="83" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">200</text></g><g><text text-anchor="end" x="54" y="42" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">250</text></g></g><g><g><g><rect x="93.5" y="119.5" width="20" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="103" y="128.5" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#662029" aria-hidden="true">125</text><text text-anchor="middle" x="103" y="128.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#662029">125</text></g><rect x="95.5" y="120" width="15" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="170.5" y="105.5" width="20" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="180" y="114.5" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#662029" aria-hidden="true">142</text><text text-anchor="middle" x="180" y="114.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#662029">142</text></g><rect x="172.5" y="106" width="15" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="247.5" y="52.5" width="20" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="257" y="61.5" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#662029" aria-hidden="true">206</text><text text-anchor="middle" x="257" y="61.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#662029">206</text></g><rect x="249.5" y="53" width="15" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>모집인원</th><th>모집인원</th></tr></thead><tbody><tr><td>2019</td><td>125</td></tr><tr><td>2020</td><td>142</td></tr><tr><td>2021</td><td>206</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 210px; left: 370px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">모집인원</div><div></div></div></div>
                    <div id="chart2" style="width: 280px; height: 280px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 360px; height: 200px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="360" height="200" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_2"><clipPath id="_ABSTRACT_RENDERER_ID_3"><rect x="64" y="38" width="232" height="124"></rect></clipPath></defs><rect x="0" y="0" width="360" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="23.55" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">경쟁률</text><rect x="64" y="12.5" width="232" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="38" width="232" height="124" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://dev.megagong.net/s/gong/full/20221029/predict.asp?go=full_tab#_ABSTRACT_RENDERER_ID_3)"><g><rect x="64" y="161" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="120" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="79" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="38" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="141" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="100" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="59" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><path d="M103,78.14700000000002L180,107.83099999999999L257,139.03200000000004" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path></g><g><rect x="103" y="66.14700000000002" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="180" y="95.83099999999999" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="257" y="127.03200000000004" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="103" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2019</text></g><g><text text-anchor="middle" x="180" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2020</text></g><g><text text-anchor="middle" x="257" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="end" x="54" y="165" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">60</text></g><g><text text-anchor="end" x="54" y="124" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">80</text></g><g><text text-anchor="end" x="54" y="83" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="54" y="42" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">120</text></g></g><g><g><g><rect x="87.5" y="55.5" width="32" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="103" y="64.64700000000002" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">100.66</text><text text-anchor="middle" x="103" y="64.64700000000002" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#3366cc">100.66</text></g><rect x="89.5" y="56.14700000000002" width="27" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="166.5" y="84.5" width="28" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="180" y="94.33099999999999" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">86.18</text><text text-anchor="middle" x="180" y="94.33099999999999" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#3366cc">86.18</text></g><rect x="169" y="85.83099999999999" width="22" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="243.5" y="116.5" width="28" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="257" y="125.53200000000004" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">70.96</text><text text-anchor="middle" x="257" y="125.53200000000004" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#3366cc">70.96</text></g><rect x="246" y="117.03200000000004" width="22" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>연도</th><th>경쟁률</th></tr></thead><tbody><tr><td>2019</td><td>100.66</td></tr><tr><td>2020</td><td>86.18</td></tr><tr><td>2021</td><td>70.96</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 210px; left: 370px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">경쟁률</div><div></div></div></div>
                    <div id="chart3" style="width: 280px; height: 280px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 360px; height: 200px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="360" height="200" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_4"><clipPath id="_ABSTRACT_RENDERER_ID_5"><rect x="64" y="38" width="232" height="124"></rect></clipPath></defs><rect x="0" y="0" width="360" height="200" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="23.55" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">합격선</text><rect x="64" y="12.5" width="232" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="38" width="232" height="124" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://dev.megagong.net/s/gong/full/20221029/predict.asp?go=full_tab#_ABSTRACT_RENDERER_ID_5)"><g><rect x="64" y="161" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="120" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="79" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="38" width="232" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="141" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="100" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="59" width="232" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><path d="M103,130.75L180,67.81500000000005L257,38.5" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path></g><g><rect x="103" y="118.75" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="180" y="55.815000000000055" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="257" y="38.5" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="103" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2019</text></g><g><text text-anchor="middle" x="180" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2020</text></g><g><text text-anchor="middle" x="257" y="176.5" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="end" x="54" y="165" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">84</text></g><g><text text-anchor="end" x="54" y="124" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">86</text></g><g><text text-anchor="end" x="54" y="83" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">88</text></g><g><text text-anchor="end" x="54" y="42" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#444444">90</text></g></g><g><g><g><rect x="89.5" y="107.5" width="28" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="103" y="117.25" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">85.50</text><text text-anchor="middle" x="103" y="117.25" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#3366cc">85.50</text></g><rect x="92" y="108.75" width="22" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="166.5" y="44.5" width="28" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="180" y="54.315000000000055" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">88.57</text><text text-anchor="middle" x="180" y="54.315000000000055" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#3366cc">88.57</text></g><rect x="169" y="45.815000000000055" width="22" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="243.5" y="49.5" width="28" height="12" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="257" y="59" font-family="Arial" font-size="10" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">90.00</text><text text-anchor="middle" x="257" y="59" font-family="Arial" font-size="10" stroke="none" stroke-width="0" fill="#3366cc">90.00</text></g><rect x="246" y="50.5" width="22" height="10" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>연도</th><th>합격선</th></tr></thead><tbody><tr><td>2019</td><td>85.5</td></tr><tr><td>2020</td><td>88.57</td></tr><tr><td>2021</td><td>90</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 210px; left: 370px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">합격선</div><div></div></div></div>
                </div>
            </div>

            <dl class="cautn">
                <dt>※ 유의사항</dt>
                <dd>- 합격 가능성은 메가공무원 풀서비스 입력 성적의 분석을 통한 예상 성적과 3개년 합격선과의 비교 결과로, 실제와 차이가 있을 수 있습니다.</dd>
                <dd>- 메가공무원 풀서비스 응시자는 중상위권 학생들의 비중이 높기 때문에, 전체 응시자들의 성적과 비교하면 다소 높은 경향이 있습니다.</dd>
            </dl>
            <!-- // 내 위치 예측 그래프 -->
        </div>
        <!-- // 최근 3개년 추이-->
    </div>
</section></div>
<script>
function poin_left() {
    var pointer_width = $('.loca_grp_wrp .pointer').outerWidth();

    $('.loca_grp_wrp .pointer').css("margin-left", "-" + pointer_width / 2 + "px");
    if ($('.loca_grp_wrp .pointer').css("left") == 0) {
        alert("dd");
    };
}
$(function() {
    poin_left();
    $(window).resize(function() { 
        poin_left();
    });
});
function TermList(termCd) {
	$.post("predict_rank.asp",{DPTAREA_CD: "2711-1100010110531", TermCd : termCd},function(html, status){
		$("div.result_cont").html(html);
    });
}

$(function() {	
	$.post("predict_rank.asp",{DPTAREA_CD: "2711-1100010110531", TermCd : "1"},function(html, status){
		$("div.result_cont").html(html);
    });
});
</script>

<p class="page_text">풀서비스의 메인 페이지에서 활용되는 요소입니다.<br>
다른 사용자들이 입력한 정보를 바탕으로 합격선을 예상하고 합격 가능성에 대한 정보를 제공하고 있습니다.<br>
또한 이러한 정보를 표와 그래프를 통하여 사용자가 보다 직관적으로 확인할 수 있도록 하고 있습니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 풀서비스--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#예상점수</p> </li>
                            <li><p>#성적분석</p> </li>
                            <li><p>#통계</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            <div class="page_text_wrap">
                <p class="page_head">해설강의 및 총평</p> 
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                
<!-- HTML -->
<div class="code-box html">
    <section id="f_tabCon" class="full_tabcon">
        <h3 class="blindw">풀서비스 탭 컨텐츠</h3>
        <!-- '총평 및 해설강의'-->
        <div class="ftabcon_inner fcommnt">
            <div class="full_tit_wrp">
                <h4>시험지 및 정답지 다운로드</h4>
            </div>
            <!-- 과목 별 시험지 다운로드 -->
            <div class="subpaperdown_wrp bmb60">
                <h4 class="blindw">시험지 및 해설지 다운로드</h4>
                <ul>
                    <li class="all_line">
                        <strong>전체 시험지</strong>
                        <span><button onclick="downPaper('1')" title="다운로드">다운로드</button></span>
                    </li>
                    <li class="allcomm_line">
                        <strong>전체 정답지</strong>
                        <span><button onclick="downPaper('2')" title="다운로드">다운로드</button></span>
                    </li>
                </ul>
            </div>
            <!-- // 과목 별 시험지 다운로드 -->
            <!-- 총평 및 해설강의 영역-->
            <div class="commntr_view bmb60">
                <div class="full_tit_wrp">
                    <h4 style="display: inline-block">2022 지방직 7급 해설강의</h4>
                </div>
                <!-- lecture -->
                <div class="lecture">
                    <div class="lecList">
                        <div id="chrarea">
                            <!-- 과목 탭 -->
                            <div id="chrtab" class="commonTab lecTab">
                                <h5>과목</h5>
                                <ul class="clearfix" id="ul_subj">
                                    <li id="sub_li61" class="on"><a href="javascript:;" onclick="getTecList('61');return false;"><span>국어</span></a></li>
                                    <li id="sub_li64"><a href="javascript:;" onclick="getTecList('64');return false;"><span>행정학</span></a></li>
                                    <li id="sub_li65"><a href="javascript:;" onclick="getTecList('65');return false;"><span>행정법</span></a></li>
                                    <li id="sub_li81"><a href="javascript:;" onclick="getTecList('81');return false;"><span>경제학</span></a></li>
                                    <li id="sub_li71"><a href="javascript:;" onclick="getTecList('71');return false;"><span>지방자치론</span></a></li>
                                    <li id="sub_li69"><a href="javascript:;" onclick="getTecList('69');return false;"><span>헌법</span></a></li>
                                    <li id="sub_li66"><a href="javascript:;" onclick="getTecList('66');return false;"><span>회계학</span></a></li>
                                    <li id="sub_li58"><a href="javascript:;" onclick="getTecList('58');return false;"><span>건축구조</span></a></li>
                                    <li id="sub_li97"><a href="javascript:;" onclick="getTecList('97');return false;"><span>응용역학</span></a></li>
                                </ul>
                            </div>
                            <!-- // 과목 탭 -->

                            <!-- 선생님 탭 -->
                            <div id="chrtec" class="subTab">
                                <h5>선생님</h5>
                                <ul class="clearfix">    
                                    <li class="on" id="li_eval_tec_"><a href="javascript:;" onclick="getTecEvalList('61','');return false;">전체</a></li>
                                    <li id="li_eval_tec_lyj4718"><a href="javascript:;" onclick="getTecEvalList('61','lyj4718');return false;">이유진</a></li>
                                    <li id="li_eval_tec_gilltoraebi"><a href="javascript:;" onclick="getTecEvalList('61','gilltoraebi');return false;">이윤주</a></li>
                                    <li id="li_eval_tec_zzangyoo"><a href="javascript:;" onclick="getTecEvalList('61','zzangyoo');return false;">장유영</a></li>
                                    <li id="li_eval_tec_mnih74"><a href="javascript:;" onclick="getTecEvalList('61','mnih74');return false;">오훈</a></li>
                                </ul>
                            </div>
                            <!-- // 선생님 탭 -->

                            <!-- 강의 리스트 -->
                            <div class="lectlist">
                                <div class="explana_wrap">
                                    <ul>
                                        <li>
                                            <span class="tea_img"><img src="https://img.megagong.net/profphoto/gong/lyj4718/pro_my.png" alt="선생님 이미지"></span>
                                            <strong class="tea_name">
                                                국어 | 이유진 선생님 <a href="https://www.megagong.net//teacher/home.asp?bcode=lyj4718" target="_blank" title="선생님 홈">선생님 홈</a>
                                                <span>“이럴 거면 그냥 지방직 국어도 언어논리만 봐…”</span>
                                            </strong>
                                            <span class="tea_btn">
                                                <span class="tea_btn_down">
                                                    <!--<a href="javascript:;" onclick="fncDownload('/userdown/fullsvc/fullsvc_97242503582_20221029165316.pdf', '메가공무원 국어 이유진 선생님_2022 지방직 7급 총평_.pdf');" class="down_btn " title="총평 다운로드">총평 <br>다운로드</a>-->
                                                    <a href="javascript:;" class="down_btn " title="총평 다운로드">총평 <br>다운로드</a>
                                                </span>
                                                <span class="tea_btn_view">
                                                    <a href="javascript:;" onclick="GongcampusFreePlay('E','4240','','');" class="down_btn btn2 " title="해설강의 보기">해설강의 <br>보기</a>
                                                </span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="tea_img"><img src="https://img.megagong.net/profphoto/gong/gilltoraebi/pro_my.png" alt="선생님 이미지"></span>
                                            <strong class="tea_name">
                                                국어 | 이윤주 선생님 <a href="https://www.megagong.net//teacher/home.asp?bcode=gilltoraebi" target="_blank" title="선생님 홈">선생님 홈</a>
                                                <span>“[비문학] 추론형 훈련 [어휘] 한자어의 학습 [문학] 핵심 고전시 정리 [문법] 정확한 개념분석”</span>
                                            </strong>
                                            <span class="tea_btn">
                                                <span class="tea_btn_down">
                                                </span>
                                                <span class="tea_btn_view">
                                                    <a href="javascript:;" onclick="GongcampusFreePlay('E','4246','','');" class="down_btn btn2 " title="해설강의 보기">해설강의 <br>보기</a>
                                                </span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="tea_img"><img src="https://img.megagong.net/profphoto/gong/zzangyoo/pro_my.png" alt="선생님 이미지"></span>
                                            <strong class="tea_name">
                                                국어 | 장유영 선생님 <a href="https://www.megagong.net//teacher/home.asp?bcode=zzangyoo" target="_blank" title="선생님 홈">선생님 홈</a>
                                                <span>“비문학이 강화될 거라는 메세지가 담긴 ´출제 방향성이 잘 보인 시험´이었다. ”</span>
                                            </strong>
                                            <span class="tea_btn">
                                                <span class="tea_btn_down">
                                                </span>
                                                <span class="tea_btn_view">
                                                    <a href="javascript:;" onclick="GongcampusFreePlay('E','4299','','');" class="down_btn btn2 " title="해설강의 보기">해설강의 <br>보기</a>
                                                </span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="tea_img"><img src="https://img.megagong.net/profphoto/gong/mnih74/pro_my.png" alt="선생님 이미지"></span>
                                            <strong class="tea_name">
                                                국어 | 오훈 선생님 <a href="https://www.megagong.net//teacher/home.asp?bcode=mnih74" target="_blank" title="선생님 홈">선생님 홈</a>
                                                <span>“최근의 경향과 크게 벗어나지 않은 예상 가능했던 시험”</span>
                                            </strong>
                                            <span class="tea_btn">
                                                <span class="tea_btn_down">
                                                    <!--<a href="javascript:;" onclick="fncDownload('/userdown/fullsvc/fullsvc_83155057455_20221031134943.pdf', '221029_지방직7급_총평_국어_오훈T.pdf');" class="down_btn " title="총평 다운로드">총평 <br>다운로드</a>-->
                                                    <a href="javascript:;" class="down_btn " title="총평 다운로드">총평 <br>다운로드</a>
                                                </span>
                                                <span class="tea_btn_view">
                                                    <a href="javascript:;" onclick="GongcampusFreePlay('E','4236','','');" class="down_btn btn2 " title="해설강의 보기">해설강의 <br>보기</a>
                                                </span>
                                            </span>
                                        </li>
                                    <ul>
                                </div>
                            </div>
                            <!-- // 강의 리스트 -->
                        </div>
                    </div>
                </div>
                <!-- // lecture -->
            </div>
            <!-- //총평 및 해설강의 영역-->
        </div>
        <!-- // '총평 및 해설강의'-->
	</section>
</div>
<script>
function getTecList(sub_cd) {
	///*
	var grd_flg = $("input[name='grd_chk']:checked").val();

	$.get("./eval_tec.asp",{"mode":"tec_list","sub_cd":sub_cd,"grd_flg":grd_flg},function(html) {
		$("div#chrtec").html(html);

		$("#chrtab > ul.clearfix > li").removeClass("on");
		$("#sub_li"+sub_cd).addClass("on")

		getTecEvalList(sub_cd,'');
	});
	//*/
}
</script>

<p class="page_text">풀서비스의 메인 페이지에서 활용되는 요소입니다.<br>
시험지 및 정답지의 다운로드부터 각 과목에 맞는 강사 선생님들의 해설강의와 시험에 대한 총평 정보를 제공하고 있습니다.
</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-javascript act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/s/gong/full/20221029/index.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE<!--- 사용처 : 메가공무원 합격예측 풀서비스--></a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#정답지</p> </li>
                            <li><p>#해설강의</p> </li>
                            <li><p>#시험지</p> </li>
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

<!-- #include virtual = "/inc/bottom.asp"-->