<!-- #include virtual = "/inc/top.asp"-->
<%
dp1 = 2
dp2 = 6
%>
    <!-- #include virtual = "/inc/aside.asp"-->
    
    <div class="page_wrap" id="page_wrap">

        <div class="page_inner">
          <div class="page_name_wrap">
              <h3 class="page_name">TABLE</h3>
              <h3 class="page_name_sub">표</h3>
              <p class="page_sub_text">메가스터디 공무원의 다양한 페이지에서 사용되는 표 기능입니다.<br>
              주로 강좌리스트 및 결제, 질문, 공지 게시글 목록 등 다양한 정보 및 자료들을 정렬하여 사용자에게 전달해줍니다.<br>
              표의 디자인은 모두 동일하게 기존의 양식을 따르는 것을 원칙으로 합니다. </p>
              <div class="page_print"><input type="button" value="인쇄하기" id="print" onclick="window.print()"/></div>
          </div>

            <!--<p class="page_sub_text">여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다. 여기에 줄글로 설명을 적습니다.</p>
            <hr/>-->

            <div class="page_text_wrap">
              <p class="page_head">합격전략LAB - 공무원 가이드 - 공무원이란</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/lab1.png" alt='표 위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="part-wrp">
  <h4>국가직과 지방직</h4>
  <ul class="sub-dash">
      <li>공무원은 국가 또는 지방자치단체의 각종 사무를 처리하는 직업으로, 임용 주체에 따라 국가공무원과 지방공무원으로 구분된다.</li>
      <li>국가공무원은 입법, 사법, 행정부 등 국가 중앙부처에 소속되어 근무하고, 지방공무원은 도청, 시청 등 지방자치단체에 소속되어 근무한다.</li>
  </ul>
  <div class="tbl-wrp">
      <table class="" title="국가직/지방직 에 따른 분류">
          <colgroup>
              <col width="33.3333%">
          </colgroup>
          <thead>
              <tr>
                  <th scope="col">구분</th>
                  <th scope="col">국가직</th>
                  <th scope="col">지방직</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <th>임용 주체</th>
                  <td>대통령</td>
                  <td>지방자치단체장</td>
              </tr>
              <tr>
                  <th>근무기관</th>
                  <td>각 정부부처</td>
                  <td>지방자치단체 내 산하기관</td>
              </tr>
              <tr>
                  <th>거주지 제한</th>
                  <td>없음 (※ 지역구분모집 제외)</td>
                  <td>있음 (※ 서울시 제외)</td>
              </tr>
              <tr>
                  <th>보수체계</th>
                  <td colspan="2">동일</td>
              </tr>
              <tr>
                  <th>시험 일정·과목</th>
                  <td colspan="2">차이 有</td>
              </tr>
          </tbody>
      </table>            
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css"></div>

<p class="page_text">메가공무원 합격전략 연구소에서 사용되는 표 기능입니다.<br> 국가직과 지방직의 공통 및 차이점에 대한 정보를 표 형식을 통해 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/guide/guide.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#표</p> </li>
                            <li><p>#정보</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->





            <div class="page_text_wrap">
              <p class="page_head">합격전략LAB - 공무원 가이드 - 채용절차</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/lab1.png" alt='표 위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="part-wrp">
  <h4>주요 9급 공무원 공개경쟁채용 시험 종류</h4>
  <div class="tbl-wrp">
      <table class="" title="주요 9급 공무원 공개경쟁채용 시험 종류">
          <colgroup>
              <col width="15%">
              <col width="18%">
              <col width="23%">
              <col width="15%">
          </colgroup>
          <thead>
              <tr>
                  <th scope="col">시험명</th>
                  <th scope="col">필기시험시기</th>
                  <th scope="col">주요 채용직렬</th>
                  <th scope="col">출제 기관</th>
                  <th scope="col">특징</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td>국가직 9급</td>
                  <td>매년 4월</td>
                  <td>
                      <ul class="sub-dash half">
                          <li>일반행정</li>
                          <li>교정</li>
                          <li>세무</li>
                          <li>보호</li>
                          <li>고용노동</li>
                          <li>검찰</li>
                          <li>선거행정</li>
                          <li>마약수사</li>
                          <li>직업상담</li>
                          <li>출입국관리</li>
                          <li>관세</li>
                          <li>철도경찰</li>
                          <li>통계</li>
                          <li>기술직군</li>
                      </ul>
                  </td>
                  <td>인사<br class="mo-view">혁신처</td>
                  <td>
                      <ul class="sub-dash">
                          <li>가장 채용인원이 많은 공무원 시험</li>
                          <li>전국 동시 실시</li>
                          <li>행정부 소속 공무원으로 근무</li>
                          <li>일반행정직 내에서 '우정사업본부', '경찰청'은 별도모집</li>
                          <li>지역구분모집의 경우 거주지 제한 적용</li>
                          <li>교정, 철도경찰 체력시험 시행</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <td>지방직(서울시) 9급</td>
                  <td>매년 5~6월</td>
                  <td>
                      <ul class="sub-dash half">
                          <li>일반행정</li>
                          <li>기술직군</li>
                          <li>세무</li>
                          <li>보건</li>
                          <li>사회복지</li>
                          <li>간호</li>
                          <li>사서</li>
                          <li>지적</li>
                          <li>속기</li>
                          <li>운전</li>
                      </ul>                            
                  </td>
                  <td>인사<br class="mo-view">혁신처</td>
                  <td>
                      <ul class="sub-dash">
                          <li>지역별 거주지 제한 적용(단, 서울시는 거주지제한 없음)</li>
                          <li>일부 지자체 시군별 인원모집</li>
                          <li>인사혁신처 미출제 과목 비공개</li>
                          <li>2019년부터 지방직과 서울시 통합</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <td>교육청 9급</td>
                  <td>지방직과 <br>동시실시</td>
                  <td><ul class="sub-dash"><li>교육행정</li></ul></td>
                  <td>인사<br class="mo-view">혁신처</td>
                  <td>
                      <ul class="sub-dash">
                          <li>서울시교육청 거주지 제한 - 수도권</li>
                          <li>경기도교육청 거주지 제한 - 2022년부터 북부/남부 통합선발  시행 및 과거 3년 이상 경기도내 주소이력이 있으면 응시자격부여함</li>
                          <li>그 외 지역 지방교육청별 거주지 제한 적용</li>
                          <li>2019년부터 인사혁신처 출제</li>
                          <li>인사혁신처 미출제 과목 비공개</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <td>국회직 9급</td>
                  <td>특정할 수 <br>없음</td>
                  <td>
                      <ul class="sub-dash half">
                          <li>속기</li>
                          <li>전기</li>
                          <li>경위</li>
                          <li>기계</li>
                          <li>전산</li>
                          <li>통신기술</li>
                          <li>방호</li>
                          <li>방송기술</li>
                      </ul>                            
                  </td>
                  <td>자체 출제</td>
                  <td>
                      <ul class="sub-dash">
                          <li>속기, 경위, 방호직 실기시험</li>
                          <li>속기, 사서, 전산직 응시에 자격증 필요</li>
                          <li>경위, 방호직 신체조건(체격, 시력, 청력) 요구</li>
                          <li>필기시험 오후 실시</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <td>법원직 9급</td>
                  <td>매년 7월</td>
                  <td>
                      <ul class="sub-dash">
                          <li>법원사무</li>
                          <li>등기사무</li>
                      </ul>                            
                  </td>
                  <td>자체 출제</td>
                  <td>
                      <ul class="sub-dash">
                          <li>필수 8과목 응시(과목당 25문제)</li>
                          <li>필기시험 오전 1교시, 오후 2교시</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <td>기상직 9급</td>
                  <td>국가직과 <br>동시실시</td>
                  <td><ul class="sub-dash"><li>기상서기보</li></ul></td>
                  <td>자체 출제</td>
                  <td>
                      <ul class="sub-dash">
                          <li>2020년부터 국어, 영어, 한국사 인사혁신처 출제</li>
                      </ul>
                  </td>
              </tr>
              <tr>
                  <td>지역인재 <br class="mo-view">9급</td>
                  <td>매년 8월</td>
                  <td>
                      <ul class="sub-dash half">
                          <li>일반행정</li>
                          <li>관세</li>
                          <li>회계</li>
                          <li>통계</li>
                          <li>세무</li>
                          <li>기술직군</li>
                      </ul>                            
                  </td>
                  <td>인사<br class="mo-view">혁신처</td>
                  <td>
                      <ul class="sub-dash">
                          <li>특성화고·마이스터고, 고등(기술)학교, 전문대학 졸업자 또는 졸업예정자</li>
                          <li>학교장이 우수한 졸업자 또는 졸업예정자를 인사혁신처에 추천</li>
                          <li>응시 가능 연령 17세 이상</li>
                      </ul>
                  </td>
              </tr>
          </tbody>
      </table>            
  </div>        
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css"></div>

<p class="page_text">메가공무원 합격전략 연구소에서 사용되는 표 기능입니다.<br> 시험 과목에 따른 다양한 정보를 표 형식을 통해 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/guide/guide.asp?tab=2" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#채용절차</p> </li>
                            <li><p>#합격전략</p> </li>
                            <li><p>#표</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->




            <div class="page_text_wrap">
              <p class="page_head">합격전략LAB - 공무원 가이드 - 면접시험</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/lab1.png" alt='표 위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="part-wrp">
  <h4>면접 시험 평정표 <span class="color_blue">(예시 : 지방공무원)</span></h4>
  <div class="tbl-wrp">
      <table title="면접 시험 평정표 정보">
          <colgroup>
              <col width="40%">
              <col width="20%">
              <col width="20%">
              <col width="20%">
          </colgroup>
          <thead>
              <tr>
                  <th rowspan="2">평정요소</th>
                  <th colspan="3">위원평정</th>
              </tr>
              <tr>
                  <th>상</th>
                  <th>중</th>
                  <th>하</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <th style="text-align: left;"><strong>가. 공무원으로서의 정신자세</strong></th>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                  <th style="text-align: left;"><strong>나. 전문지식과 그 응용능력</strong></th>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                  <th style="text-align: left;"><strong>다. 의사표현의 정확성과 논리성</strong></th>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                  <th style="text-align: left;"><strong>라. 예의·품행 및 성실성</strong></th>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                  <th style="text-align: left;"><strong>마. 창의력·의지력 및 발전 가능성</strong></th>
                  <td></td>
                  <td></td>
                  <td></td>
              </tr>
              <tr>
                  <th>계</th>
                  <td style="text-align: right;">개</td>
                  <td style="text-align: right;">개</td>
                  <td style="text-align: right;">개</td>
              </tr>
          </tbody>
      </table>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_common_lab.css"></div>

<p class="page_text">메가공무원 합격전략 연구소에서 사용되는 표 기능입니다.<br> 실제 면접 시험에서 사용되는 평가항목의 예시를 사용자에게 제공하고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>
<pre class="language-html css act"></pre>

                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=lab_main%>/l/gong/guide/guide.asp?tab=6" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#합격전략</p> </li>
                            <li><p>#면접</p> </li>
                            <li><p>#평가항목</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->



            
            <div class="page_text_wrap">
              <p class="page_head">게시글 목록 - 상담 목록</p> 
              <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>
                
              <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
              <div class="position_site"><img src="/images/lab1.png" alt='표 위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div id="mContainer">
  <div class="infoSearch">
    <form name="frmSearch" method="post" action="/c/sobang/qna/list.asp?menu_gubun=&amp;cust=02">
      <input type="hidden" name="bCode" value="">
      <input type="hidden" name="cate" value="">
      <input type="hidden" name="cust" value="02">
      <select name="select_cate" id="select_cate" class="select">
        <option value="">분류전체</option>
        <option value="1">시험제도</option>
        <option value="3">학습방법</option>
        <option value="4">학원수강</option>
        <option value="5">기타</option>
      </select>
      <select name="searchkey" class="select title">
        <option value="BOS_SUBJECT">제목</option>
        <option value="BOS_CONTENT">내용</option>
        <option value="BOS_NAME">작성자</option>
      </select>
      <input name="searchword" type="text" class="ky_box1" value="">
      <a href="javascript:void(0);" class="btn_find">찾기</a>
    </form>
  </div>
  <!-- div class="cust03Tbl1" -->
  <div class="customizeTableName">
    <table width="100%" class="tbl_6">
      <colgroup>
        <col width="45px">
        <col width="*">
        <col width="70px">
        <col width="70px">
        <col width="70px">
        <col width="50px">
      </colgroup>
      <thead>
        <tr>
          <th>번호</th>
          <th>분류/제목</th>
          <th>답변여부</th>
          <th>작성자</th>
          <th>등록일</th>
          <th class="last">조회수</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><img src="<%=img_main%>/icon/ic_notice.gif"></td>
          <td class="aL">
            <span style="color:#0c998d;display:block;font-weight:bold;padding-bottom:5px;">기타</span>
            <a href="javascript:void(0);" class="wideTxt ellipsis" style="display:inline-block;vertical-align:middle">소방</a></td>
          <td>&nbsp;</td>
          <td>메가공무원</td>
          <td>2021.03.31</td>
          <td>5</td>
        </tr>

        <tr>
            <td class="hide">
              <img src="<%=img_main%>/s/common/ic_notice_m.gif" alt="공통">
            </td>
            <td class="aL">
              <a href="javascript:void(0);" class="wideTxt ellipsis" style="vertical-align:middle;display:inline-block">
                test (일행/소방만)
              </a>
            </td>
            <td class="hide">
              <img src="<%=img_main%>/icon/notice_file.gif" width="14" height="13">
            </td>
            <td>2020.12.08</td>
            <td>36</td>
          </tr>
            
        <tr>
          <td>1</td>
          <td class="aL">
            <span style="color:#0c998d;display:block;font-weight:bold;padding-bottom:5px;">시험제도</span>
            <a href="javascript:void(0);" class="wideTxt ellipsis" style="display:inline-block;vertical-align:middle">시험제도가 어떻게 되나요..?<!-- new -->&nbsp;<img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></td>
          <td>준비중</td>
          <td>성연욱</td>
          <td>2022.06.24</td>
          <td>4</td>
        </tr>
            
      </tbody>
    </table>
    <div class="btn_list">
      <a href="javascript:void(0);" class="cmn_btn">
        글쓰기
      </a>
    </div>
  </div><!-- .customizeTableName -->

  <div class="pagenav">
    <a href="javascript:void(0);"><img src="<%=img_main%>/btn/left_aroow1.gif" alt="이전"></a>
    <strong>1</strong>
    <a href="javascript:void(0);">2</a>
    <a href="javascript:void(0);">3</a>
    <a href="javascript:void(0);">4</a>
    <a href="javascript:void(0);">5</a>
    <a href="javascript:void(0);"><img src="<%=img_main%>/btn/right_aroow1.gif" alt="다음"></a>
  </div>
</div></div>

<!-- CSS -->
<div class="code-box css"><link type="text/css" rel="stylesheet" href="<%=url_main%>/common/css/megagong_respons.css">
</div>
<style>
.hd_top .dday_wrap { float:inherit;margin: auto;transform: scale(1.5);text-align: center;}
.hd_top .dday_wrap::before {display:none;}

  @media (max-width: 768px) {
	.customizeTableName col:nth-child(1),.customizeTableName th:nth-child(1),.customizeTableName td:nth-child(1),.customizeTableName col:nth-child(4),.customizeTableName th:nth-child(4),
  .customizeTableName td:nth-child(4){display: none}
	.customizeTableName td[colspan="6"]{display: none;}
	.customizeTableName td[colspan="3"]{display: table-cell;}
	.customizeTableName_refund th:nth-child(4), .customizeTableName_refund td:nth-child(4){display:table-cell;}
	.customizeTableName_refund th:nth-child(5), .customizeTableName_refund td:nth-child(5){display:none;}
	.customizeTableName_refund td[colspan="7"]{display: none;}
	.customizeTableName_refund td[colspan="4"]{display: table-cell;}
    }
</style>

<!-- JS -->
<script>function go_search() {
	var ctrl = document.getElementById("select_cate");
	frmSearch.cate.value = ctrl.value;
	frmSearch.submit();
}

//검색
function gosearch() {
	var obj = document.frmSearch;
	if(!obj.searchkey.value){
		alert("검색종류를 선택해주세요");
		obj.searchkey.focus();
		return;
	}
	if(!obj.searchword.value){
		alert("검색어를 기입해주세요");
		obj.searchword.focus();
		return;
	}
obj.submit();
}</script>

<p class="page_text">문의상담 페이지에서 사용되는 표 기능입니다.<br> 등록한 글은 작성일자의 순서대로 목록에 나타나게 됩니다.<br>
관리자가 작성한 공지 게시글은 작성일자와 무관하게 항상 최상단에 나타나며 사용자가 원활하게 주요 공지를 확인할 수 있도록 돕습니다.</p>

<!-- Code View -->
<pre class="language-html html act direct"><code><div id="mContainer">
  <div class="infoSearch">
    <form name="frmSearch" method="post" action="/c/sobang/qna/list.asp?menu_gubun=&amp;cust=02">
      <input type="hidden" name="bCode" value="">
      <input type="hidden" name="cate" value="">
      <input type="hidden" name="cust" value="02">
      <select name="select_cate" id="select_cate" class="select" onchange="javascript:go_search()">
        <option value="">분류전체</option>
        <option value="1">시험제도</option>
        <option value="3">학습방법</option>
        <option value="4">학원수강</option>
        <option value="5">기타</option>
      </select>
      <select name="searchkey" class="select title">
        <option value="BOS_SUBJECT">제목</option>
        <option value="BOS_CONTENT">내용</option>
        <option value="BOS_NAME">작성자</option>
      </select>
      <input name="searchword" type="text" class="ky_box1" value="">
      <a href="javascript:gosearch();" class="btn_find">찾기</a>
    </form>
  </div>
  <!-- div class="cust03Tbl1" -->
  <div class="customizeTableName">
    <table width="100%" class="tbl_6">
      <colgroup>
        <col width="45px">
        <col width="*">
        <col width="70px">
        <col width="70px">
        <col width="70px">
        <col width="50px">
      </colgroup>
      <thead>
        <tr>
          <th>번호</th>
          <th>분류/제목</th>
          <th>답변여부</th>
          <th>작성자</th>
          <th>등록일</th>
          <th class="last">조회수</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><img src="<%=img_main%>/icon/ic_notice.gif"></td>
          <td class="aL">
            <span style="color:#0c998d;display:block;font-weight:bold;padding-bottom:5px;">기타</span>
            <a href="./view.asp?idx=5813&amp;searchkey=&amp;searchword=&amp;page=1&amp;page_flag=&amp;cate=&amp;menu_gubun=&amp;cust=02" class="wideTxt ellipsis" style="display:inline-block;vertical-align:middle">소방</a></td>
          <td>&nbsp;</td>
          <td>메가공무원</td>
          <td>2021.03.31</td>
          <td>5</td>
        </tr>

        <tr>
            <td class="hide">
              <img src="<%=img_main%>/image/s/common/ic_notice_m.gif" alt="공통">
            </td>
            <td class="aL">
              <a href="./view.asp?idx=3389&amp;cate=01&amp;searchkey=&amp;searchword=&amp;page=1" class="wideTxt ellipsis" style="vertical-align:middle;display:inline-block">
                test (일행/소방만)
              </a>
            </td>
            <td class="hide">
              <img src="<%=img_main%>/icon/notice_file.gif" width="14" height="13">
            </td>
            <td>2020.12.08</td>
            <td>36</td>
          </tr>
            
        <tr>
          <td>1</td>
          <td class="aL">
            <span style="color:#0c998d;display:block;font-weight:bold;padding-bottom:5px;">시험제도</span>
            <a href="./view.asp?idx=5923&amp;searchkey=&amp;searchword=&amp;page=1&amp;page_flag=&amp;cate=&amp;menu_gubun=&amp;cust=02" class="wideTxt ellipsis" style="display:inline-block;vertical-align:middle">시험제도가 어떻게 되나요..?<!-- new -->&nbsp;<img src="<%=img_main%>/common/ic_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin-left:3px;display:inline-block"></a></td>
          <td>준비중</td>
          <td>성연욱</td>
          <td>2022.06.24</td>
          <td>4</td>
        </tr>
            
      </tbody>
    </table>
    <div class="btn_list">
      <a href="#" class="cmn_btn">
        글쓰기
      </a>
    </div>
  </div><!-- .customizeTableName -->

  <div class="pagenav">
    <a href="#"><img src="<%=img_main%>/btn/left_aroow1.gif" alt="이전"></a>
    <strong>1</strong>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#"><img src="<%=img_main%>/btn/right_aroow1.gif" alt="다음"></a>
  </div>
</div></code></pre>
<pre class="language-javascript act direct"><code>function go_search() {
	var ctrl = document.getElementById("select_cate");
	frmSearch.cate.value = ctrl.value;
	frmSearch.submit();
}

//검색
function gosearch() {
	var obj = document.frmSearch;
	if(!obj.searchkey.value){
		alert("검색종류를 선택해주세요");
		obj.searchkey.focus();
		return;
	}
	if(!obj.searchword.value){
		alert("검색어를 기입해주세요");
		obj.searchword.focus();
		return;
	}
obj.submit();
}</code></pre>

                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/c/sobang/qna/list.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#문의상담</p> </li>
                            <li><p>#게시글</p> </li>
                            <li><p>#등록순</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->






            <div class="page_text_wrap">
                <p class="page_head">장바구니 목록 - 데이터 존재</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/table1.png" alt='표 위치' ></div>
                

<!-- HTML -->
<div class="code-box html"><div class="payWrap">
  <form method="post">
    <div class="payList_tbl1">
      <table class="pay_tbl" border="0" cellspacing="0" cellpadding="0" id="cartTbl">
        <colgroup>
          <col width="5%">
          <col width="10%">
          <col width="*">
          <col width="10%">
          <col width="10%">
          <col width="10%">
        </colgroup>
        <thead>
          <tr>
            <th><input type="checkbox" id="product_check_all" /></th>
            <th>직렬/구분</th>
            <th>상품정보</th>
            <th>기간/수량</th>
            <th>상품가격</th>
            <th>주문/삭제</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>
              <input type="checkbox" value="21090" />
            </td>
            <td>강좌</td>
            <td class="aL">
              <span class="name" style="color:#0c998d">고종훈</span>
              <div class="payTxt">[9급][기출] 2022 고종훈 한국사 주제별 기출엄선 400제</div>
            </td>
            <td class="aL2">
              40일<input type="hidden" name="book_cnt" value="" />
            </td>
            <td class="price"><strong>64,000</strong>원</td>
            <td class="btn">
              <a href="JavaScript:;" class="btn_buy">바로결제</a>
              <a href="JavaScript:;" class="btn_delect">삭제</a>
            </td>
          </tr>
          <tr>
            <td>
              <input type="checkbox" value="21091" />
            </td>
            <td>9/7급/교재</td>
            <td class="aL">
              <span class="name" style="color:#0c998d"></span>
              <div class="payTxt">2022 고종훈 한국사 주제별 기출엄선 400제</div>
            </td>
            <td class="aL2">
              <select name="book_cnt" id="book_cnt_1" class="modify">
                <option value="1" selected>1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
              </select>
              <a href="JavaScript:;" class="btn_modify">변경</a>
            </td>
            <td class="price"><strong>13,500</strong>원</td>
            <td class="btn">
              <a href="JavaScript:;" class="btn_buy">바로결제</a>
              <a href="JavaScript:;" class="btn_delect">삭제</a>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </form>
</div></div>

<!-- CSS -->
<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">장바구니 페이지에서 사용되는 표 기능입니다.<br>기존에 담아두었던 강좌들이 가격과 함께 순서대로 목록에 나타나게 됩니다.<br>
하나의 행에 수량 변경 및 주문/삭제 선택버튼을 모두 배치하여 사용자가 보다 더 용이하게 결제 서비스를 이용할 수 있도록 돕고 있습니다.</p>

<!-- Code View -->
<pre class="language-html html act"></pre>


                
                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/pay/my_cart.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#장바구니</p> </li>
                            <li><p>#결제</p> </li>
                            <li><p>#등록순</p> </li>
                        </ul>
                    </div>
                </div>
            </div><!-- .page_text_wrap -->







            <div class="page_text_wrap">
                <p class="page_head">장바구니 목록 - 데이터 없음</p>
                <button class="code_open"><span class="open_bg"></span><span class="open_shape"></span></button>

                <div class="issue-box-wrap"></div><!-- 채팅박스 동적으로 생성 -->
                <div class="position_site"><img src="/images/table1.png" alt='표 위치' ></div>

<!-- HTML -->
<div class="code-box html"><div class="payWrap">
  <form method="post">
    <div class="payList_tbl1">
      <table class="pay_tbl" border="0" cellspacing="0" cellpadding="0" id="cartTbl">
        <colgroup>
          <col width="5%">
          <col width="10%">
          <col width="*">
          <col width="10%">
          <col width="10%">
          <col width="10%">
        </colgroup>
        <thead>
          <tr>
            <th><input type="checkbox" id="product_check_all" /></th>
            <th>직렬/구분</th>
            <th>상품정보</th>
            <th>기간/수량</th>
            <th>상품가격</th>
            <th>주문/삭제</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td colspan="6" height="28" align="center">등록된 상품이 없습니다.</td>
          </tr>
        </tbody>
      </table>
    </div>
  </form>
</div></div>

<!-- CSS -->

<style>
</style>

<!-- JS -->
<script>
</script>

<p class="page_text">장바구니 페이지에서 사용되는 표 기능입니다.<br>사용자가 장바구니에 담아둔 강좌가 없을 경우, 해당 표가 보여지게 됩니다.</p>
<!-- Code View -->
<pre class="language-html html act"></pre>


                <div class="page_bot_wrap">
                    <a class="use_link" href="<%=url_main%>/mypage/pay/my_cart.asp" target="_blank"><i class='bx bx-link'></i>EXAMPLE</a>
                    <div class="cap_tag">
                        <ul>
                            <li><p>#장바구니</p> </li>
                            <li><p>#기본틀</p> </li>
                            <li><p>#데이터없음</p> </li>
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
    .ball.fir.ver3 , .ball.fir.ver4, .ball.fir.ver5, .ball.fir.ver6, .ball.fir.ver1 , .ball.fir.ver2 {animation:inherit;}
    .guide-aside {border-right: none; /*background:rgba(255,255,255,0.2);*/ backdrop-filter: blur( 11px );-webkit-backdrop-filter: blur( 11px );}
    .mContainer a:hover {color:inherit;}

    @media (max-width: 375px) {
      .payWrap .payList_tbl1 .pay_tbl {font-size: 9px;}
      .payWrap .payList_tbl1 .pay_tbl thead th{    height: 35px;}
      .payWrap .payList_tbl1 .pay_tbl tbody tr td .modify {width: 29px;}
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