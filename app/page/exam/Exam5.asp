<script type="text/babel">
  'use strict';

  function Exam5({ title, onChange }) {

const html = `<!-- 메가공무원 9급 합격대비 기초학습 진단평가 S -->
<div id="eventWrap" class="eventWrap">
    <!-- 진단결과분석 S -->
    <div id="apply_result" class="evSection apply_result">
        <div class="inner">
            <div class="title_default">
                <h4>진단 결과 분석</h4>
            </div>

            <div class="box_default">
                <div class="box_title"><span>■</span>&ensp;나의 응시 정보</div>
                <div class="info_wrap type_2">
                    <div class="info flex">
                        <div class="info_title">ㆍ응시 시험</div>
                        <div class="info_content">국가직 9급</div>
                    </div>
                    <div class="info flex">
                        <div class="info_title">ㆍ수험 구분</div>
                        <div class="info_content">예비 수험생</div>
                    </div>
                    <div class="info">
                        <div class="info_title">ㆍ관심 직렬</div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">직군</th>
                                    <td>행정직군</td>
                                    <th scope="row">직렬</th>
                                    <td>일반행정-전국</td>
                                </tr>
                                <tr>
                                    <th scope="row">공통과목</th>
                                    <td> 국어, 영어, 한국사</td>
                                    <th scope="row">전문과목</th>
                                    <td>행정법총론, 행정학개론</td>
                                </tr>
                                <tr id="special_subj_know" style="">
                                    <th scope="row"><div>행정법총론 <br />배경 지식 보유 여부</div></th>
                                    <td>없음</td>
                                    <th scope="row"><div>행정학개론 <br />배경 지식 보유 여부</div></th>
                                    <td>없음</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="info">
                        <div class="info_title">ㆍ수험 정보</div>
                        <table class="info_table">
                            <colgroup>
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                                <col style="width: 21%;">
                                <col style="width: 29%;">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">공무원 준비 이유</th>
                                    <td>고용안정성 때문에</td>
                                    <th scope="row">목표 수험 기간</th>
                                    <td>6개월~1년</td>
                                </tr>
                                <tr>
                                    <th scope="row">직렬 선택 이유</th>
                                    <td>평소에 관심 많은 직렬이어서</td>
                                    <th scope="row">최종 학력</th>
                                    <td>대학(4년제) 졸업</td>
                                </tr>
                                <tr>
                                    <th scope="row">수능 등급</th>
                                    <td colspan="3" class="col_3">
                                        <div class="flex">
                                            <span>국어 1등급</span>
                                            <span>영어 1등급</span>
                                            <span>한국사 1등급</span>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>■</span> 채점 결과</div>
                
                <div class="table_default result_tbl grade_tbl">
                    <!-- PC -->
                    <table class="tbl_pc">
                        <colgroup>
                            <col style="width: 10.2%;">
                            <col style="width: auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="row" class="cr_1">과목</th>
                                <th scope="col" colspan="5" class="cr_2">국어</th>
                                <th scope="col" colspan="5" class="cr_2">영어</th>
                                <th scope="col" colspan="5" class="cr_2">한국사</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="num">
                                <th scope="row" class="cr_1">번호</th>
                                
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>5</td> 
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>5</td> 
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>5</td> 
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">입력답안</th>
                                
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>4</td> 
                                <td>2</td> 
                                <td>1</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>3</td> 
                                <td>2</td> 
                                <td>1</td> 
                                <td>1</td> 
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">정답</th>
                                
                                <td>4</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>4</td> 
                                <td>1</td> 
                                <td>1</td> 
                                <td>1</td> 
                                <td>3</td> 
                                <td>2</td> 
                                <td>3</td> 
                                <td>1</td> 
                                <td>4</td> 
                                <td>4</td> 
                                <td>3</td> 
                                <td>1</td> 
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">정오</th>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_O">○</td>
                                
                                <td class="ans_O">○</td>
                                
                                <td class="ans_O">○</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_O">○</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_O">○</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_X">×</td>
                                
                                <td class="ans_O">○</td>
                                
                            </tr>
                            <tr>
                                <th scope="row" class="cr_1">문제·해설</th>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '1')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '2')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '3')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '4')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('10', '5')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '1')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '2')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '3')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '4')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('11', '5')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '1')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '2')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '3')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '4')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                                <td><a href="javascript: void(0);" onclick="showQst('12', '5')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                                
                            </tr>
                        </tbody>
                    </table>
                    <!-- 모바일 -->
                    <table class="tbl_mo">
                        <colgroup>
                            <col style="width: 16%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                            <col style="width: 16.8%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="cr_1">과목</th>
                                <th scope="col" class="cr_1">번호</th>
                                <th scope="col" class="cr_1">입력답안</th>
                                <th scope="col" class="cr_1">정답</th>
                                <th scope="col" class="cr_1">정오</th>
                                <th scope="col" class="cr_1">문제·해설</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                
                                <th scope="row" rowspan="5" class="cr_2">국어</th>
                                
                                <th scope="row" class="num">1</th>
                                <td>1</td>
                                <td>4</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '1')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">2</th>
                                <td>2</td>
                                <td>2</td>
                                <td class="ans_O">○</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '2')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">3</th>
                                <td>3</td>
                                <td>3</td>
                                <td class="ans_O">○</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '3')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">4</th>
                                <td>4</td>
                                <td>4</td>
                                <td class="ans_O">○</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '4')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">5</th>
                                <td>4</td>
                                <td>1</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('10', '5')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" rowspan="5" class="cr_2">영어</th>
                                
                                <th scope="row" class="num">1</th>
                                <td>2</td>
                                <td>1</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '1')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">2</th>
                                <td>1</td>
                                <td>1</td>
                                <td class="ans_O">○</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '2')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">3</th>
                                <td>2</td>
                                <td>3</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '3')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">4</th>
                                <td>3</td>
                                <td>2</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '4')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">5</th>
                                <td>3</td>
                                <td>3</td>
                                <td class="ans_O">○</td>
                                <td><a href="javascript: void(0);" onclick="showQst('11', '5')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" rowspan="5" class="cr_2">한국사</th>
                                
                                <th scope="row" class="num">1</th>
                                <td>4</td>
                                <td>1</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '1')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">2</th>
                                <td>3</td>
                                <td>4</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '2')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">3</th>
                                <td>2</td>
                                <td>4</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '3')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">4</th>
                                <td>1</td>
                                <td>3</td>
                                <td class="ans_X">×</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '4')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                            <tr>
                                
                                <th scope="row" class="num">5</th>
                                <td>1</td>
                                <td>1</td>
                                <td class="ans_O">○</td>
                                <td><a href="javascript: void(0);" onclick="showQst('12', '5')" class="qst_view" title="문제·해설 보기">문제·해설 보기</a></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="bnr_default quizbank">
                    <a href="/l/share/quizbank/index.asp" target="_blank">더 많은 문제를 맛보고 싶다면? <br class="show-992"><span class="cr_1">9급 공무원 문제은행</span>으로 <span class="cr_2">기출문제 찍먹</span> 바로가기 <i class="arrow"></i></a>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>■</span> 2025 국가직 9급 예상 성적</div>
                <div class="table_default result_tbl predict_tbl">
                    <!-- PC -->
                    <table class="tbl_pc">
                        <colgroup>
                            <col style="width: auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" class="cr_1">총점 평균</th>
                                <th scope="col" class="cr_2">국어</th>
                                <th scope="col" class="cr_2">영어</th>
                                <th scope="col" class="cr_2">한국사</th>
                                <th scope="col" class="cr_2">행정법총론</th>
                                <th scope="col" class="cr_2">행정학개론</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>80점</td>
                                <td>90점</td>
                                <td>80점</td>
                                <td>80점</td>
                                <td>75점</td>
                                <td>75점</td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 모바일 -->
                    <table class="tbl_mo">
                        <colgroup>
                            <col style="width: 40%;">
                            <col style="width: 60%;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row" class="cr_1">총점 평균</th>
                                <td>80점</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">국어</th>
                                <td>90점</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">영어</th>
                                <td>80점</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">한국사</th>
                                <td>80점</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">행정법총론</th>
                                <td>75점</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">행정학개론</th>
                                <td>75점</td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="tiny_noti">
                        <li>※ 2025 예상 성적은 메가공무원 수험생들의 수험 기간별 추적 관리한 성적의 변화를 분석해 도출한 결과입니다.</li>
                        <li>※ 본 자료는 참고로만 활용하시기 바랍니다.</li>
                    </ul>
                </div>
                <div class="bnr_default pass_opinion">
                    <a href="/l/gong/pass_opinion/index.asp" target="_blank">잠깐! 점수가 낮아도 좌절금지 포기금지! <br class="show-992">합격 선배들의 <span class="cr_1">점수 역전</span> <span class="cr_2">합격 수기</span> 보러 가기 <i class="arrow"></i></a>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>■</span> 관심 직렬 합격 예측</div>
                <div class="table_default result_tbl pass_tbl">
                    <!-- PC -->
                    <table class="tbl_pc">
                        <colgroup>
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 13.2%">
                            <col style="width: 17%">
                            <col style="width: 17%">
                        </colgroup>
                        <tbody>
                            <tr>
                                
                                <th rowspan="3"><span class="badge"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_pass_badge2.png" alt="합격도전"></span></th>
                                
                                <th scope="col" colspan="7" class="cr_1">국가직 9급 행정직군&nbsp;일반행정-전국<sup>*</sup></th>
                                <!--<th scope="col" colspan="7" class="cr_1">국가직 9급 행정직군 고용노동*</th>-->
                            </tr>
                            <tr>
                                <th scope="col" class="cr_2">선발인원</th>
                                <th scope="col" class="cr_2">경쟁률<sup>**</sup></th>
                                <th scope="col" class="cr_2">실 경쟁률<sup>***</sup></th>
                                <th scope="col" class="cr_2">합격선</th>
                                <th scope="col" colspan="2" class="cr_2">전문과목 학습법 보러가기</th>
                            </tr>
                            <tr>
                                <td>344</td>
                                <td>77.5</td>
                                <td>58</td>
                                <td>90</td>
                                
                                <td><a href="javascript:;" onclick="openSubjGuide('2','1');">행정법총론 &gt;</a></td>
                                <td><a href="javascript:;" onclick="openSubjGuide('2','2');">행정학개론 &gt;</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <!-- 모바일 -->
                    <table class="tbl_mo">
                        <colgroup>
                            <col style="width: 25%">
                            <col style="width: 35%">
                            <col style="width: 40%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" colspan="3" class="cr_1">국가직 9급 행정직군&nbsp;일반행정-전국<sup>*</sup></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                
                                <th rowspan="4"><span class="badge"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_pass_badge2.png" alt="합격도전"></span></th>
                                
                                <th scope="row" class="cr_2">선발인원</th>
                                <td>344</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">경쟁률<sup>**</sup></th>
                                <td>77.5</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">실 경쟁률<sup>***</sup></th>
                                <td>58</td>
                            </tr>
                            <tr>
                                <th scope="row" class="cr_2">합격선</th>
                                <td>90</td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="tiny_noti">
                        <li>* 2024년 국가직 9급 모집정보 기준</li>
                        <li>** 경쟁률: 해당 직렬(지역)에 지원한 인원 ÷ 선발인원</li>
                        <li>*** 실 경쟁률: 실제로 시험에 응시한 인원 ÷ 선발인원</li>
                    </ul>
                </div>
            </div>

            <div class="box_default">
                <div class="box_title"><span>■</span> 관심 직렬 3개년 모집</div>
                <div class="part-wrp">
                    <div id="insRecent">
                        <h4 style="display: none;">최근 3개년 추이</h4>
                        <div class="pc-view">
                            <table title="2차필기">
                                <colgroup>
                                    <col width="8%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">년도</th>
                                        <th scope="col">모집(명)</th>
                                        <th scope="col">출원(명)</th>
                                        <th scope="col">경쟁률(:1)</th>
                                        <th scope="col">응시(명)</th>
                                        <th scope="col">응시율(%)</th>
                                        <th scope="col">실 경쟁률(:1)</th>
                                        <th scope="col">필기합격(명)</th>
                                        <th scope="col">합격선</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                    <tr>
                                        <td>2023</td>
                                        <td>
                                            411<br />(<span class="type2"></span>45)
                                        </td>
                                        <td>
                                            30,206<br />(<span class="type2"></span>12,622)
                                        </td>
                                        <td>
                                            73.5
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>20.4)
                                        </td>
                                        <td>
                                            23,349<br />(<span class="type2"></span>9,541)
                                        </td>
                                        <td>
                                            77.3<br />(<span class="type1"></span>0.5)
                                        </td>
                                        <td>
                                            56.8
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>15.3)
                                        </td>
                                        <td>
                                            603<br />(<span class="type1"></span>75)
                                        </td>
                                        <td>
                                            89.00<br />(<span class="type2"></span>2.00)
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>2022</td>
                                        <td>
                                            456<br />(<span class="type1"></span>40)
                                        </td>
                                        <td>
                                            42,828<br />(<span class="type1"></span>1,074)
                                        </td>
                                        <td>
                                            93.9
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.5)
                                        </td>
                                        <td>
                                            32,890<br />(<span class="type1"></span>118)
                                        </td>
                                        <td>
                                            76.8<br />(<span class="type2"></span>1.7)
                                        </td>
                                        <td>
                                            72.1
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.7)
                                        </td>
                                        <td>
                                            528<br />(<span class="type2"></span>27)
                                        </td>
                                        <td>
                                            91.00
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <td>2021</td>
                                        <td>
                                            416
                                        </td>
                                        <td>
                                            41,754
                                        </td>
                                        <td>
                                            100.4
                                                <!--  : 1 -->
                                            
                                        </td>
                                        <td>
                                            32,772
                                        </td>
                                        <td>
                                            78.5
                                        </td>
                                        <td>
                                            78.8
                                                <!--  : 1 -->
                                            
                                        </td>
                                        <td>
                                            555
                                        </td>
                                        <td>
                                            400.84
                                        </td>
                                    </tr>
                                
                                </tbody>
                            </table>
                            
                            <p class="tiny-noti">※ 최근 3개년 합격선은 조정점수(2021년), 총점 평균(2022년,2023년) 이 반영된 점수로, 이는 참고자료로 사용하시길 바랍니다.</p>        
                            
                        </div>
                        <div class="mo-view" style="margin-top:30px">
                            <table title="2차필기">
                                <colgroup>
                                    <col width="25%">
                                    <col width="25%">
                                    <col width="25%">
                                    <col width="25%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">년도</th>
                                        <th scope="col">2023</th>
                                        <th scope="col">2022</th>
                                        <th scope="col">2021</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>모집(명)</th>
                                        <td>
                                            411<br />(<span class="type2"></span>45)
                                        </td>
                                        <td>
                                            456<br />(<span class="type1"></span>40)
                                        </td>
                                        <td>
                                            416
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>출원(명)</th>
                                        <td>
                                            30,206<br />(<span class="type2"></span>12,622)
                                        </td>
                                        <td>
                                            42,828<br />(<span class="type1"></span>1,074)
                                        </td>
                                        <td>
                                            41,754
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>경쟁률(:1)</th>
                                        <td>
                                            73.5
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>20.4)
                                        </td>
                                        <td>
                                            93.9
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.5)
                                        </td>
                                        <td>
                                            100.4
                                                <!--  : 1 -->
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>응시(명)</th>
                                        <td>
                                            23,349<br />(<span class="type2"></span>9,541)
                                        </td>
                                        <td>
                                            32,890<br />(<span class="type1"></span>118)
                                        </td>
                                        <td>
                                            32,772
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>응시율(%)</th>
                                        <td>
                                            77.3<br />(<span class="type1"></span>0.5)
                                        </td>
                                        <td>
                                            76.8<br />(<span class="type2"></span>1.7)
                                        </td>
                                        <td>
                                            78.5
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>실 경쟁률(:1)</th>
                                        <td>
                                            56.8
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>15.3)
                                        </td>
                                        <td>
                                            72.1
                                                <!--  : 1 -->
                                                <br />(<span class="type2"></span>6.7)
                                        </td>
                                        <td>
                                            78.8
                                            <!--  : 1 -->
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>필기합격(명)</th>
                                        <td>
                                            603<br />(<span class="type1"></span>75)
                                        </td>
                                        <td>
                                            528<br />(<span class="type2"></span>27)
                                        </td>
                                        <td>
                                            555
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>합격선</th>
                                        <td>
                                            89.00<br />(<span class="type2"></span>2.00)
                                        </td>
                                        <td>
                                            91.00
                                        </td>
                                        <td>
                                            400.84
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <p class="tiny-noti">※ 최근 3개년 합격선은 조정점수(2021년), 총점 평균(2022년,2023년) 이 반영된 점수로, 이는 참고자료로 사용하시길 바랍니다. </p>        
                            
                        </div>
                        <div class="series_graph">
                            <div id="chart1" style="height: 350px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 333px; height: 350px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="333" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_0"><clipPath id="_ABSTRACT_RENDERER_ID_1"><rect x="64" y="67" width="206" height="216"></rect></clipPath></defs><rect x="0" y="0" width="333" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="47.05" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">모집인원</text><rect x="64" y="36" width="206" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="67" width="206" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://labdev.megagong.net/l/exam/gong/2024_2/apply_result.asp#_ABSTRACT_RENDERER_ID_1)"><g><rect x="64" y="282" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="239" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="196" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="153" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="110" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="67" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="261" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="218" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="175" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="132" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="89" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><rect x="82" y="257" width="34" height="1788" stroke="#a6bce9" stroke-width="1" fill="#a6bce9"></rect><rect x="150" y="85" width="34" height="1960" stroke="#a6bce9" stroke-width="1" fill="#a6bce9"></rect><rect x="218" y="279" width="34" height="1766" stroke="#a6bce9" stroke-width="1" fill="#a6bce9"></rect></g><g><rect x="99" y="245" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="167" y="85" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="235" y="267" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="98.66666666666666" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="middle" x="167" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2022</text></g><g><text text-anchor="middle" x="235.33333333333331" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2023</text></g><g><text text-anchor="end" x="53" y="286.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">410</text></g><g><text text-anchor="end" x="53" y="243.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">420</text></g><g><text text-anchor="end" x="53" y="200.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">430</text></g><g><text text-anchor="end" x="53" y="157.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">440</text></g><g><text text-anchor="end" x="53" y="114.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">450</text></g><g><text text-anchor="end" x="53" y="71.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">460</text></g></g><g><g><g><rect x="88.5" y="233.5" width="22" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="99" y="243.35" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#7484a3" aria-hidden="true">416</text><text text-anchor="middle" x="99" y="243.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#7484a3">416</text></g><rect x="90.5" y="234" width="17" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="156.5" y="96.5" width="22" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="167" y="106.35" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#7484a3" aria-hidden="true">456</text><text text-anchor="middle" x="167" y="106.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#7484a3">456</text></g><rect x="158.5" y="97" width="17" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="224.5" y="255.5" width="22" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="235" y="265.35" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#7484a3" aria-hidden="true">411</text><text text-anchor="middle" x="235" y="265.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#7484a3">411</text></g><rect x="227" y="256" width="16" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>모집인원</th><th>모집인원</th></tr></thead><tbody><tr><td>2021</td><td>416</td></tr><tr><td>2022</td><td>456</td></tr><tr><td>2023</td><td>411</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 343px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">모집인원</div><div></div></div></div>
                            <div id="chart2" style="height: 350px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 333px; height: 350px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="333" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_2"><clipPath id="_ABSTRACT_RENDERER_ID_3"><rect x="64" y="67" width="206" height="216"></rect></clipPath></defs><rect x="0" y="0" width="333" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="47.05" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">경쟁률</text><rect x="64" y="36" width="206" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="67" width="206" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://labdev.megagong.net/l/exam/gong/2024_2/apply_result.asp#_ABSTRACT_RENDERER_ID_3)"><g><rect x="64" y="282" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="228" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="175" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="121" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="67" width="206" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="255" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="201" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="148" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="94" width="206" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><path d="M98.66666666666666,119.10000000000002L167,154.03749999999997L235.33333333333331,263.6875" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path></g><g><rect x="98.66666666666666" y="107.10000000000002" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="167" y="142.03749999999997" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="235.33333333333331" y="251.6875" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="98.66666666666666" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="middle" x="167" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2022</text></g><g><text text-anchor="middle" x="235.33333333333331" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2023</text></g><g><text text-anchor="end" x="53" y="286.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">70</text></g><g><text text-anchor="end" x="53" y="232.6" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">80</text></g><g><text text-anchor="end" x="53" y="178.85" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">90</text></g><g><text text-anchor="end" x="53" y="125.1" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="53" y="71.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">110</text></g></g><g><g><g><rect x="84.5" y="95.5" width="30" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="98.66666666666666" y="105.45000000000002" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">100.4</text><text text-anchor="middle" x="98.66666666666666" y="105.45000000000002" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">100.4</text></g><rect x="86.16666666666666" y="96.10000000000002" width="25" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="155.5" y="130.5" width="24" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="167" y="140.38749999999996" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">93.9</text><text text-anchor="middle" x="167" y="140.38749999999996" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">93.9</text></g><rect x="157.5" y="131.03749999999997" width="19" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="223.5" y="239.5" width="24" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="235.33333333333331" y="250.0375" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">73.5</text><text text-anchor="middle" x="235.33333333333331" y="250.0375" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">73.5</text></g><rect x="225.83333333333331" y="240.6875" width="19" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>연도</th><th>경쟁률</th></tr></thead><tbody><tr><td>2021</td><td>100.4</td></tr><tr><td>2022</td><td>93.9</td></tr><tr><td>2023</td><td>73.5</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 343px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">경쟁률</div><div></div></div></div>
                            
                            <div id="chart3" style="height: 350px;"><div style="position: relative;"><div dir="ltr" style="position: relative; width: 332px; height: 350px;"><div aria-label="A chart." style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;"><svg width="332" height="350" aria-label="A chart." style="overflow: hidden;"><defs id="_ABSTRACT_RENDERER_ID_4"><clipPath id="_ABSTRACT_RENDERER_ID_5"><rect x="64" y="67" width="205" height="216"></rect></clipPath></defs><rect x="0" y="0" width="332" height="350" stroke="none" stroke-width="0" fill="#ffffff"></rect><g><text text-anchor="start" x="64" y="47.05" font-family="Arial" font-size="13" font-weight="bold" stroke="none" stroke-width="0" fill="#000000">합격선</text><rect x="64" y="36" width="205" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g><g><rect x="64" y="67" width="205" height="216" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g clip-path="url(https://labdev.megagong.net/l/exam/gong/2024_2/apply_result.asp#_ABSTRACT_RENDERER_ID_5)"><g><rect x="64" y="282" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="239" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="196" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="153" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="110" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="67" width="205" height="1" stroke="none" stroke-width="0" fill="#cccccc"></rect><rect x="64" y="261" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="218" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="175" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="132" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect><rect x="64" y="89" width="205" height="1" stroke="none" stroke-width="0" fill="#ebebeb"></rect></g><g><rect x="64" y="282" width="205" height="1" stroke="none" stroke-width="0" fill="#333333"></rect></g><g><path d="M98.5,110.1388L166.5,243.37L234.5,244.23000000000002" stroke="#3366cc" stroke-width="2" fill-opacity="1" fill="none"></path></g><g><rect x="98.5" y="98.1388" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="166.5" y="231.37" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect><rect x="234.5" y="232.23000000000002" width="1" height="12" stroke="none" stroke-width="0" fill="#999999"></rect></g></g><g></g><g><g><text text-anchor="middle" x="98.5" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2021</text></g><g><text text-anchor="middle" x="166.5" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2022</text></g><g><text text-anchor="middle" x="234.5" y="299.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#222222">2023</text></g><g><text text-anchor="end" x="53" y="286.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">0</text></g><g><text text-anchor="end" x="53" y="243.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">100</text></g><g><text text-anchor="end" x="53" y="200.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">200</text></g><g><text text-anchor="end" x="53" y="157.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">300</text></g><g><text text-anchor="end" x="53" y="114.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">400</text></g><g><text text-anchor="end" x="53" y="71.35" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#444444">500</text></g></g><g><g><g><rect x="80.5" y="86.5" width="37" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="98.5" y="96.4888" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">400.84</text><text text-anchor="middle" x="98.5" y="96.4888" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">400.84</text></g><rect x="83" y="87.1388" width="31" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="151.5" y="219.5" width="31" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="166.5" y="229.72" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">91.00</text><text text-anchor="middle" x="166.5" y="229.72" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">91.00</text></g><rect x="154" y="220.37" width="25" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g><g><g><rect x="219.5" y="220.5" width="31" height="13" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect><g><text text-anchor="middle" x="234.5" y="230.58" font-family="Arial" font-size="11" stroke="#ffffff" stroke-width="3" fill="#3366cc" aria-hidden="true">89.00</text><text text-anchor="middle" x="234.5" y="230.58" font-family="Arial" font-size="11" stroke="none" stroke-width="0" fill="#3366cc">89.00</text></g><rect x="222" y="221.23000000000002" width="25" height="11" stroke="none" stroke-width="0" fill-opacity="0" fill="#ffffff"></rect></g></g></g></g><g></g></svg><div aria-label="A tabular representation of the data in the chart." style="position: absolute; left: -10000px; top: auto; width: 1px; height: 1px; overflow: hidden;"><table><thead><tr><th>연도</th><th>합격선</th></tr></thead><tbody><tr><td>2021</td><td>400.84</td></tr><tr><td>2022</td><td>91</td></tr><tr><td>2023</td><td>89</td></tr></tbody></table></div></div></div><div aria-hidden="true" style="display: none; position: absolute; top: 360px; left: 342px; white-space: nowrap; font-family: Arial; font-size: 13px; font-weight: bold;">합격선</div><div></div></div></div> 
                        </div>
                    </div>
                </div>
                <ul class="tiny_noti">
                    <li>※ 더 많은 직렬의 정보가 궁금하다면? 모집정보 <a href="/l/gong/guide/series.asp" target="_blank">바로가기 &gt;</a></li>
                </ul>
            </div>

            <div class="box_default">
                <div class="box_title"><span>■</span>&ensp;2024 국가직 9급 필기합격선</div>
                <div class="result_tab">
                    <ul>
                        <li class="on"><a href="javascript:;" onclick="clickTabCutline('1', this);" title="행정직군">행정직군</a></li>
                        <li><a href="javascript:;" onclick="clickTabCutline('2', this);" title="기술직군">기술직군</a></li>
                    </ul>
                </div>
                <div class="graph_tab">
                    <!-- S: 행정직 , 기술직 ./apply_result_cutline.asp -->
                    <div class="grh">
                        <img src="<%=img_main%>/m/2024/0708_exam/result_graph_1.png" alt="-" class="hide-768">
                        <img src="<%=img_main%>/m/2024/0708_exam/result_graph_1_mo.png" alt="-" class="show-768">
                    </div>
                    <ul class="radio_list">
                        <li><label for="tblSort1_1"><input type="radio" name="tblSort" id="tblSort1_1" value="1" checked><span>합격선 순</span></label></li>
                        <li><label for="tblSort1_2"><input type="radio" name="tblSort" id="tblSort1_2" value="2"><span>실 경쟁률 순</span></label></li>
                        <li><label for="tblSort1_3"><input type="radio" name="tblSort" id="tblSort1_3" value="3"><span>선발인원 순</span></label></li>
                    </ul>
                    <div id="cutline_table" class="table_default result_tbl cut_tbl">
                        <table>
                            <colgroup>
                                <col style="width: 18%">
                                <col style="width: 14%">
                                <col style="width: 14%">
                                <col style="width: 14%">
                                <col style="width: 28%">
                                <col style="width: 12%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col" rowspan="2" class="cr_1">직렬-지역 <br /><span>(각 직렬 클릭 시 <br />3개년 모집 정보 확인 가능)</span></th>
                                    <th scope="col" colspan="3" class="cr_1">2024</th>
                                    <th scope="col" rowspan="2" class="cr_1">
                                        <div class="hide-768">전문과목 <br /><span>(각 과목 클릭 시 맛보기 문제 및 <br class="show-992" />정답 확인 가능)</span></div>
                                        <div class="show-768" />전문과목 <br />맛보기 클릭</div>
                                    </th>
                                    <th scope="col" rowspan="2" class="cr_1">합격 가능 <br />예측</th>
                                </tr>
                                <tr>
                                    <th scope="col" class="cr_1">선발<br class="show-768">인원(명)</th>
                                    <th scope="col" class="cr_1">실 <br class="show-768">경쟁률(:1)</th>
                                    <th scope="col" class="cr_1">필기<br class="show-768">합격선(점)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- 관심직렬: tr 클래스 itrt, cr_2 -->
                                <!-- 합격가능 result_cut_stamp1.png -->
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110061" title="3개년 모집 정보" target="_blank">교육행정</a></th>
                                    <td>50</td>
                                    <td>167.4</td>
                                    <td>93</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('교육학개론', '1');">교육학개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110041" title="3개년 모집 정보" target="_blank">고용노동</a></th>
                                    <td>20</td>
                                    <td>35.8</td>
                                    <td>92</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('노동법개론', '1');">노동법개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr class="itrt cr_2">
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1011410110531" title="3개년 모집 정보" target="_blank">일반행정-전국</a></th>
                                    <td>344</td>
                                    <td>58</td>
                                    <td>90</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정학개론', '1');">행정학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010370031" title="3개년 모집 정보" target="_blank">검찰</a></th>
                                    <td>245</td>
                                    <td>16.8</td>
                                    <td>87</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형법', '1');">형법 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사소송법', '1');">형사소송법 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1011010110571" title="3개년 모집 정보" target="_blank">일반행정(우정)-서울</a></th>
                                    <td>69</td>
                                    <td>14.7</td>
                                    <td>87</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정학개론', '1');">행정학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110541" title="3개년 모집 정보" target="_blank">일반행정(경찰)</a></th>
                                    <td>73</td>
                                    <td>26.6</td>
                                    <td>87</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정학개론', '1');">행정학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010110331" title="3개년 모집 정보" target="_blank">선거행정</a></th>
                                    <td>56</td>
                                    <td>12.6</td>
                                    <td>86</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('공직선거법', '1');">공직선거법 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010320731" title="3개년 모집 정보" target="_blank">직업상담</a></th>
                                    <td>14</td>
                                    <td>28.4</td>
                                    <td>86</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('노동법개론', '1');">노동법개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('직업상담·심리학개론', '1');">직업상담·심리학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1011910110571" title="3개년 모집 정보" target="_blank">일반행정(우정)-인천·경기</a></th>
                                    <td>150</td>
                                    <td>12.7</td>
                                    <td>86</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정학개론', '1');">행정학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010380181" title="3개년 모집 정보" target="_blank">마약수사</a></th>
                                    <td>31</td>
                                    <td>13.7</td>
                                    <td>85</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형법', '1');">형법 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사소송법', '1');">형사소송법 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010360283" title="3개년 모집 정보" target="_blank">보호(여)</a></th>
                                    <td>21</td>
                                    <td>49.6</td>
                                    <td>85</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사정책개론', '1');">형사정책개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('사회복지학개론', '1');">사회복지학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010330051" title="3개년 모집 정보" target="_blank">관세</a></th>
                                    <td>82</td>
                                    <td>11.7</td>
                                    <td>85</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('관세법개론', '1');">관세법개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('회계원리', '1');">회계원리 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010390761" title="3개년 모집 정보" target="_blank">출입국관리</a></th>
                                    <td>165</td>
                                    <td>8.4</td>
                                    <td>82</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('행정법총론', '1');">행정법총론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('국제법개론', '1');">국제법개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010360272" title="3개년 모집 정보" target="_blank">보호(남)</a></th>
                                    <td>50</td>
                                    <td>16.1</td>
                                    <td>82</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사정책개론', '1');">형사정책개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('사회복지학개론', '1');">사회복지학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp2.png" alt="합격도전"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010400741" title="3개년 모집 정보" target="_blank">철도경찰</a></th>
                                    <td>23</td>
                                    <td>7.1</td>
                                    <td>77</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사소송법개론', '1');">형사소송법개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형법총론', '1');">형법총론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="합격가능"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010340791" title="3개년 모집 정보" target="_blank">통계</a></th>
                                    <td>86</td>
                                    <td>4.6</td>
                                    <td>75</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('통계학개론', '1');">통계학개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('경제학개론', '1');">경제학개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="합격가능"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010350093" title="3개년 모집 정보" target="_blank">교정(여)</a></th>
                                    <td>112</td>
                                    <td>9.6</td>
                                    <td>73</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('교정학개론', '1');">교정학개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사소송법개론', '1');">형사소송법개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="합격가능"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010120361" title="3개년 모집 정보" target="_blank">세무</a></th>
                                    <td>1,023</td>
                                    <td>5.9</td>
                                    <td>70</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('세법개론', '1');">세법개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('회계학', '1');">회계학 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="합격가능"></span>
                                        
                                    </td>
                                </tr>
                                
                                <tr>
                                    <th scope="row"><a href="/l/gong/guide/series.asp?exam_gbn=9&amp;exam_gbn_2=1&amp;p_code=1911-1000010350082" title="3개년 모집 정보" target="_blank">교정(남)</a></th>
                                    <td>699</td>
                                    <td>6.4</td>
                                    <td>63</td>
                                    <td class="subject">
                                        <div>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('교정학개론', '1');">교정학개론 &gt;</a>
                                            <a href="javascript: void(0);" onclick="qst_popupOn2('형사소송법개론', '1');">형사소송법개론 &gt;</a>
                                        </div>
                                    </td>
                                    <td>
                                        
                                        <span class="result"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_cut_stamp1.png" alt="합격가능"></span>
                                        
                                    </td>
                                </tr>
                                
                            </tbody>
                        </table>
                        <ul class="tiny_noti">
                            <li>※ 본 기초학습 진단평가의 결과와 2024년 필기합격선을 반영하여 <i class="img"><img src="https://design.megagong.net/image/m/2024/0708_exam/result_tiny.png" alt="합격도전 합격가능"></i>으로 합격 가능성을 예측하였습니다.</li>
                        </ul></div>
                    <!-- E: 행정직, 기술직 ./apply_result_cutline.asp -->
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
            <div class="question_wrap" id="questionBox">
                <!-- 문제 및 해설 불러오기 -->
                <div class="question">
                    <!-- 국어 S -->
                    <div id="q10_1" class="q1_1">
                        <div class="tit">1. ㉠을 평가한 내용으로 적절한 것만을 &lt;보기&gt;에서 모두 고르면?</div>
                        <div class="box">
                            <p>흔히 ‘일곱 빛깔 무지개’라는 말을 한다. 서로 다른 빛깔의 띠 일곱 개가 무지개를 이루고 있다는 뜻이다. 영어나 프랑스어를 비롯해 다른 자연 언어들에도 이와 똑같은 표현이 있는데, 이는 해당 자연 언어가 무지개의 색상에 대응하는 색채 어휘를 일곱 개씩 지녔기 때문이라고 할 수 있다.</p>
                            <p>언어학자 사피어와 그의 제자 워프는 여기서 어떤 영감을 얻었다. 그들은 서로 다른 언어를 쓰는 아메리카 원주민들에게 무지개의 띠가 몇 개냐고 물었다. 대답은 제각각 달랐다. 사피어와 워프는 이 설문 결과에 기대어, 사람들은 자신의 언어에 얽매인 채 세계를 경험한다고 판단했다. 이 판단으로부터, “우리는 모국어가 그어놓은 선에 따라 자연세계를 분단한다.”라는 유명한 발언이 나왔다. 이에 따르면 특정 현상과 관련한 단어가 많을수록 해당 언어권의 화자들은 그 현상에 대해 심도 있게 경험하는 것이다. 언어가 의식을, 사고와 세계관을 결정한다는 이 견해는 ㉠<u>사피어-워프가설</u>이라 불리며 언어학과 인지과학의 논란거리가 되어왔다.</p>
                        </div>
                        <div class="box">
                            <div class="example">&lt;보기&gt;</div>
                            <ul class="choices">
                                <li><span class="mark">ㄱ.</span>눈[雪]을 가리키는 단어를 4개 지니고 있는 이누이트족이 1개 지니고 있는 영어 화자들보다 눈을 넓고 섬세하게 경험한다는 것은 ㉠을 강화한다.</li>
                                <li><span class="mark">ㄴ.</span>수를 세는 단어가 ‘하나’, ‘둘’, ‘많다’ 3개뿐인 피라하족의 사람들이 세 개 이상의 대상을 모두 ‘많다’고 인식하는 것은 ㉠을 강화한다.</li>
                                <li><span class="mark">ㄷ.</span>색채 어휘가 적은 자연언어 화자들이 색채 어휘가 많은 자연언어 화자들에 비해 색채를 구별하는 능력이 뛰어나다는 것은 ㉠을 약화한다.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>ㄱ</li>
                            <li><span class="mark">②</span>ㄱ, ㄴ</li>
                            <li><span class="mark">③</span>ㄴ, ㄷ</li>
                            <li><span class="mark">④</span>ㄱ, ㄴ, ㄷ</li>
                        </ol>
                    </div>
                    <div id="q10_2" class="q1_2" style="display: none;">
                        <div class="tit">2. 다음 글에서 추론한 내용으로 가장 적절한 것은?</div>
                        <div class="box">
                            <p>‘크로노토프’는 그리스어로 시간과 공간을 뜻하는 두 단어를 결합한 것으로, 시공간을 통합적으로 이해하기 위한 개념이다. 크로노토프의 관점에서 보면 고소설과 근대소설의 차이를 명확하게 파악할 수 있다.</p>
                            <p>고소설에는 돌아가야 할 곳으로서의 원점이 존재한다. 그것은 영웅소설에서라면 중세의 인륜이 원형대로 보존된 세계이고, 가정소설에서라면 가장을 중심으로 가족 구성원들이 평화롭게 공존하는 가정이다. 고소설에서 주인공은 적대자에 의해 원점에서 분리되어 고난을 겪는다. 그들의 목표는 상실한 원점을 회복하는 것, 즉 그곳에서 향유했던 이상적 상태로 ㉠ <u>돌아가는 </u>것이다. 주인공과 적대자 사이의 갈등이 전개되는 시간을 서사적 현재라 한다면, 주인공이 도달해야 할 종결점은 새로운 미래가 아니라 다시 도래할 과거로서의 미래이다. 이러한 시공간의 배열을 ‘회귀의 크로노토프’라고 한다.</p>
                            <p>근대소설 「무정」은 회귀의 크로노토프를 부정한다. 이것은 주인공인 이형식과 박영채의 시간 경험을 통해 확인된다. 형식은 고아지만 이상적인 고향의 기억을 갖고 있다. 그것은 박 진사의 집에서 영채와 함께하던 때의 기억이다. 이는 영채도 마찬가지기에, 그들에게 박 진사의 집으로 표상되는 유년의 과거는 이상적 원점의 구실을 한다. 박 진사의 죽음은 그들에게 고향의 상실을 상징한다. 두 사람의 결합이 이상적 상태의 고향을 회복할 수 있는 유일한 방법이겠지만, 그들은 끝내 결합하지 못한다. 형식은 새 시대의 새 인물이 되어야 한다고 생각하며 과거로의 복귀를 거부한다.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>「무정」과 고소설은 회귀의 크로노토프를 부정한다는 점에서 공통적이다.</li>
                            <li><span class="mark">②</span>영웅소설의 주인공과 「무정」의 이형식은 그들의 이상적 원점을 상실했다는 공통점을 가지고 있다.</li>
                            <li><span class="mark">③</span>「무정」에서 이형식이 박영채와 결합했다면 새로운 미래로서의 종결점에 도달할 수 있었을 것이다</li>
                            <li><span class="mark">④</span>가정소설은 가족 구성원들이 평화롭게 공존하는 결말을 통해 상실했던 원점으로의 복귀를 거부한다.</li>
                        </ol>
                    </div>
                    <div id="q10_3" class="q1_3" style="display: none;">
                        <div class="tit">3. 문맥상 ㉠의 의미와 가장 가까운 것은?</div>
                        <div class="box">
                            <p>‘크로노토프’는 그리스어로 시간과 공간을 뜻하는 두 단어를 결합한 것으로, 시공간을 통합적으로 이해하기 위한 개념이다. 크로노토프의 관점에서 보면 고소설과 근대소설의 차이를 명확하게 파악할 수 있다.</p>
                            <p>고소설에는 돌아가야 할 곳으로서의 원점이 존재한다. 그것은 영웅소설에서라면 중세의 인륜이 원형대로 보존된 세계이고, 가정소설에서라면 가장을 중심으로 가족 구성원들이 평화롭게 공존하는 가정이다. 고소설에서 주인공은 적대자에 의해 원점에서 분리되어 고난을 겪는다. 그들의 목표는 상실한 원점을 회복하는 것, 즉 그곳에서 향유했던 이상적 상태로 ㉠ <u>돌아가는 </u>것이다. 주인공과 적대자 사이의 갈등이 전개되는 시간을 서사적 현재라 한다면, 주인공이 도달해야 할 종결점은 새로운 미래가 아니라 다시 도래할 과거로서의 미래이다. 이러한 시공간의 배열을 ‘회귀의 크로노토프’라고 한다.</p>
                            <p>근대소설 「무정」은 회귀의 크로노토프를 부정한다. 이것은 주인공인 이형식과 박영채의 시간 경험을 통해 확인된다. 형식은 고아지만 이상적인 고향의 기억을 갖고 있다. 그것은 박 진사의 집에서 영채와 함께하던 때의 기억이다. 이는 영채도 마찬가지기에, 그들에게 박 진사의 집으로 표상되는 유년의 과거는 이상적 원점의 구실을 한다. 박 진사의 죽음은 그들에게 고향의 상실을 상징한다. 두 사람의 결합이 이상적 상태의 고향을 회복할 수 있는 유일한 방법이겠지만, 그들은 끝내 결합하지 못한다. 형식은 새 시대의 새 인물이 되어야 한다고 생각하며 과거로의 복귀를 거부한다.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>전쟁은 연합군의 승리로 <u>돌아갔다</u>.</li>
                            <li><span class="mark">②</span>사과가 한 사람 앞에 두 개씩 <u>돌아간다</u>.</li>
                            <li><span class="mark">③</span>그는 잃어버린 동심으로 <u>돌아가고</u> 싶었다.</li>
                            <li><span class="mark">④</span>그녀는 자금이 잘 <u>돌아가지</u> 않는다며 걱정했다.</li>
                        </ol>
                    </div>
                    <div id="q10_4" class="q1_4" style="display: none;">
                        <div class="tit">4. 다음 진술이 모두 참일 때 반드시 참인 것은?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">○</span>오 주무관이 회의에 참석하면, 박 주무관도 참석한다.</li>
                                <li><span class="mark">○</span> 박 주무관이 회의에 참석하면, 홍 주무관도 참석한다.</li>
                                <li><span class="mark">○</span>홍 주무관이 회의에 참석하지 않으면, 공 주무관도 참석하지 않는다.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>공 주무관이 회의에 참석하면, 박 주무관도 참석한다.</li>
                            <li><span class="mark">②</span>오 주무관이 회의에 참석하면, 홍 주무관은 참석하지 않는다.</li>
                            <li><span class="mark">③</span>박 주무관이 회의에 참석하지 않으면, 공 주무관은 참석한다.</li>
                            <li><span class="mark">④</span>홍 주무관이 회의에 참석하지 않으면, 오 주무관도 참석하지 않는다.</li>
                        </ol>
                    </div>
                    <div id="q10_5" class="q1_5" style="display: none;">
                        <div class="tit">5. (가)와 (나)를 전제로 할 때 빈칸에 들어갈 결론으로 가장 적절한 것은?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">(가)</span>노인복지 문제에 관심이 있는 사람 중 일부는 일자리 문제에 관심이 있는 사람이 아니다.</li>
                                <li><span class="mark">(나)</span>공직에 관심이 있는 사람은 모두 일자리 문제에 관심이 있는 사람이다. <br />따라서 <span class="blnk"></span>.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>노인복지 문제에 관심이 있는 사람 중 일부는 공직에 관심이 있는 사람이 아니다</li>
                            <li><span class="mark">②</span>공직에 관심이 있는 사람 중 일부는 노인복지 문제에 관심이 있는 사람이 아니다</li>
                            <li><span class="mark">③</span>공직에 관심이 있는 사람은 모두 노인복지 문제에 관심이 있는 사람이 아니다</li>
                            <li><span class="mark">④</span>일자리 문제에 관심이 있지만 노인복지 문제에 관심이 없는 사람은 모두 공직에 관심이 있는 사람이 아니다</li>
                        </ol>
                    </div>
                    <!-- 국어 E -->
                    <!-- 영어 S -->
                    <div id="q11_1" class="q2_1" style="display: none;">
                        <div class="tit">1. 밑줄 친 부분에 들어갈 말로 가장 적절한 것을 고르시오.</div>
                        <div class="box">
                            Recently, increasingly <u>???</u> weather patterns, often referred to as “abnormal climate,” have been observed around the world.
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>irregular</li>
                            <li><span class="mark">②</span>consistent</li>
                            <li><span class="mark">③</span>predictable</li>
                            <li><span class="mark">④</span>ineffective</li>
                        </ol>
                    </div>
                    <div id="q11_2" class="q2_2" style="display: none;">
                        <div class="tit">2. 밑줄 친 부분 중 어법상 옳지 않은 것을 고르시오.</div>
                        <div class="box">
                            You may conclude that knowledge of the sound systems, word patterns, and sentence structures ① <u>are</u> sufficient to help a student ② <u>become</u> competent in a language. Yet we have ③ <u>all</u> worked with language learners who understand English structurally but still have difficulty ④ <u>communicating</u>.
                        </div>
                    </div>
                    <div id="q11_3" class="q2_3" style="display: none;">
                        <div class="tit">3. 밑줄 친 부분에 들어갈 말로 가장 적절한 것을 고르시오.</div>
                        <div class="box">
                            <img src="https://design.megagong.net/image/m/2024/0708_exam/q2_3_img.jpg" alt="-">
                            <div class="blindw">
                                <span>Kate Anderson: Are you coming to the workshop next Friday?(10:42)</span>
                                <span>Jim Henson: I'm not sure. I have a doctor's appointment that day. (10:42)</span>
                                <span>Kate Anderson: You should come! The workshop is about A.I. tools that can improve our work efficiency. (10:43)</span>
                                <span>Jim Henson: Wow, the topic sounds really interesting! (10:44)</span>
                                <span>Kate Anderson: Exactly. But don't forget to reserve a seat if you want to attend the workshop. (10:45)</span>
                                <span>Jim Henson: How do I do that? (10:45)</span>
                                <span>Kate Anderson: [______] (10:46)</span>
                            </div>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>You need to bring your own laptop.</li>
                            <li><span class="mark">②</span>I already have a reservation.</li>
                            <li><span class="mark">③</span>Follow the instructions on the bulletin board.</li>
                            <li><span class="mark">④</span>You should call the doctor’s office for an appointment.</li>
                        </ol>
                    </div>
                    <div id="q11_4" class="q2_4" style="display: none;">
                        <div class="tit">4. (A)에 들어갈 다음 글의 제목으로 가장 적절한 것은?</div>
                        <div class="box">
                            <div class="blnk">(A)</div>
                            <p>We’re pleased to announce the upcoming City Harbour Festival, anannual event that brings our diverse community together to celebrateour shared heritage, culture, and local talent. Mark your calendars and join us for an exciting weekend!</p>
                            <strong>Details</strong>
                            <ul class="choices">
                                <li><span class="mark">■</span><b>Dates</b>: Friday, June 16 - Sunday, June 18</li>
                                <li><span class="mark">■</span><b>Times</b>: 10 : 00 a.m. - 8 : 00 p.m. (Friday &amp; Saturday) <br />10 : 00 a.m. - 6 : 00 p.m. (Sunday)</li>
                                <li><span class="mark">■</span><b>Location</b>: City Harbour Park, Main Street, and surrounding areas</li>
                            </ul>
                            <strong>Highlights</strong>
                            <ul class="choices">
                                <li><span class="mark">■</span><b>Live Performances</b><br />Enjoy a variety of live music, dance, and theatrical performances on multiple stages throughout the festival grounds.</li>
                                <li><span class="mark">■</span><b>Food Trucks</b><br />Have a feast with a wide selection of food trucks offering diverse and delicious cuisines, as well as free sample tastings.</li>
                            </ul>
                            <p>For the full schedule of events and activities, please visit our website at www.cityharbourfestival.org or contact the Festival Office at (552)234-5678.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>Make Safety Regulations for Your Community</li>
                            <li><span class="mark">②</span>Celebrate Our Vibrant Community Events</li>
                            <li><span class="mark">③</span>Plan Your Exciting Maritime Experience</li>
                            <li><span class="mark">④</span>Recreate Our City’s Heritage</li>
                        </ol>
                    </div>
                    <div id="q11_5" class="q2_5" style="display: none;">
                        <div class="tit">5. City Harbour Festival에 관한 다음 글의 내용과 일치하지 않는 것은?</div>
                        <div class="box">
                            <div class="blnk">(A)</div>
                            <p>We’re pleased to announce the upcoming City Harbour Festival, anannual event that brings our diverse community together to celebrateour shared heritage, culture, and local talent. Mark your calendars and join us for an exciting weekend!</p>
                            <strong>Details</strong>
                            <ul class="choices">
                                <li><span class="mark">■</span><b>Dates</b>: Friday, June 16 - Sunday, June 18</li>
                                <li><span class="mark">■</span><b>Times</b>: 10 : 00 a.m. - 8 : 00 p.m. (Friday &amp; Saturday) <br />10 : 00 a.m. - 6 : 00 p.m. (Sunday)</li>
                                <li><span class="mark">■</span><b>Location</b>: City Harbour Park, Main Street, and surrounding areas</li>
                            </ul>
                            <strong>Highlights</strong>
                            <ul class="choices">
                                <li><span class="mark">■</span><b>Live Performances</b><br />Enjoy a variety of live music, dance, and theatrical performances on multiple stages throughout the festival grounds.</li>
                                <li><span class="mark">■</span><b>Food Trucks</b><br />Have a feast with a wide selection of food trucks offering diverse and delicious cuisines, as well as free sample tastings.</li>
                            </ul>
                            <p>For the full schedule of events and activities, please visit our website at www.cityharbourfestival.org or contact the Festival Office at (552)234-5678.</p>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>일년에 한 번 개최된다.</li>
                            <li><span class="mark">②</span>일요일에는 오후 6시까지 열린다.</li>
                            <li><span class="mark">③</span>주요 행사로 무료 요리 강습이 진행된다.</li>
                            <li><span class="mark">④</span>웹사이트나 전화 문의를 통해 행사 일정을 알 수 있다.</li>
                        </ol>
                    </div>
                    <!-- 영어 E -->
                    <!-- 한국사 S -->
                    <div id="q12_1" class="q3_1" style="display: none;">
                        <div class="tit">1. 밑줄 친 ‘이 나라’에 대한 설명으로 옳은 것은?</div>
                        <div class="box">
                            5세기 후반 가야의 주도 세력으로 성장한 <u>이 나라</u>는 낙동강 유역이라는 지리적 이점과 풍부한 철을 활용하여 후기 가야 연맹의 맹주가 되었다.
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>진흥왕에 의해 멸망하였다.</li>
                            <li><span class="mark">②</span>사비로 천도하고 국호를 남부여로 하였다.</li>
                            <li><span class="mark">③</span>지방 행정 구역을 5경 15부 62주로 나누었다.</li>
                            <li><span class="mark">④</span>평양으로 수도를 옮기고 남진 정책을 추진하였다.</li>
                        </ol>
                    </div>
                    <div id="q12_2" class="q3_2" style="display: none;">
                        <div class="tit">2. (가)에 들어갈 말로 옳은 것은?</div>
                        <div class="box">
                            정부의 개화 정책이 추진되면서 구식 군인과 도시 하층민이 반발하였다. 제대로 봉급을 받지 못한 구식 군인들이 난을 일으키고 도시 하층민이 여기에 합세하였으나 청군에 의해 진압되었다. 이후 청은 조선에 군대를 주둔시키고 조선의 내정에 개입하였다. 또 <span class="blnk">(가)</span>을 체결하여 조선이 청의 속방임을 명문화하고 청 상인의 내륙 진출을 인정받았다.
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>한성 조약</li>
                            <li><span class="mark">②</span>톈진 조약</li>
                            <li><span class="mark">③</span>제물포 조약</li>
                            <li><span class="mark">④</span>조·청 상민 수륙 무역 장정</li>
                        </ol>
                    </div>
                    <div id="q12_3" class="q3_3" style="display: none;">
                        <div class="tit">3. 위화도 회군 이후에 있었던 사실로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>과전법이 실시되었다.</li>
                            <li><span class="mark">②</span>정몽주가 살해되었다.</li>
                            <li><span class="mark">③</span>한양으로 도읍을 이전하였다.</li>
                            <li><span class="mark">④</span>황산 대첩에서 왜구를 토벌하였다.</li>
                        </ol>
                    </div>
                    <div id="q12_4" class="q3_4" style="display: none;">
                        <div class="tit">4. 밑줄 친 ‘이 회의’ 이후에 있었던 사실로 옳지 않은 것은?</div>
                        <div class="box">미국, 영국, 소련 3국의 외무 장관이 모인 <u>이 회의</u>에서는 한국의 민주주의적 임시 정부 수립과 이를 위한 미·소 공동 위원회의 설치, 최대 5년간의 신탁 통치 방안 등이 결정되었다.</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>5·10 총선거가 실시되었다.</li>
                            <li><span class="mark">②</span>좌우 합작 7원칙이 발표되었다.</li>
                            <li><span class="mark">③</span>조선 건국 준비 위원회가 결성되었다.</li>
                            <li><span class="mark">④</span>반민족 행위 특별 조사 위원회가 구성되었다.</li>
                        </ol>
                    </div>
                    <div id="q12_5" class="q3_5" style="display: none;">
                        <div class="tit">5. (가)와 (나) 사이의 시기에 있었던 사실로 옳은 것은?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">(가)</span>순종의 인산일을 기하여 ‘동양 척식 주식회사를 철폐하라!’, ‘일본인 지주에게 소작료를 바치지 말자!’ 등의 격문을 내건 운동이 일어났다.</li>
                                <li><span class="mark">(나)</span>광주에서 한국인 학생과 일본인 학생 사이에 일어난 충돌을 계기로 학생들이 총궐기하는 운동이 일어났다.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>신간회가 창설되었다.</li>
                            <li><span class="mark">②</span>진단학회가 설립되었다.</li>
                            <li><span class="mark">③</span>진주에서 조선 형평사가 창립되었다.</li>
                            <li><span class="mark">④</span>대구에서 국채 보상 운동이 시작되었다.</li>
                        </ol>
                    </div>
                    <!-- 한국사 E -->
                                            </div>
                <div class="answer_box">
                    <!-- 국어 S -->
                    <div id="a10_1" class="a1_1">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 14번</span>
                                <span>이유진 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                [독해(언어학 제재) - 사례 추론] <br />
                                문법 지식을 독해 지문으로 활용한 언어학
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>제시된 언어학 지문의 내용을 이해하여 &lt;보기&gt;의 예시가 지문 속의 주장을 강화하는지 약화하는지 평가하는 문제이다. 지문 속의 ‘사피어와 워프’는 무지개 색을 표현하는 어휘와 무지개 색에 대한 인지의 연관성을 탐구하여 ‘언어가 사고를 결정한다’는 ㉠(사피어-워프 가설)을 주장하였다. &lt;보기&gt;에 제시된 ㄱ은 눈에 대한 단어를 많이 가진 이누이트족이 영어 화자보다 눈에 대한 경험적 인식이 깊다는 예시이므로 ㉠을 강화한다. <br />
                                ㄴ 역시 수에 대한 단어가 3개뿐이라 세 개 이상이 단어를 단순하게 인식한다는 예시이므로 ㉠을 강화한다. ㄷ은 색채 어휘가 적은 화자들이 색채 어휘가 많은 화자들보다 색채 구별 능력이 뛰어난 경우이므로 ㉠을 약화한다. ㉠이 참이라면 색채 어휘가 적을수록 색채에 대한 인지가 약해야 하기 때문이다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a10_2" class="a1_2" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 10번</span>
                                <span>이유진 선생님</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                [독해 세트형(문학 제재) - 일반추론 긍정발문] <br />
                                문학 지식을 독해 지문으로 활용
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>지문에 따르면, 고소설과 근대소설 「무정」 모두 돌아가야 할 곳으로서의 원점이 존재하다. 영웅소설의 주인공은 적대자에 의해 원점에서 분리되어 고난을 겪고, 「무정」의 이형식 역시 박 진사의 죽음으로 인해 고향 상실을 겪는다. 그들은 이상적 원점을 상실했다는 공통점을 가지고 있는 것이다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>둘째 문단에 따르면 고소설은 회귀의 크로노토프를 지향한다. 하지만 마지막 문단에 따르면 근대소설 「무정」은 회귀의 크로노토프를 부정한다.</li>
                                <li><span class="mark">③</span> 마지막 문단에 따르면, 주인공인 이형식이 박영채와 결합하는 것은 새로운 미래로서의 종결점에 도달할 수 있는 방법이 아니라 ‘이상적 상태의 고향을 회복할 수 있는 유일한 방법’이라 하였다. 하지만 근대소설 「무정」은 회귀의 크로노토프를 부정하므로 그들은 끝내 결합하지 못한다. 이형식은 새 시대의 새 인물이 되어야 한다고 생각하며 과거로의 복귀를 거부한 것이다. </li>
                                <li><span class="mark">④</span>둘째 문단에 따르면, 가정소설의 원점은 ‘가장을 중심으로 가족 구성원들이 평화롭게 공존하는 가정’이다. 따라서 가족 구성원들이 평화롭게 공존하는 결말은 상실했던 원점으로 복귀하는 것이다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a10_3" class="a1_3" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 11번</span>
                                <span>이유진 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                독해 세트형(문학 제재) - 문맥적 어휘] <br />
                                문학 지식을 독해 지문으로 활용
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>㉠이 포함된 문맥에서 ‘돌아가다’는 고소설의 주인공이 상실한 원점(그곳에서 향유했던 이상적 상태)을 회복하는 것을 의미한다. 이는 ‘다시 도래할 과거로서의 미래’라 하였다. 따라서 ‘원래의 있던 곳으로 다시 가거나 다시 그 상태가 되다.’라는 의미의 ‘돌아가다’임을 알 수 있다. 제시된 선지 중 과거로의 회귀를 의미하는 예문을 제시한 선지는 ③뿐이다. 예문 속 ‘잃어버린 동심’은 지문의 문맥에 제시된 ‘상실한 원점’에 대응되는 의미를 가지고 있다. </li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>전쟁은 연합군의 승리로 <u>돌아갔다</u>. - 일이나 형편이 어떤 상태로 끝을 맺다.</li>
                                <li><span class="mark">②</span>사과가 한 사람 앞에 두 개씩 <u>돌아간다</u>.  - 차례나 몫, 승리, 비난 따위가 개인이나 단체, 기구, 조직 따위의 차지가 되다.</li>
                                <li><span class="mark">④</span>그녀는 자금이 잘 <u>돌아가지</u> 않는다며 걱정했다. - 돈이나 물건 따위의 유통이 원활하다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a10_4" class="a1_4" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 5번</span>
                                <span>이유진 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">문항 특징</div>
                            <p>[독해(비문학) - 논리 추론]</p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>제시된 명제를 정리하면 다음과 같다.</li>
                            </ul>
                            <div class="box">
                                <ul class="choices">
                                    <li><span class="mark">(가)</span>오 주무관이 회의에 참석하면, 박 주무관도 참석한다. <br />&gt;&gt;오 주무관 → 박 주무관</li>
                                    <li><span class="mark">(나)</span>박 주무관이 회의에 참석하면, 홍 주무관도 참석한다. <br />&gt;&gt; 박 주무관 → 홍 주무관</li>
                                    <li><span class="mark">(다)</span>홍 주무관이 회의에 참석하지 않으면, 공 주무관도 참석하지 않는다. <br />&gt;&gt; ∼ 홍 주무관 → ~ 공 주무관</li>
                                </ul>
                            </div>
                            <p>
                                ‘박 주무관’을 매개항으로 하여 (가)와 (나)를 결합하면 ‘오 주무관 → 홍 주무관’을 도출할 수 있고, 이에 대한 대우는 ‘∼ 홍 주무관 → ∼ 오 주무관’이다. 따라서 ‘홍 주무관이 회의에 참석하지 않으면, 오 주무관도 참석하지 않는다.’는 명제가 참임을 알 수 있다. 
                            </p>
                        </div>
                    </div>
                    <div id="a10_5" class="a1_5" style="display: none;">
                        <div class="ans">
                            <div class="tit">정답 및 해설</div>
                            <div class="txt">
                                <div class="info flex">
                                    <span>9급 출제기조 전환 예시문제 12번</span>
                                    <span>이유진 선생님</span>
                                </div>
                                <div class="correct">정답 ①</div>
                                <div class="s_tit">문항 특징</div>
                                <p>[독해(비문학) - 논리 추론]</p>
                                <div class="s_tit">정답 해설</div>
                                <ul class="choices">
                                    <li><span class="mark">④</span>제시된 전제들을 통해 도출할 수 있는 결론을 찾는 문제이다. </li>
                                </ul>
                                <p>지문에 제시된 전제를 정리하면 다음과 같다.</p>
                                <div class="box">
                                    <ul class="choices">
                                        <li><span class="mark">(가)</span>노인복지 문제에 관심이 있는 사람 중 일부는 일자리 문제에 관심이 있는 사람이 아니다. <br />&gt;&gt; 노인 복지 문제A ∧~ 일자리 문제A</li>
                                        <li><span class="mark">(나)</span>공직에 관심이 있는 사람은 모두 일자리 문제에 관심이 있는 사람이다. <br />&gt;&gt; 공직 → 일자리 문제</li>
                                    </ul>
                                </div>
                                <p>
                                    (나)의 대우는 ‘∼일자리 문제 → ∼공직’이다. 따라서 ‘~ 일자리 문제’를 매개항으로(가)에 (나)의 대우문을 결합하면, ‘노인 복지 문제A ∧~ 공직A(① 노인복지 문제에 관심이 있는 사람 중 일부는 공직에 관심이 있는 사람이 아니다)’라는 결론이 도출된다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <!-- 국어 E -->
                    <!-- 영어 S -->
                    <div id="a11_1" class="a2_1" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 1번</span>
                                <span>조태정 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>바로 뒤의 표현 “~라고 지칭되는”의 의미인 ‘referred to as’ 뒷부분이 힌트가 된다. 즉, ‘abnormal climate’ 라고 했으므로,  「climate =weather pattern」 이고, 빈칸은 abnormal 과 유사한 의미인 ① irregular를 고른다.</li>
                            </ul>
                            <div class="s_tit">해석</div>
                            <p>최근 전 세계적으로 '이상 기후'로 일컬어지는 불규칙한 기상 패턴이 점점 더 많이 관측되고 있다.</p>
                            <ol class="choices">
                                <li><span class="mark">①</span>irregular 불규칙한, 고르지 못한</li>
                                <li><span class="mark">②</span>consistent 한결같은, 일관된</li>
                                <li><span class="mark">③</span>predictable 예측할 수 있는</li>
                                <li><span class="mark">④</span>ineffective 효과없는, 비효율적인</li>
                            </ol>
                            <div class="s_tit">어휘</div>
                            <div class="voca">recently 최근에   abnormal climate 이상 기후   observe 관측하다   around the world 전 세계적으로</div>
                        </div>
                    </div>
                    <div id="a11_2" class="a2_2" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 4번</span>
                                <span>조태정 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>be 동사가 등장한 경우 반드시 그 앞의 주어와 수 일치 여부를 따져본다. 즉, 이 동사에 대한 주어는 “knowledge (of ~ structures는 전명구)” 즉 단수이므로 동사 또한 단수 형태로 써야한다. 따라서 단수 형태인 is로 고치는 것이 옳다. (are → is)</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>준사역동사인 help 뒤의 목적격 보어 자리에는 ⓡ/toⓡ을 쓸 수 있으므로, ⓡ형태인 become을 쓴 것은 옳다.</li>
                                <li><span class="mark">③</span>해당보기의 all은 have + pp 사이에 부사로 쓰여 "모두"의 의미가 되었다. 올바른 표현이다. 
                                <div><b>*all 학습법</b></div>
                                <div class="box">all은 수일치 / 수표현에서 다루는 내용으로, all은 명사(대명사) / 한정사 / 부사 등의 의미로 다양하게 쓰이며, 각각의 수 일치에 유의한다.</div>
                                </li>
                                <li><span class="mark">④</span>해당 보기는 표현을 묻는 문제로 “-하느라 어려움을 겪다” 표현인 have difficulty - ing에서 ing 형태인 communicating이 옳게 쓰였다.</li>
                            </ul>
                            <div class="s_tit">해석</div>
                            <p>
                                당신은 소리 체계, 단어 패턴, 문장 구조에 대한 지식이 학생이 언어에 능숙해지도록 돕기에 충분하다고 결론 내릴 수 있다. 하지만 우리는 모두 영어를 구조적으로 이해하지만 의사소통에 어려움을 겪는 언어 학습자들과 함께 일해왔다.
                            </p>
                            <div class="s_tit">어휘</div>
                            <div class="voca">conclude 결론을 내리다   knowledge 지식   sound system 소리 체계   sentence structure 문장 구조    sufficient 충분한   competent 능숙한   have difficulty -ing : -하는데 어려움을 겪다</div>
                        </div>
                    </div>
                    <div id="a11_3" class="a2_3" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 7번</span>
                                <span>조태정 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>빈칸에는 “예약을 어떻게 하는가?”라는 질문에 대한 답을 해야한다. 즉 방법을 소개해야 하므로 게시판에 있는 지시를 따라서 예약을 하면 된다고 말하는 것이 자연스럽다.</li>
                            </ul>
                            <div class="s_tit">해석</div>
                            <p>
                                Kate: 다음 주 금요일에 워크숍에 오시나요? <br />
                                Jim: 모르겠어요. 그날 의사와 약속이 있어요. <br />
                                Kate: 꼭 와야 해요! 이번 워크숍은 우리의 작업 효율을 향상시킬 수 있는 인공지능 도구에 관한 것이에요. <br />
                                Jim: 와, 주제가 정말 흥미롭게 들리네요! <br />
                                Kate: 맞아요. 워크숍에 참석하고 싶다면 자리를 예약해야 하는 것을 잊지 마세요. <br />
                                Jim: 어떻게 하면 되나요? <br />
                                Kate: <u>??????</u>
                            </p>
                            <ol class="choices">
                                <li><span class="mark">①</span>노트북을 직접 가지고 와야 해요.</li>
                                <li><span class="mark">②</span>저는 이미 예약을 했어요.</li>
                                <li><span class="mark">③</span>게시판에 있는 지시를 따르면 돼요.</li>
                                <li><span class="mark">④</span>진료실에 전화해서 진료를 받아야 해요. </li>
                            </ol>
                            <div class="s_tit">어휘</div>
                            <div class="voca">appointment 약속   improve 향상시키다   efficiency 효율성   topic 주제   reserve 예약하다   attend 참석하다, 다니다</div>
                        </div>
                    </div>
                    <div id="a11_4" class="a2_4" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 10번</span>
                                <span>조태정 선생님</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>본 글은 지역의 연례 행사인 “시티 하버 페스티벌” 일정에 관한 것이다. 따라서 해당 글의 제목으로 가장 적절한 것은 ②가 적절하다.</li>
                            </ul>
                            <div class="s_tit">해석</div>
                            <div class="box">
                                <p>우리는 기쁘게도 지역 연례 행사인 시티 하버 페스티벌을 발표하게 되었는데, 이는 우리의 공유 유산, 문화, 그리고 지역인들을 기념하기 위해 우리의 다양한 지역 사회가 함께 모이는 행사입니다. 여러분의 달력에 표시하고 신나는 주말에 우리와 함께 하세요!</p>
                                <strong>세부 사항</strong>
                                <ul class="choices">
                                    <li><span class="mark">■</span><b>날짜</b>: 6월 16일 금요일 - 6월 18일 일요일</li>
                                    <li><span class="mark">■</span><b>시간</b>: 오전 10:00 - 오후 8:00 (금,토) <br />오전 10:00 - 오후 6:00 (일)</li>
                                    <li><span class="mark">■</span><b>장소</b>: 시티하버파크, 메인스트리트와 그 주변지역</li>
                                </ul>
                                <strong>하이라이트</strong>
                                <ul class="choices">
                                    <li><span class="mark">■</span><b>라이브 공연</b><br />축제장 곳곳에서 다양한 라이브 음악과 춤, 연극 공연을 여러 무대에서 즐기세요!</li>
                                    <li><span class="mark">■</span><b>푸드트럭</b><br />무료 시식뿐만 아니라 다양한 종류의 푸드 트럭과 함께 축제를 즐기세요!</li>
                                </ul>
                                <p>행사 및 활동에 대한 전체 일정은 당사 웹사이트(www.cityharbourfestival.org)를 방문하거나 축제 사무실(552) 234-5678)로 문의해 주세요.</p>
                            </div>
                            <ol class="choices">
                                <li><span class="mark">①</span>커뮤니티를 위한 안전 규정 만들기</li>
                                <li><span class="mark">②</span>활기찬 지역사회 이벤트를 기념하자</li>
                                <li><span class="mark">③</span>신나는 해양 체험을 계획해라</li>
                                <li><span class="mark">④</span>우리 도시의 유산을 재현하다</li>
                            </ol>
                            <div class="s_tit">어휘</div>
                            <div class="voca">be pleased to 흔쾌히 ~하다   announce 알리다, 발표하다   upcoming 다가오는, 곧 있을   diverse 다양한   celebrate 기념하다   shared heritage 공유 유산
                            </div>
                        </div>
                    </div>
                    <div id="a11_5" class="a2_5" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>9급 출제기조 전환 예시문제 11번</span>
                                <span>조태정 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>주요 행사로 무료 요리 강습이 진행된다. <br />→ 해당 내용은 확인할 수 없다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>일 년에 한 번 개최된다. <br />→“We’re pleased to announce the upcoming City Harbour Festival, an annual event ~”를 통해 “ 매 1년마다 열리는 연례행사”라는 것을 알 수 있다.</li>
                                <li><span class="mark">②</span>일요일에는 오후 6시까지 열린다. <br />→ “10 : 00 a.m. - 6 : 00 p.m. (Sunday)”를 통해 일요일에는 오후 6시까지 열린다는 것을 알 수 있다</li>
                                <li><span class="mark">④</span>웹사이트나 전화 문의를 통해 행사 일정을 알 수 있다. <br />→ “글의 마지막 부분”을 통해 행사 일정에 대해 웹사이트나 전화를 통해 문의할 수 있다는 것을 알 수 있다.</li>
                            </ul>
                            <div class="s_tit">해석</div>
                            <div class="box">
                                <p>우리는 기쁘게도 지역 연례 행사인 시티 하버 페스티벌을 발표하게 되었는데, 이는 우리의 공유 유산, 문화, 그리고 지역인들을 기념하기 위해 우리의 다양한 지역 사회가 함께 모이는 행사입니다. 여러분의 달력에 표시하고 신나는 주말에 우리와 함께 하세요!</p>
                                <strong>세부 사항</strong>
                                <ul class="choices">
                                    <li><span class="mark">■</span><b>날짜</b>: 6월 16일 금요일 - 6월 18일 일요일</li>
                                    <li><span class="mark">■</span><b>시간</b>: 오전 10:00 - 오후 8:00 (금,토) <br />오전 10:00 - 오후 6:00 (일)</li>
                                    <li><span class="mark">■</span><b>장소</b>: 시티하버파크, 메인스트리트와 그 주변지역</li>
                                </ul>
                                <strong>하이라이트</strong>
                                <ul class="choices">
                                    <li><span class="mark">■</span><b>라이브 공연</b><br />축제장 곳곳에서 다양한 라이브 음악과 춤, 연극 공연을 여러 무대에서 즐기세요!</li>
                                    <li><span class="mark">■</span><b>푸드트럭</b><br />무료 시식뿐만 아니라 다양한 종류의 푸드 트럭과 함께 축제를 즐기세요!</li>
                                </ul>
                                <p>행사 및 활동에 대한 전체 일정은 당사 웹사이트(www.cityharbourfestival.org)를 방문하거나 축제 사무실(552) 234-5678)로 문의해 주세요.</p>
                            </div>
                            <ol class="choices">
                                <li><span class="mark">①</span>커뮤니티를 위한 안전 규정 만들기</li>
                                <li><span class="mark">②</span>활기찬 지역사회 이벤트를 기념하자</li>
                                <li><span class="mark">③</span>신나는 해양 체험을 계획해라</li>
                                <li><span class="mark">④</span>우리 도시의 유산을 재현하다</li>
                            </ol>
                            <div class="s_tit">어휘</div>
                            <div class="voca">be pleased to 흔쾌히 ~하다   announce 알리다, 발표하다   upcoming 다가오는, 곧 있을   diverse 다양한   celebrate 기념하다   shared heritage 공유 유산
                            </div>
                        </div>
                    </div>
                    <!-- 영어 E -->
                    <!-- 한국사 S -->
                    <div id="a12_1" class="a3_1" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 1번</span>
                                <span>전한길 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                자료의 밑줄 친 ‘이 나라’는 대가야이다. 4세기 말~5세기 초에 신라를 도와주기 위해 남하한 고구려 광개토 대왕의 공격으로, 전기 가야 연맹을 이끌고 있던 김해의 금관가야가 큰 타격을 입었다. 이때 내륙에 위치하고 있어 세력을 유지하고 있던 고령 지방의 대가야가 농업과 제출 기술을 바탕으로 성장하여 5세기 후반부터 후기 가야 연맹을 이끌었다.
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>대가야는 562년에 신라 진흥왕에 의해 멸망하였다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>백제에 대한 설명이다. 6세기 백제 성왕 때 수도를 웅진(공주)에서 대외 진출이 쉬운 사비(부여)로 옮기고, 국호를 남부여로 고쳐 중흥을 꾀하였다.</li>
                                <li><span class="mark">③</span>발해에 대한 설명이다. 9세기 발해 선왕 때 주변 말갈 세력을 복속시키고, 요동 지역으로 진출해 넓은 영토를 차지하게 되었다. 이후 선왕은 전국을 5경 15부 62주로 나누어 통치하였다.</li>
                                <li><span class="mark">④</span>고구려에 대한 설명이다. 5세기 고구려 장수왕은 물산이 풍부하고 바다로 진출하기에 유리한 평양으로 수도를 옮긴 후 본격적으로 남진 정책을 추진하였다. 이에 대응하여 백제와 신라는 나·제 동맹을 체결하였다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_2" class="a3_2" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 4번</span>
                                <span>전한길 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                자료는 임오군란(1882)에 대한 내용이다. 정부가 5군영을 2영으로 개편하고 신식 군대인 별기군을 우대하자, 구식 군인들의 불만이 커져 갔다. 이때 13개월 만에 받은 쌀에 겨와 모래가 섞여 나오자, 구식 군인들은 난을 일으켜 민씨 고관의 집을 습격하고 별기군의 일본인 교관을 살해하였으며, 일본 공사관을 습격하였다. 여기에 일본의 경제 침탈로 생활이 어려워진 도시 하층민까지 가세하자, 고종은 흥선 대원군에게 사태 수습을 위임하고 민씨 세력은 청에 도움을 요청하였다. 이에 조선에 출병한 청군은 난을 진압한 후 흥선 대원군을 청으로 압송하였으며, 조선에 군대를 주둔시키고 고문을 두어 내정에 관여하였다.
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>임오군란 후 조선은 청과 조·청 상민 수륙 무역 장정(1882)을 체결하여 청나라 상인의 내륙 진출을 실질적으로 허용하는 특혜를 부여하였다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>한성 조약(1884)은 갑신정변 이후 조선과 일본이 체결한 조약이다. 정변 이후 조선은 다케조에 일본 공사의 정변 개입을 비판하였으며, 일본은 정변 과정에서 일본인과 일본 공사관이 공격을 당한 것에 대한 책임을 조선에 물었다. 이에 양국은 한성 조약을 체결하여 조선이 일본에 배상금을 지불하고 일본 공사관 신축비를 부담하는 것으로 합의하였다.</li>
                                <li><span class="mark">②</span>톈진 조약(1885)은 갑신정변 이후 청과 일본이 체결한 조약이다. 갑신정변의 진압 과정에서 청군과 일본군 사이에 무력 충돌이 있었는데, 이 책임 소재를 둘러싸고 양국이 대립하였다. 결국 청과 일본은 조선에서 군대를 동시에 철수시키고, 장차 어느 한 나라가 조선에 군사를 보낼 경우 상대국에 미리 통고하도록 규정한 톈진 조약을 체결하였다.</li>
                                <li><span class="mark">③</span>제물포 조약(1882)은 임오군란 이후 조선과 일본이 체결한 조약이다. 군란 과정에서 도망간 일본 공사 하나부사가 군함을 이끌고 제물포에 나타나 무력시위를 하며 일본 공사관 피습과 소실, 일본인 피살을 구실로 조선 정부에 폭동군의 엄벌과 막대한 배상금 지급 등을 요구하였다. 이에 조선은 일본과 제물포 조약을 맺어 배상금을 지불하고, 일본 공사관 경비를 위한 일본군 주둔을 인정하였다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_3" class="a3_3" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                                <span>전한길 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                고려 우왕 때 명나라가 과거에 원이 지배한 철령 이북의 땅을 직속령으로 삼기 위해 철령위를 설치하겠다고 통보해오자, 우왕과 최영은 이에 반대하며 요동 정벌을 단행하였다. 이때 요동 정벌에 반대한 이성계는 출병 후 위화도(압록강 하류에 위치)에서 회군하여 우왕을 폐위하고 최영을 제거한 뒤 군사적 실권을 장악하였다(1388).
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>황산 대첩은 1380년의 일이다. 고려 말 우왕 때 대규모의 왜구가 진포에 침략하자 최무선 등이 화포를 이용하여 이들을 물리쳤다(진포 대첩, 1380). 이때 살아남은 왜구들은 함선이 소실되어 돌아가지 못하고 고려 내륙으로 들어갔는데, 이때 이미 고려에 와 있던 왜구들과 합세하여 고려 백성들을 무자비하게 죽이고 약탈하였다. 이를 해결하기 위해 출정한 이성계는 남원에서 왜구를 토벌하였는데, 이를 황산 대첩이라 한다. 따라서 위화도 회군 이전의 일이다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>위화도 회군 이후 권력을 장악한 이성계와 신진 사대부 세력은 권문세족의 농장 확대로 국가 재정이 파탄 나고 백성들의 삶이 피폐해지자, 전국의 토지를 조사하여 권문세족과 사원이 보유하고 있던 농장을 혁파하고, 과전법을 실시하여 수조권을 재분배하였다(1391).</li>
                                <li><span class="mark">②</span>정몽주는 1392년에 살해되었다. 정몽주는 고려 말 대표적인 문신으로, 이성계·정도전·조준 등과 정치적으로 연합하였으나, 이들이 이성계를 왕으로 추대하려고 하자 이에 반대하며 이성계를 제거할 계획을 세웠다. 그러나 이 계획을 눈치 챈 이방원(이후 태종)이 정몽주를 살해하고, 이성계는 조선을 건국하였다(1392).</li>
                                <li><span class="mark">③</span>이성계는 1392년에 조선을 건국한 후 1394년에 도읍을 개경에서 한양으로 옮기고, 한양에 경복궁을 비롯한 궁궐과 관아, 성곽 4대문 등을 건설하였다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_4" class="a3_4" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 11번</span>
                                <span>전한길 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                자료의 밑줄 친 ‘이 회의’는 모스크바 3국 외상 회의(1945. 12.)이다. 미국, 영국, 소련의 3국 외상들은 모스크바에서 카이로 선언에서 약속하였던 한반도 문제를 협의한 후 임시 민주 정부 수립과 이를 지원하기 위한 미·소 공동 위원회 설치, 미국·영국·소련·중국에 의한 잠정적인 신탁 통치 실시 등을 내용으로 한 ‘한국 문제에 관한 4개항의 결의서’를 발표하였다.
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>조선 건국 준비 위원회는 모스크바 3국 외상 회의 개최 이전인 1945년 8월 15일에 결성되었다. 일제의 패망이 닥치자 여운형과 안재홍 등은 국내 비밀 결사였던 조선 건국 동맹을 기반으로 조선 건국 준비 위원회를 결성하고, 치안대를 결성하여 질서를 유지하는 등 국내 정치와 치안을 담당하였다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>모스크바 3국 외상 회의의 결정에 따라 열린 미·소 공동 위원회가 양국의 의견 차이로 결렬되자, 미국은 한국 문제를 유엔에 상정하고, 그 결과 유엔 소총회에서 선거 가능 지역, 즉 남한에서만이라도 선거를 실시할 것을 결의하였다. 이에 1948년 5월 10일에 우리나라 최초의 민주적 보통선거인 5·10 총선거가 남한에서만 실시되어 임기 2년의 제헌 국회의원이 선출되었다.</li>
                                <li><span class="mark">②</span>제1차 미·소 공동 위원회가 무기 휴회(1946. 5.)되고 이승만이 단독 정부 수립을 제창하자, 분단 위기를 극복하기 위해 김규식과 여운형 등이 좌우 합작 위원회를 구성하였다(1946. 7.). 좌우 합작 위원회는 모스크바 3국 외상 회의 결정에 따른 민주주의 임시 정부 수립, 미·소 공동 위원회 재개, 토지 개혁 등을 주요 내용으로 하는 좌우 합작 7원칙을 발표하였다(1946. 10.).</li>
                                <li><span class="mark">④</span>5·10 총선거로 구성된 제헌 국회는 반민족 행위 처벌법을 공포(1948. 9.)하고, 10명의 국회의원으로 구성된 반민족 행위 특별 조사 위원회(반민 특위)를 조직(1948. 10.)하였다. 반민 특위는 친일 혐의를 받은 주요 인사들을 조사·검거하였으나, 이승만 정부의 방해로 본격적인 활동을 시작한 지 얼마 되지 않아 해체되었다.</li>
                            </ul>
                        </div>
                    </div>
                    <div id="a12_5" class="a3_5" style="display: none;">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 17번</span>
                                <span>전한길 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">문항 특징</div>
                            <p>
                                (가)는 1926년에 발생한 6·10 만세 운동에 대한 내용이다. 6·10 만세 운동은 순종의 인산일을 기해 일어난 시위운동으로, 조선 공산당과 천도교 일부 세력, 그리고 조선 학생 과학 연구회 등 학생 세력이 연합하여 준비하였다. 거사 직전에 조선 공산당과 천도교 인사들이 체포되었으나, 학생들은 예정대로 만세 운동을 추진하여 독립 만세를 외치고 격문을 뿌리며 가두시위를 진행하였다. <br />
                                (나)는 1929년에 발생한 광주 학생 항일 운동에 대한 내용이다. 한국인 학생과 일본인 학생 사이에 충돌이 발생했는데, 경찰이 편파적으로 한국인 학생만 구속하자 만족 차별에 대한 반발로 광주 학생 항일 운동이 전개되었다. 이 사건은 학생들이 주도하고 시민과 노동자들이 참여한, 3·1 운동 이후 최대 규모의 민족 운동이었다.
                            </p>
                            <div class="s_tit">정답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>신간회는 1927년에 결성되었다. 6·10 만세 운동 준비 과정에서 좌우 세력이 협력한 경험을 통해 민족 유일당을 결성할 수 있는 공감대가 형성되었다. 그 결과 민족주의 계열과 사회주의 계열은 민족 협동 전선으로 신간회를 결성하였다.</li>
                            </ul>
                            <div class="s_tit">오답 해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>진단학회는 1934년에 설립되었다. 일제가 식민 지배의 정당성을 확보하고 우리 민족의 반발을 억누르기 위해 한국사를 왜곡하자, 이병도·손진태 등 일본 유학생 출신 역사학자들은 진단학회를 조직하여 한국의 역사·언어·문학 등을 연구하고 『진단학보』를 발행하였다.</li>
                                <li><span class="mark">③</span>조선 형평사는 1923년에 창립되었다. 신분제가 폐지되었으나 일제 강점기에도 백정에 대한 차별은 계속되었다. 이에 백정 출신의 자산가인 이학찬 등이 진주에서 조선 형평사를 조직하여 백정에 대한 사회적 차별 철폐를 주장하는 신분 해방 운동을 벌였다.</li>
                                <li><span class="mark">④</span>국채 보상 운동은 1907년에 시작되었다. 국권 피탈 전인 1907년 당시 일본으로부터 들여온 차관 총액이 대한 제국 1년 예산과 맞먹는 1,300만 원에 달하자, 서상돈과 김광제 등은 대구에서 우리 힘으로 국채를 갚고 국권을 지키자는 국채 보상 운동을 전개하였다. 국채 보상 운동은 곧 전국으로 확산되어 하층민까지 참여하였으며, 대한매일신보를 비롯한 언론사들은 이를 적극적으로 홍보하였다.</li>
                            </ul>
                        </div>
                    </div>
                    <!-- 한국사 E -->
                </div>
            </div>
        </div>
        <button onclick="" class="btnClose">팝업 닫기</button>
        </div>
    </div>
    <!--  //문제 이미지 팝업 -->
    <!--  나의관심직렬 문제 이미지 팝업 -->
    <div id="questnPop2" class="layerPopup questn_pop" style="display: none;">
        <span class="dimBg" onclick="">-</span>
        <div class="contentBox">
        <!-- <p class="tit">문제 및 해설</p> -->
        <div class="scroll_box">
            <div class="question_wrap">
                <!-- 문제 및 해설 불러오기 -->
                <!-- 행정직군 S -->
                <div data-title="행정법총론" class="subj_nm s_1">
                    <div class="question">
                        <div class="tit">5.	행정행위의 직권취소 및 철회에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>처분에 대하여 행정심판이나 행정소송이 제기되어 쟁송이 진행되고 있는 도중에는 행정청은 스스로 대상 처분을 취소할 수 없다.</li>
                            <li><span class="mark">②</span>행정청은 사정변경으로 적법한 처분을 더 이상 존속시킬 필요가 없게 된 경우 그 처분의 전부 또는 일부를 장래를 향하여 철회할 수 있다.</li>
                            <li><span class="mark">③</span>제소기간의 경과 등으로 처분에 불가쟁력이 발생하였다 하여도 행정청은 실권의 법리에 해당하지 않는다면 직권으로 처분을 취소할 수 있다.</li>
                            <li><span class="mark">④</span>행정청은 위법 또는 부당한 처분의 전부나 일부를 소급하여 취소할 수 있다. 다만, 당사자의 신뢰를 보호할 가치가 있는 등 정당한 사유가 있는 경우에는 장래를 향하여 취소할 수 있다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                                <span>유휘운 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>× 처분에 대한 행정심판이나 소송이 계속 중이더라도 행정청은 위법한 처분을 직권취소할 수 있다. <br>
                                · 변상금 부과<u>처분에 대한 <b>취소소송</b>이 <b>진행중</b>이라도 그 부과권자로서는 위법한 처분을 <b>스스로 취소</b></u>하고 그 하자를 보완하여 다시 적법한 부과처분을 할 수 있다.<span class="tiny_noti">(2006.2.10. 2003두5686)</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="행정학개론" class="subj_nm s_2">
                    <div class="question">
                        <div class="tit">4.	시장실패에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>민영화를 강조하는 작은 정부론은 시장실패에 대한 대응으로 제기되었다.</li>
                            <li><span class="mark">②</span>시장기구를 통해 자원을 효율적으로 배분할 수 없는 상태를 말한다.</li>
                            <li><span class="mark">③</span>정부는 시장개입 및 규제를 통해 시장실패를 교정한다.</li>
                            <li><span class="mark">④</span>공공재의 존재는 시장실패를 야기하는 요인이다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 4번</span>
                                <span>신용한 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>민영화를 강조하는 작은 정부론은 정부의 크기를 축소해 개인의 자유와 선택을 극대화해야 한다는 것으로 정부실패에 대한 대응으로 제기되었다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="공직선거법" class="subj_nm s_3">
                    <div class="question">
                        <div class="tit">7.	기부행위제한에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>정당이 그 명의로 재해구호ㆍ장애인돕기ㆍ농촌일손돕기 등 대민 자원봉사활동을 하거나 그 자원봉사활동에 참석한 당원에게 정당의 경비로 교통편의(여비는 제외한다)와 통상적인 범위에서 식사류의 음식물을 제공하는 행위는 기부행위로 보지 아니한다.</li>
                            <li><span class="mark">②</span>자선사업을 주관ㆍ시행하는 국가ㆍ지방자치단체ㆍ언론기관ㆍ사회단체 또는 종교단체 그 밖에 국가기관이나 지방자치단체의 허가를 받아 설립된 법인 또는 단체에 의연금품ㆍ구호금품을 제공하는 행위는 기부행위에 속하나, 광범위한 선거구민을 대상으로 하는 경우 제공하는 개별 물품 또는 그 포장지에 직명ㆍ성명 또는 그 소속 정당의 명칭을 표시하여 제공하는 행위는 기부행위로 보지 아니한다.</li>
                            <li><span class="mark">③</span>후보자가 되고자 하는 자와 그 배우자는 당해 선거구안에 있는 자 또는 당해 선거구의 밖에 있더라도 그 선거구민과 연고가 있는 자의 결혼식에서 주례행위를 할 수 없다.</li>
                            <li><span class="mark">④</span>정당의 대표자가 주관하는 당무에 관한 회의에서 참석한 각급 당부의 대표자ㆍ책임자 또는 유급당직자에게 정당의 경비로 식사류의 음식물을 제공하는 행위는 기부행위로 보지 아니한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 7번</span>
                                <span>채한태 선생님</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>공직선거법 제112조 제2항 <br>
                                다음 각 호의 어느 하나에 해당하는 행위는 기부행위로 보지 아니한다. <br>
                                자선사업을 주관ㆍ시행하는 국가ㆍ지방자치단체ㆍ언론기관ㆍ사회단체 또는 종교단체 그 밖에 국가기관이나 지방자치단체의 허가를 받아 설립된 법인 또는 단체에 의연금품ㆍ구호금품을 제공하는 행위. 다만, 광범위한 선거구민을 대상으로 하는 경우 제공하는 개별 물품 또는 그 포장지에 직명ㆍ성명 또는 그 소속 정당의 명칭을 표시하여 제공하는 행위는 제외한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="노동법개론" class="subj_nm s_4">
                    <div class="question">
                        <div class="tit">4.	「근로기준법」이 연차 유급휴가가 주어지는지를 판단하기 위해 출근한 것으로 보는 기간에 해당하지 않는 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>「남녀고용평등과 일ㆍ가정 양립 지원에 관한 법률」에 따른 육아휴직으로 휴업한 기간</li>
                            <li><span class="mark">②</span>「노동조합 및 노동관계조정법」에 따른 정당한 쟁의행위 기간</li>
                            <li><span class="mark">③</span>임신 중의 여성이 「근로기준법」에 따른 출산전후휴가로 휴업한 기간</li>
                            <li><span class="mark">④</span>근로자가 업무상의 부상 또는 질병으로 휴업한 기간</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 4번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>근로기준법 제60조 제6항 <br>
                                다음 각 호의 어느 하나에 해당하는 기간은 출근한 것으로 본다. <br>
                                1. 근로자가 업무상의 부상 또는 질병으로 휴업한 기간 <br>
                                2. 임신 중의 여성이 제74조 제1항부터 제3항까지의 규정에 따른 휴가로 휴업한 기간 <br>
                                3. 「남녀고용평등과 일ㆍ가정 양립 지원에 관한 법률」 제19조 제1항에 따른 육아휴직으로 휴업한 기간</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="교육학개론" class="subj_nm s_5">
                    <div class="question">
                        <div class="tit">5.	생활지도의 원리로 옳은 것만을 모두 고르면?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">ㄱ.</span>모든 학생을 대상으로 해야 한다.</li>
                                <li><span class="mark">ㄴ.</span>치료나 교정이 아니라 예방에 초점을 두어야 한다.</li>
                                <li><span class="mark">ㄷ.</span>인지적 발달뿐만 아니라 정의적ㆍ신체적 발달도 함께 도모해야 한다.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>ㄱ, ㄴ</li>
                            <li><span class="mark">②</span>ㄱ, ㄷ</li>
                            <li><span class="mark">③</span>ㄴ, ㄷ</li>
                            <li><span class="mark">④</span>ㄱ, ㄴ, ㄷ</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>ㄱ은 생활지도의 원리 중 균등의 원리, ㄴ은 적극성의 원리, ㄷ은 전인의 원리로, ㄱ, ㄴ, ㄷ 모두 생활지도의 원리에 해당한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="국제법개론" class="subj_nm s_6">
                    <div class="question">
                        <div class="tit">12. 국제인권법에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>「고문과 기타 잔혹하거나 비인도적이거나 모욕적인 대우 혹은 처벌에 반대하는 협약」은 국가비상시를 포함한 그 어떤 경우에도 고문을 절대적으로 금지하고 있다.</li>
                            <li><span class="mark">②</span>「아동의 권리에 관한 협약」은 모든 상황에서 아동의 최선이익을 가장 중요한 판단기준으로 제시하고 있다.</li>
                            <li><span class="mark">③</span>「모든 이주노동자와 그 가족의 권리보호에 관한 국제협약」은 일 년 중 일정 기간만 작업을 수행하는 계절노동자도 협약 적용 대상에 포함하고 있다.</li>
                            <li><span class="mark">④</span>「모든 형태의 인종차별철폐에 관한 국제협약」은 인종차별 피해자인 개인이 직접 인종차별철폐위원회에 조사를 요청할 수 없다고 규정하고 있다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 12번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>「모든 형태의 인종차별철폐에 관한 국제협약」 제14조 <br>
                                체약국은 어느 때라도 동 체약국에 의한 이 협약에 규정된 권리 위반의 피해자임을 주장하고 있는 <u>개인이나 또는 개인의 집단으로부터 그 관할권내에서 통보를 접수하여 심사할 권능을 위원회가 보유하고 있다는 것을 승인</u>한다고 선언할 수 있다. 이러한 선언은 하지 않은 체약국에 관련되는 통보는 위원회가 접수하지 아니한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="직업상담·심리학개론" class="subj_nm s_7">
                    <div class="question">
                        <div class="tit">1.	직업상담의 목표로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>올바른 직업 선택을 하기 위해 자기 자신을 정확하고 객관적으로 이해하도록 한다.</li>
                            <li><span class="mark">②</span>현대사회의 복잡하고 다양한 일과 직업의 종류 및 본질에 대한 이해를 높인다.</li>
                            <li><span class="mark">③</span>적합한 직업을 선택할 수 있도록 개인의 합리적인 의사결정 능력을 증진시킨다.</li>
                            <li><span class="mark">④</span>정보 탐색과 활용보다는 개인이 필요로 하는 직업 관련 정보 제공에 초점을 두어야 한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 1번</span>
                                <span>김형준 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>직업상담의 목표 중 ①은 자기이해, ②는 직업이해, ③은 의사결정능력의 함양에 관한 설명이다. ④의 정보 탐생과 활용, 개인이 필요로 하는 직업 관련 정보 제공은 둘 중에 하나에 초점을 두는 것이 아닌 상담자가 내담자를 위해 둘 다 초점을 두어야 하므로 옳지 않은 설명이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="세법개론" class="subj_nm s_8">
                    <div class="question">
                        <div class="tit">2.	 다음과 같이 부동산 양도에 따른 양도소득세 부과처분이 있는 경우, 명의자 乙이 양도소득세 납부의무를 면하기 위하여 주장할 수 있는 「국세기본법」상 국세 부과의 원칙은?</div>
                        <div class="box">
                            <ul class="choise">
                                <li><span class="mark">○</span>甲이 부동산(X)을 乙에게 명의신탁하였다.</li>
                                <li><span class="mark">○</span>甲이 부동산(X)을 A회사에게 양도하여 그 양도로 인한 소득이 甲에게 귀속되었다.</li>
                                <li><span class="mark">○</span>세무서장이 乙에게 양도소득세 부과처분을 하였다.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>실질과세</li>
                            <li><span class="mark">②</span>신의성실</li>
                            <li><span class="mark">③</span>세무공무원의 재량의 한계</li>
                            <li><span class="mark">④</span>조세감면의 사후관리</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                                <span>오정화 선생님</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>[소득 귀속자에 관한 실질과세] <br>
                                과세의 대상이 되는 소득, 수익, 재산, 행위 또는 거래의 귀속이 명의일 뿐이고 사실상 귀속되는 자가 따로 있을 때에는 <u>사실상 귀속되는 자</u>를 납세의무자로 하여 세법을 적용한다. <br>
                                [실질과세원칙 관련 사례 中 명의신탁자에 대한 과세] <br>
                                명의신탁부동산을 매각처분한 경우에는 양도의 주체 및 납세의무자는 명의수탁자가 아니고 <u>명의신탁자</u>이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="회계학" class="subj_nm s_9">
                    <div class="question">
                        <div class="tit">2.	재무제표 표시에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>경영진은 재무제표를 작성할 때 계속기업으로서의 존속가능성을 평가해야 한다.</li>
                            <li><span class="mark">②</span>기업은 현금흐름 정보를 제외하고는 발생기준 회계를 사용하여 재무제표를 작성한다.</li>
                            <li><span class="mark">③</span>당기 재무제표를 이해하는 데 목적적합하다면 서술형 정보의 경우에도 비교정보를 포함한다.</li>
                            <li><span class="mark">④</span>회계기준에서 표시방법의 변경을 요구하는 경우에도 재무제표의 표시와 분류는 매기 동일하여야 한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                                <span>오정화 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>재무제표 항목의 표시와 분류는 매기 동일하여야 비교가능성이 제고되어 회계정보가 유용해진다. 다만 다음의 경우처럼 변경된 표시방법이 재무제표이용자에게 신뢰성 있고 더욱 목적적합한 정보를 제공하며, 변경된 구조가 지속적으로 유지될 가능성이 높아 비교가능성을 저해하지 않을 것으로 판단할 때에만 <b>재무제표의 표시방법을 변경할 수 있다.</b></li>
                            </ul>
                            <div class="box">
                                <ul class="choices">
                                    <li><span class="mark">①</span>사업환경의 변화: 사업내용의 중요한 변화나 재무제표를 검토한 결과 다른 표시나 분류 방법이 더 적절한 것이 명백한 경우</li>
                                    <li><span class="mark">②</span>기준의 요구: <u>한국채택국제회계기준에서 표시방법의 변경을 요구하는 경우</u></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-title="관세법개론" class="subj_nm s_10">
                    <div class="question">
                        <div class="tit">6.	「관세법 시행령」 제95조(편익관세)에 따라 편익을 받을 수 있는 국가만을 나열한 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>부탄, 이라크, 수단</li>
                            <li><span class="mark">②</span>앙골라, 코모로, 에티오피아</li>
                            <li><span class="mark">③</span>이란, 잠비아, 산마리노</li>
                            <li><span class="mark">④</span>시리아, 소말리아, 바티칸</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 6번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>관세법 시행령 제95조 제1항 <br>
                                관세법 제74조에 따라 관세에 관한 편익을 적용받을 수 있는 국가는 다음 표와 같다.</li>
                            </ul>
                            <table class="tbl tbl_3 pop_table">
                                <colgroup>
                                    <col style="width: 30%">
                                    <col style="width: 70%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">지역</th>
                                        <th scope="col">국가</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1. 아시아</td>
                                        <td class="tal">부탄</td>
                                    </tr>
                                    <tr>
                                        <td>2. 중동</td>
                                        <td class="tal">이란, 이라크, 레바논, <span class="cr_blue">시리아</span></td>
                                    </tr>
                                    <tr>
                                        <td>3. 대양주</td>
                                        <td class="tal">나우루</td>
                                    </tr>
                                    <tr>
                                        <td>4. 아프리카</td>
                                        <td class="tal">코모로, 에티오피아, <span class="cr_blue">소말리아</span></td>
                                    </tr>
                                    <tr>
                                        <td>5. 유럽</td>
                                        <td class="tal">안도라, 모나코, 산마리노, <span class="cr_blue">바티칸</span>, 덴마크(그린란드 및 페로제도에 한정한다)</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div data-title="회계원리" class="subj_nm s_11">
                    <div class="question">
                        <div class="tit">2.	재무제표 표시에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>경영진은 재무제표를 작성할 때 계속기업으로서의 존속가능성을 평가해야 한다.</li>
                            <li><span class="mark">②</span>기업은 현금흐름 정보를 제외하고는 발생기준 회계를 사용하여 재무제표를 작성한다.</li>
                            <li><span class="mark">③</span>당기 재무제표를 이해하는 데 목적적합하다면 서술형 정보의 경우에도 비교정보를 포함한다.</li>
                            <li><span class="mark">④</span>회계기준에서 표시방법의 변경을 요구하는 경우에도 재무제표의 표시와 분류는 매기 동일하여야 한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                                <span>오정화 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>재무제표 항목의 표시와 분류는 매기 동일하여야 비교가능성이 제고되어 회계정보가 유용해진다. 다만 다음의 경우처럼 변경된 표시방법이 재무제표이용자에게 신뢰성 있고 더욱 목적적합한 정보를 제공하며, 변경된 구조가 지속적으로 유지될 가능성이 높아 비교가능성을 저해하지 않을 것으로 판단할 때에만 <u>재무제표의 표시방법을 변경할 수 있다.</u></li>
                            </ul>
                            <div class="box">
                                <ul class="choices">
                                    <li><span class="mark">①</span>사업환경의 변화: 사업내용의 중요한 변화나 재무제표를 검토한 결과 다른 표시나 분류 방법이 더 적절한 것이 명백한 경우</li>
                                    <li><span class="mark">②</span>기준의 요구: <u>한국채택국제회계기준에서 표시방법의 변경을 요구하는 경우</u></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-title="통계학개론" class="subj_nm s_12">
                    <div class="question">
                        <div class="tit">1.	다음은 대통령 선거 출구 조사 방법에 대한 설명이다. 이에 해당하는 표본 추출 기법은?</div>
                        <div class="box">모든 투표자를 대상으로 조사하는 것이 아니라, 투표자들이 나오는 것을 조사원이 출구 근처에서 보다가 일정 간격으로 투표자를 추출해 조사합니다. ?간격이 너무 넓은 경우에는 조사원의 집중력 저하로 조사해야 할 투표자를 놓칠 가능성이 큽니다. 반대로 간격이 좁으면 조사원이 너무 바빠 응답자를 정확하게 선정하지 못할 수 있습니다. 16대 대선의 경우는 간격이 6이었고, 19대 대선은 5로 정해 조사했습니다.</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>단순임의추출법(simple random sampling)</li>
                            <li><span class="mark">②</span>계통추출법(systematic sampling)</li>
                            <li><span class="mark">③</span>층화임의추출법(stratified random sampling)</li>
                            <li><span class="mark">④</span>집락추출법(cluster sampling)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 1번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>지문에서 설명하는 표본 추출 기법은 계통추출법으로 체계적 추출법이라고도 하며, 첫 번째 요소를 무작위로 선정 후 목록의 매번 n번째 요소를 표본으로 선정하는 표집방법이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="경제학개론" class="subj_nm s_13">
                    <div class="question">
                        <div class="tit">1.	시장실패의 요인이 아닌 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>외부성</li>
                            <li><span class="mark">②</span>완전경쟁</li>
                            <li><span class="mark">③</span>공공재</li>
                            <li><span class="mark">④</span>비대칭정보</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 1번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>시장실패의 요인으로는 외부성, <u>불완전경쟁</u>, 공공재, 정보의 비대칭성 등이 있다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="교정학개론" class="subj_nm s_14">
                    <div class="question">
                        <div class="tit">5.	「형의 집행 및 수용자의 처우에 관한 법률」상 수용자의 진정실 수용에 대한 설명으로 옳은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>소장은 수용자가 교정시설의 설비 또는 기구 등을 손괴하거나 손괴하려고 하는 때로서 강제력을 행사하거나 보호장비를 사용하여도 그 목적을 달성할 수 없는 경우에는 진정실에 수용할 수 있다. 이 경우 의무관의 의견을 들어야 한다.</li>
                            <li><span class="mark">②</span>수용자의 진정실 수용기간은 24시간 이내로 한다. 다만, 소장은 특히 계속하여 수용할 필요가 있으면 의무관의 의견을 고려하여 1회당 12시간의 범위에서 기간을 연장할 수 있다.</li>
                            <li><span class="mark">③</span>수용자를 진정실에 수용할 수 있는 기간은 계속하여 2일을 초과할 수 없다.</li>
                            <li><span class="mark">④</span>소장은 수용자를 진정실에 수용하거나 수용기간을 연장하는 경우에는 그 사유를 가족에게 알려 주어야 한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <p>「형의 집행 및 수용자의 처우에 관한 법률」 제96조 제1항~제4항</p>
                            <ul class="choices">
                                <li><span class="mark">①</span><span class="cr_red">×</span> 소장은 수용자가 교정시설의 설비 또는 기구 등을 손괴하거나 손괴하려고 하는 때 강제력을 행사하거나 보호장비를 사용하여도 그 목적을 달성할 수 없는 경우에만 진정실에 수용할 수 있다. (의무관의 의견×)</li>
                                <li><span class="mark">②</span><span class="cr_blue">○</span> 수용자의 진정실 수용기간은 24시간 이내로 한다. 다만, 소장은 특히 계속하여 수용할 필요가 있으면 의무관의 의견을 고려하여 1회당 12시간의 범위에서 기간을 연장할 수 있다.</li>
                                <li><span class="mark">③</span><span class="cr_red">×</span> 수용자를 진정실에 수용할 수 있는 기간은 계속하여 <b><u>3일</u></b>을 초과할 수 없다.</li>
                                <li><span class="mark">④</span><span class="cr_red">×</span> 진정실 수용자에 대하여는 제95조 제4항(소장은 수용자를 보호실에 수용하거나 수용기간을 연장하는 경우에는 그 사유를 <b><u>본인</u></b>에게 알려 주어야 한다)의 규정을 준용한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="형사소송법개론" class="subj_nm s_15">
                    <div class="question">
                        <div class="tit">18. 공판준비절차에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>국민참여재판에서는 공판준비기일이 필수적 절차이지만, 일반형사재판에서는 공판준비기일이 필수적 절차가 아니다.</li>
                            <li><span class="mark">②</span>공판준비기일에는 피고인의 출석이 필수적인 요건이 아니다.</li>
                            <li><span class="mark">③</span>공판준비기일이 지정된 사건에 관해 피고인에게 변호인이 없어도 법원이 직권으로 국선변호인을 선정할 필요는 없다.</li>
                            <li><span class="mark">④</span>재판장은 공판준비기일에 출석한 피고인에게 진술을 거부할 수 있음을 알려주어야 한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 18번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>형사소송법 제266조의8 제4항 <br>
                                법원은 공판준비기일이 지정된 사건에 관하여 <u>변호인이 없는 때에는 직권으로 변호인을 선정하여야 한다.</u></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="형사정책개론" class="subj_nm s_16">
                    <div class="question">
                        <div class="tit">8.	범죄이론에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>에이커스(Akers)의 사회학습이론에 따르면, 비행이나 일탈은 사회 구성원 간의 상호작용을 통해 학습된다.</li>
                            <li><span class="mark">②</span>라이스(Reiss)와 나이(Nye)의 내적ㆍ외적 통제이론에 따르면, 애정ㆍ인정ㆍ안전감 및 새로운 경험에 대한 청소년의 욕구가 가족 내에서 충족될수록 범죄를 저지를 확률이 낮아진다.</li>
                            <li><span class="mark">③</span>허쉬(Hirschi)의 사회유대이론에 따르면, 모든 사람은 잠재적 범죄자로서 자신의 행위로 인해 주변인과의 관계가 악화하는 것을 두려워하기 때문에 범죄를 저지르게 된다.</li>
                            <li><span class="mark">④</span>사이크스(Sykes)와 맛차(Matza)의 중화(기술)이론에 따르면, 자신의 비행에 대하여 책임이 없다고 합리화하는 것도 중화기술의 하나에 해당한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 8번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>허쉬(Hirschi)의 사회유대이론은 사회유대요소(애착·관여·참여·신념)를 통해 범죄를 억제하게 된다는 이론으로, 자신의 행위로 인해 주변인과의 관계가 악화하는 것을 두려워하기 때문에 <u>범죄를 저지르지 않게 된다</u>는 이론이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="사회복지학개론" class="subj_nm s_17">
                    <div class="question">
                        <div class="tit">4.	다음에서 설명하는 사회복지의 동기는?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">○</span>사회문제를 예방하여 사회적 비용을 절감하고자 함</li>
                                <li><span class="mark">○</span>사회복지 급여나 프로그램을 제공함으로써 저소득층의 구매력을 높여 내수진작</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>종교적 동기</li>
                            <li><span class="mark">②</span>경제적 동기</li>
                            <li><span class="mark">③</span>정치적 동기</li>
                            <li><span class="mark">④</span>도덕적 동기</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 4번</span>
                                <span>김형준 선생님</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>사회복지의 동기 중 경제적 동기는 사회문제를 예방하여 <u>사회적 비용의 절감</u>과 사회복지 급여나 프로그램을 제공함으로써 <u>저소득층의 구매력을 높여 내수를 진작</u>시키는 것과 관련이 있다. 즉, <u>경제적 동기는 사회문제가 경제에 부정적인 결과를 초래할 가능성이 있기 때문에 사전에 예방하는 차원에서 사회복지가 이루어지는 것을 강조</u>한다. </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="형법" class="subj_nm s_18">
                    <div class="question">
                        <div class="tit">2.	부작위범에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>이른바 부진정 부작위범은 작위를 내용으로 하는 범죄를 부작위에 의하여 실현하는 경우를 말한다.</li>
                            <li><span class="mark">②</span>부진정 부작위범의 작위의무는 법적 의무이어야 하므로 사회상규 혹은 조리상 작위의무가 기대되는 경우에는 인정되지 않는다.</li>
                            <li><span class="mark">③</span>부작위범 사이의 공동정범은 다수의 부작위범에게 공통된 의무가 부여되어 있고 그 의무를 공통으로 이행할 수 있는 경우에 성립한다.</li>
                            <li><span class="mark">④</span>위험의 발생을 방지할 의무가 있는 자뿐만 아니라 자기의 행위로 인하여 위험발생의 원인을 야기한 자도 그 위험발생을 방지하지 않은 때에는 그 발생된 결과에 의하여 처벌한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>형법상 부작위범이 인정되기 위해서는 형법이 금지하고 있는 법익침해의 결과 발생을 방지할 법적인 작위의무를 지고 있는 자가 그 의무를 이행함으로써 결과 발생을 쉽게 방지할 수 있었음에도 불구하고 그 결과의 발생을 용인하고 이를 방관한 채 그 의무를 이행하지 아니한 경우에, 그 부작위가 작위에 의한 법익침해와 동등한 형법적 가치가 있는 것이어서 그 범죄의 실행행위로 평가될 만한 것이라면, 작위에 의한 실행행위와 동일하게 부작위범으로 처벌할 수 있고, 여기서 작위의무는 법적인 의무이어야 하므로 단순한 도덕상 또는 종교상의 의무는 포함되지 않으나 작위의무가 법적인 의무인 한 성문법이건 불문법이건 상관이 없고 또 공법이건 사법이건 불문하므로, 법령, 법률행위, 선행행위로 인한 경우는 물론이고 기타 신의성실의 원칙이나 <u>사회상규 혹은 조리상 작위의무가 기대되는 경우에도 법적인 작위의무는 있다.</u>(대법원 1996. 9. 6. 선고 95도2551 판결)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="형사소송법" class="subj_nm s_19">
                    <div class="question">
                        <div class="tit">2.	공소시효에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>공소장변경이 있는 경우에 공소시효의 완성 여부는 당초의 공소제기가 있었던 시점을 기준으로 판단할 것이고 공소장변경 시를 기준으로 삼을 것은 아니다.</li>
                            <li><span class="mark">②</span>사기죄가 변호사법위반죄와 상상적 경합관계에 있는 경우, 변호사법위반죄의 공소시효가 완성되었다고 하여 사기죄의 공소시효까지 완성되는 것은 아니다.</li>
                            <li><span class="mark">③</span>「형사소송법」 제253조제2항의 ‘공범’을 해석할 때에는 이 조항이 공소제기 효력의 인적 범위를 확장하는 예외를 마련하여 놓은 것이므로 원칙적으로 엄격하게 해석하여야 하고 피고인에게 불리한 방향으로 확장하여 해석해서는 아니 된다.</li>
                            <li><span class="mark">④</span>「형사소송법」 제253조제3항이 정한 ‘범인이 형사처분을 면할 목적으로 국외에 있는 경우’는 범인이 국내에서 범죄를 저지르고 형사처분을 면할 목적으로 국외로 도피한 경우에 한정되고, 국외에서 범죄를 저지르고 형사처분을 면할 목적으로 국외에서 체류를 계속하는 경우는 포함되지 않는다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>형사소송법 제253조 제3항은 “범인이 형사처분을 면할 목적으로 국외에 있는 경우 그 기간 동안 공소시효는 정지된다.”라고 규정하고 있다. 위 규정의 입법 취지는 범인이 우리나라의 사법권이 실질적으로 미치지 못하는 국외에 체류한 것이 도피의 수단으로 이용된 경우에 체류기간 동안은 공소시효가 진행되는 것을 저지하여 범인을 처벌할 수 있도록 하여 형벌권을 적정하게 실현하고자 하는 데 있다. 따라서 위 규정이 정한 ‘범인이 형사처분을 면할 목적으로 국외에 있는 경우’는 범인이 국내에서 범죄를 저지르고 형사처분을 면할 목적으로 국외로 도피한 경우에 한정되지 아니하고, 범인이 <u>국외에서 범죄를 저지르고 형사처분을 면할 목적으로 국외에서 체류를 계속하는 경우도 포함된다.</u>(대법원 2015도5916 판례)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="형법총론" class="subj_nm s_20">
                    <div class="question">
                        <div class="tit">2.	부작위범에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>이른바 부진정 부작위범은 작위를 내용으로 하는 범죄를 부작위에 의하여 실현하는 경우를 말한다.</li>
                            <li><span class="mark">②</span>부진정 부작위범의 작위의무는 법적 의무이어야 하므로 사회상규 혹은 조리상 작위의무가 기대되는 경우에는 인정되지 않는다.</li>
                            <li><span class="mark">③</span>부작위범 사이의 공동정범은 다수의 부작위범에게 공통된 의무가 부여되어 있고 그 의무를 공통으로 이행할 수 있는 경우에 성립한다.</li>
                            <li><span class="mark">④</span>위험의 발생을 방지할 의무가 있는 자뿐만 아니라 자기의 행위로 인하여 위험발생의 원인을 야기한 자도 그 위험발생을 방지하지 않은 때에는 그 발생된 결과에 의하여 처벌한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>형법상 부작위범이 인정되기 위해서는 형법이 금지하고 있는 법익침해의 결과 발생을 방지할 법적인 작위의무를 지고 있는 자가 그 의무를 이행함으로써 결과 발생을 쉽게 방지할 수 있었음에도 불구하고 그 결과의 발생을 용인하고 이를 방관한 채 그 의무를 이행하지 아니한 경우에, 그 부작위가 작위에 의한 법익침해와 동등한 형법적 가치가 있는 것이어서 그 범죄의 실행행위로 평가될 만한 것이라면, 작위에 의한 실행행위와 동일하게 부작위범으로 처벌할 수 있고, 여기서 작위의무는 법적인 의무이어야 하므로 단순한 도덕상 또는 종교상의 의무는 포함되지 않으나 작위의무가 법적인 의무인 한 성문법이건 불문법이건 상관이 없고 또 공법이건 사법이건 불문하므로, 법령, 법률행위, 선행행위로 인한 경우는 물론이고 기타 신의성실의 원칙이나 <u>사회상규 혹은 조리상 작위의무가 기대되는 경우에도 법적인 작위의무는 있다.</u>(대법원 1996. 9. 6. 선고 95도2551 판결)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 행정직군 E -->
                <!-- 기술직군 S -->
                <div data-title="기계일반" class="subj_nm s_21">
                    <div class="question">
                        <div class="tit">15. 이미 생성된 구멍을 선반가공으로 확대할 때 적합한 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>널링(knurling)</li>
                            <li><span class="mark">②</span>보링(boring)</li>
                            <li><span class="mark">③</span>슬로팅(slotting)</li>
                            <li><span class="mark">④</span>단면절삭(facing)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 15번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>보링(boring)은 절삭 가공 방법 중에 하나로, 드릴링으로 이미 뚫어진 구멍의 지름을 확대할 때 사용하는 가공법이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="전기이론" class="subj_nm s_22">
                    <div class="question">
                        <div class="tit">4.	정지해 있는 두 점전하 사이에 작용하는 정전기력에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>두 전하량의 곱에 비례한다.</li>
                            <li><span class="mark">②</span>주위 매질에 영향을 받지 않는다.</li>
                            <li><span class="mark">③</span>두 전하 사이의 거리 제곱에 반비례한다.</li>
                            <li><span class="mark">④</span>두 전하를 연결하는 직선을 따라 작용한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 4번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>주위 매질에 영향을 받는다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="화학공학일반" class="subj_nm s_23">
                    <div class="question">
                        <div class="tit">3.	유체의 에너지를 증가시키기 위한 장치가 아닌 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>펌프(pump)</li>
                            <li><span class="mark">②</span>체크 밸브(check valve)</li>
                            <li><span class="mark">③</span>선풍기(fan)</li>
                            <li><span class="mark">④</span>송풍기(blower)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>체크 밸브는 역류 방지용 장치이며, 유체의 에너지를 증가시키기 위한 장치에는 펌프, 선풍기, 송풍기, 압축기 등이 있다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="재배학개론" class="subj_nm s_24">
                    <div class="question">
                        <div class="tit">1.	작물 및 작물재배에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>작물은 이용성과 경제성이 높아서 재배대상이 되는 식물을 말한다.</li>
                            <li><span class="mark">②</span>작물재배는 인간이 경지를 이용하여 작물을 기르고 수확하는 행위를 말한다.</li>
                            <li><span class="mark">③</span>작물재배는 자연환경의 영향을 크게 받고, 생산조절이 자유롭지 못하다.</li>
                            <li><span class="mark">④</span>휴한농법은 정착농업이 활성화되기 이전에 지력을 유지하는 방법으로 실시되었다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 1번</span>
                                <span>한치영 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>휴한농법은 정착농업이 활성화된 <u>이후</u>에 지력을 유지하는 방법으로 실시되었다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="조림" class="subj_nm s_25">
                    <div class="question">
                        <div class="tit">3.	(가)와 (나)에 들어갈 내용을 바르게 연결한 것은?</div>
                        <div class="box">하나의 꽃에 암술과 수술이 함께 있는 꽃을 <span class="blnk">(가)</span>라고 하며, 그 예로 <span class="blnk">(나)</span>가 있다.</div>
                        <ol class="choices">
                            <li><u>&ensp;(가)&ensp;</u>&emsp;&ensp;&emsp;<u>&ensp;(나)&ensp;</u></li>
                            <li><span class="mark">①</span>단성화&emsp;&emsp;소나무</li>
                            <li><span class="mark">②</span>단성화&emsp;&emsp;벚나무</li>
                            <li><span class="mark">③</span>양성화&emsp;&emsp;벚나무</li>
                            <li><span class="mark">④</span>양성화&emsp;&emsp;소나무</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>하나의 꽃에 암술과 수술 중 하나만 있는 꽃을 단성화, 암술과 수술이 함께 있는 꽃을 양성화라고 한다. 소나무는 단성화, 벚나무는 양성화이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="응용역학개론" class="subj_nm s_26">
                    <div class="question">
                        <div class="tit">5. 휨강성(EI)이 동일한 두 캔틸레버보 (a)와 (b)에서 자유단 B점의 처짐이 같아지도록 하는 하중 P는? (단, 구조물의 자중은 무시한다)</div>
                        <div class="box"><img src="<%=img_main%>/m/2024/0708_exam/s_26_img1.jpg" alt="-"></div>
                        <div class="choices">
                            <img src="<%=img_main%>/m/2024/0708_exam/s_26_img2.jpg" alt="-">
                        </div>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                                <span>진승현 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span><img src="<%=img_main%>/m/2024/0708_exam/s_26_img3.jpg" alt="-"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="건축계획" class="subj_nm s_27">
                    <div class="question">
                        <div class="tit">19. 단열방식에 대한 설명으로 옳은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>난방을 하는 경우, 내단열은 외단열보다 실온이 늦게 상승하고 변동이 작다.</li>
                            <li><span class="mark">②</span>내단열은 외단열보다 내부결로 예방에 유리하다.</li>
                            <li><span class="mark">③</span>외단열은 단시간 사용하는 난방보다 장시간 사용하는 난방에 효과적이다.</li>
                            <li><span class="mark">④</span>내단열은 열교 부분의 단열 보호 처리가 용이하다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 19번</span>
                                <span>이진오 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span><span class="cr_red">×</span> 난방을 하는 경우, <u>외단열은 내단열보다</u> 실온이 늦게 상승하고 변동이 작다.</li>
                                <li><span class="mark">②</span><span class="cr_red">×</span> 내단열은 외단열보다 내부결로 예방에 <u>불리하다</u>.</li>
                                <li><span class="mark">③</span><span class="cr_blue">○</span> 외단열은 단시간 사용하는 난방보다 장시간 사용하는 난방에 효과적이다.</li>
                                <li><span class="mark">④</span><span class="cr_red">×</span> 내단열은 열교 부분의 단열 보호 처리에 <u>불리하다</u>.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="조경학" class="subj_nm s_28">
                    <div class="question">
                        <div class="tit">2.	창덕궁에 있는 지당(池塘)이 아닌 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>향원지</li>
                            <li><span class="mark">②</span>애련지</li>
                            <li><span class="mark">③</span>반도지</li>
                            <li><span class="mark">④</span>부용지</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 2번</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>향원지는 경복궁에 있는 지당이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="재난관리론" class="subj_nm s_29">
                    <div class="question">
                        <div class="tit">3.	화재발생 시 인간의 본능적 피난행동 특성에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>귀소본능 － 화재 시 무의식중에도 평소에 사용하는 출입구, 통로로 가려는 경향</li>
                            <li><span class="mark">②</span>지광본능 － 화재 시 연기와 정전으로 시야가 흐려져서 밝은 곳으로 이동하려는 경향</li>
                            <li><span class="mark">③</span>좌회본능 － 화재 시 판단력 약화로 한 사람의 지도자에 의한 최초의 행동에 전체가 이끌리는 경향</li>
                            <li><span class="mark">④</span>퇴피본능 － 화재의 확대에 따라 화염, 연기에 대한 공포감으로 발화의 반대 방향으로 이동하려는 경향</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>화재발생 시 인간의 본능적 피난행동 특성으로는 귀소본능, 지광본능, 퇴피본능, 추종본능, 좌회본능이 있다. 좌회본능은 좌측통행을 하고 시계반대방향으로 회전하려는 경향을 말하며, 화재 시 판단력 약화로 한 사람의 지도자에 의한 최초의 행동에 전체가 이끌리는 경향은 추종본능에 대한 설명이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="컴퓨터일반" class="subj_nm s_30">
                    <div class="question">
                        <div class="tit">1.	컴퓨터에서 사용하는 정보량의 단위를 크기가 작은 것부터 큰 것 순서대로 바르게 나열한 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>EB, GB, PB, TB</li>
                            <li><span class="mark">②</span>EB, PB, GB, TB</li>
                            <li><span class="mark">③</span>GB, TB, EB, PB</li>
                            <li><span class="mark">④</span>GB, TB, PB, EB</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 1번</span>
                                <span>최희준 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>
                                    <table class="tbl tbl_3 pop_table">
                                        <colgroup>
                                            <col style="width: 32%">
                                            <col style="width: 68%">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">단위</th>
                                                <th scope="col">설명</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1KB(Kilo Byte)</td>
                                                <td class="tal">2<sup>10</sup>byte  =  1024byte  ≒  1000B</td>
                                            </tr>
                                            <tr>
                                                <td>1MB(Mega Byte)</td>
                                                <td class="tal">2<sup>10</sup>KB  =  2<sup>10</sup>×2<sup>10</sup>  =  2<sup>20</sup>byte ≒1000KB</td>
                                            </tr>
                                            <tr>
                                                <td>1GB(Giga Byte)</td>
                                                <td class="tal">2<sup>10</sup>MB  =  2<sup>10</sup>×2<sup>20</sup>  =  2<sup>30</sup>byte ≒1000MB</td>
                                            </tr>
                                            <tr>
                                                <td>1TB(Tera Byte)</td>
                                                <td class="tal">2<sup>10</sup>GB  =  2<sup>10</sup>×2<sup>30</sup>  =  2<sup>40</sup>byte  ≒1000GB</td>
                                            </tr>
                                            <tr>
                                                <td>1PB(Peta Byte)</td>
                                                <td class="tal">2<sup>10</sup>TB  =  2<sup>10</sup>×2<sup>40</sup>  =  2<sup>50</sup>byte  ≒1000TB</td>
                                            </tr>
                                            <tr>
                                                <td>1EB(Exa Byte)</td>
                                                <td class="tal">2<sup>10</sup>PB  =  2<sup>10</sup>×2<sup>50</sup>  =  2<sup>60</sup>byte  ≒1000PB</td>
                                            </tr>
                                            <tr>
                                                <td>1ZB(Zetta Byte)</td>
                                                <td class="tal">2<sup>10</sup>EB  =  2<sup>10</sup>×2<sup>60</sup>  =  2<sup>70</sup>byte  ≒1000EB</td>
                                            </tr>
                                            <tr>
                                                <td>1YB(Yotta Byte)</td>
                                                <td class="tal">2<sup>10</sup>ZB  =  2<sup>10</sup>×2<sup>70</sup>  =  2<sup>80</sup>byte  ≒1000ZB</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="데이터베이스론" class="subj_nm s_31">
                    <div class="question">
                        <div class="tit">5.	뷰에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>뷰를 생성하는 질의가 수행되면 결과 데이터가 물리적 저장 장치에 저장된다.</li>
                            <li><span class="mark">②</span>하나의 테이블로 여러 개의 상이한 뷰를 정의할 수 있다.</li>
                            <li><span class="mark">③</span>뷰는 데이터의 접근을 제어함으로써 보안을 제공할 수 있다.</li>
                            <li><span class="mark">④</span>DROP 문을 이용해 뷰를 삭제할 수 있다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>뷰를 생성하는 질의가 수행되면 데이터가 물리적으로 저장되는 것이 아니라 쿼리 실행 시점에 생성된 쿼리 결과를 가상의 테이블로 만들어 제공하게 된다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="네트워크보안" class="subj_nm s_32">
                    <div class="question">
                        <div class="tit">3.	다음에서 설명하는 것은?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">○</span>외부 방화벽과 내부 방화벽 사이에 존재한다.</li>
                                <li><span class="mark">○</span>외부에서 접속할 수 있어야 하며 보호되어야 하는 시스템(예: 회사의 웹사이트, 이메일 서버 등)을 여기에 배치한다.</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>NAT(Network Address Translation)</li>
                            <li><span class="mark">②</span>DMZ(Demilitarized Zone)</li>
                            <li><span class="mark">③</span>VPN(Virtual Private Network)</li>
                            <li><span class="mark">④</span>PAN(Personal Area Network)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>DMZ(Demilitarized Zone)는 외부 방화벽과 내부 방화벽 사이에 일종의 중립 지역이 설치되는 호스트 또는 네트워크로, 외부 사용자가 내부 서버에 직접 접근하는 것을 방지한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="전자공학개론" class="subj_nm s_33">
                    <div class="question">
                        <div class="tit">12. pn 접합의 바이어스에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>역방향 바이어스가 계속 증가하면 항복 전압에 도달한다.</li>
                            <li><span class="mark">②</span>순방향 바이어스가 인가되면 전류는 p에서 n 방향으로 흐를 수 있다.</li>
                            <li><span class="mark">③</span>역방향 바이어스가 인가되면 pn 접합의 공핍영역은 줄어든다.</li>
                            <li><span class="mark">④</span>순방향 바이어스는 p쪽 전극에 양(＋)의 전압, n쪽 전극에 음(－)의 전압을 인가한 상태이다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 12번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>역방향 바이어스가 인가되면 pn 접합의 공핍영역은 <u>늘어난다.</u></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="기계설계" class="subj_nm s_34">
                    <div class="question">
                        <div class="tit">5.	두 축의 중심선이 일직선상에 있지 않은 경우에 사용할 수 있는 커플링만을 모두 고르면?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">ㄱ.</span>원통 커플링</li>
                                <li><span class="mark">ㄴ.</span>올덤 커플링</li>
                                <li><span class="mark">ㄷ.</span>플랜지 커플링</li>
                                <li><span class="mark">ㄹ.</span>유니버설 커플링</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>ㄱ, ㄴ</li>
                            <li><span class="mark">②</span>ㄱ, ㄷ</li>
                            <li><span class="mark">③</span>ㄴ, ㄹ</li>
                            <li><span class="mark">④</span>ㄷ, ㄹ</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>원통 커플링과 플랜지 커플링은 두 축의 중심선이 일직선 위에 있는 경우에 사용할 수 있는 커플링이며, 두 축의 중심선이 일직선상에 있지 않은 경우에 사용할 수 있는 것은 올덤 커플링과 유니버설 커플링이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="전기기기" class="subj_nm s_35">
                    <div class="question">
                        <div class="tit">20. 전력변환기에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>인버터는 직류를 교류로 변환하는 전력변환기이다.</li>
                            <li><span class="mark">②</span>직류－직류 컨버터에서 입력전압보다 출력전압을 크게 할 수 있다.</li>
                            <li><span class="mark">③</span>교류를 직류로 변환하는 전력변환기는 다이오드 정류기, 위상 제어 정류기 등이 있다.</li>
                            <li><span class="mark">④</span>교류를 교류로 직접 변환하면서 전압과 주파수를 동시에 가변하는 전력변환기는 없다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 20번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>교류를 교류로 직접 변환하면서 전압과 주파수를 동시에 가변하는 전력변환기가 있다(VVVF 등)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="공업화학" class="subj_nm s_36">
                    <div class="question">
                        <div class="tit">9.	다음 중 포화 지방산은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>올레산(oleic acid)</li>
                            <li><span class="mark">②</span>리놀레산(linoleic acid)</li>
                            <li><span class="mark">③</span>리놀렌산(linolenic acid)</li>
                            <li><span class="mark">④</span>스테아르산(stearic acid)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 9번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>포화 지방산에는 라우르산, 미리스트산, 팔미트산, 스테아르산 등이 있다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="식용작물" class="subj_nm s_37">
                    <div class="question">
                        <div class="tit">3.	보리의 재배적 특성에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>보리는 내한성이 강할수록 대체로 춘파성 정도가 낮아서 성숙이 늦어지는 경향이 있다.</li>
                            <li><span class="mark">②</span>조숙성 품종은 일반 품종보다 짧은 한계일장과 낮은 온도에서 유수의 발육이 촉진되는 특성을 보인다.</li>
                            <li><span class="mark">③</span>키가 작은 직립형 품종은 광합성 능력이 크고 내도복성이 강하다.</li>
                            <li><span class="mark">④</span>기계화 재배에서 질소 비료 다용은 도복을 방지하여 다수확에 유리하다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>질소 비료 다용은 다수확에 좋지 않다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="임업경영" class="subj_nm s_38">
                    <div class="question">
                        <div class="tit">8.	우리나라 산림계획에 대한 설명으로 옳은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>제1차 치산녹화 10개년 계획은 100만 ha의 조림계획을 4년 앞당겨 달성하였다.</li>
                            <li><span class="mark">②</span>제2차 치산녹화 10개년 계획은 녹화의 바탕 위에 산지자원화 기반을 조성한다는 목표를 수립하였다.</li>
                            <li><span class="mark">③</span>제3차 산림기본계획은 지속 가능한 산림경영기반 구축과 사람과 숲이 어우러진 풍요로운 녹색국가 실현이라는 목표를 수립하였다.</li>
                            <li><span class="mark">④</span>제4차 산림기본계획은 가치 있는 국가자원, 건강한 국토환경, 쾌적한 녹색공간 조성을 통한 산림기능의 최적 발휘를 목표로 하였다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 8번</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span><span class="cr_blue">○</span> 제1차 치산녹화 10개년 계획은 1973년부터 10년으로 계획되어 있었으나, 4년 앞당겨 1978년에 달성되었다.</li>
                                <li><span class="mark">②</span><span class="cr_red">×</span> 녹화의 바탕 위에 산지자원화 기반을 조성한다는 목표를 수립한 것은 제3차 산림기본계획이다.</li>
                                <li><span class="mark">③</span><span class="cr_red">×</span> 지속 가능한 산림경영기반 구축과 사람과 숲이 어우러진 풍요로운 녹색국가 실현이라는 목표를 수립한 것은 제4차 산림기본계획이다.</li>
                                <li><span class="mark">④</span><span class="cr_red">×</span> 가치 있는 국가자원, 건강한 국토환경, 쾌적한 녹색공간 조성을 통한 산림기능의 최적 발휘를 목표로 한 것은 제5차 산림기본계획이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="토목설계" class="subj_nm s_39">
                    <div class="question">
                        <div class="tit">9.	콘크리트의 크리프와 건조수축에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>부재의 변형이 구속된 부정정 구조에서는 건조수축에 의한 응력이 발생한다.</li>
                            <li><span class="mark">②</span>물－시멘트비가 증가할수록 크리프와 건조수축은 증가한다.</li>
                            <li><span class="mark">③</span>상대습도가 높을수록 건조수축은 증가한다.</li>
                            <li><span class="mark">④</span>콘크리트 건조 초기에는 콘크리트 부재의 표면에는 인장응력이, 내부에는 압축응력이 발생한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 9번</span>
                                <span>진승현 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">③</span>습도가 낮고 온도가 높아야 건조수축이 증가한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="건축구조" class="subj_nm s_40">
                    <div class="question">
                        <div class="tit">5.	얕은기초 설계에 대한 설명으로 옳지 않은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>기초의 폭은 300 mm 이상이어야 한다.</li>
                            <li><span class="mark">②</span>계단식 기초의 상부면은 평평하여야 하며, 기초의 하부면은 1/10을 초과하지 않는 경사는 허용된다.</li>
                            <li><span class="mark">③</span>동결조건이 영구적이지 않으면 동결지반에 지지해서는 안 된다.</li>
                            <li><span class="mark">④</span>교란된 지반, 다짐하지 않은 채움재 또는 제어되지 않은 저강도재료 위에 시공하여야 한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 5번</span>
                                <span>김창훈 선생님</span>
                            </div>
                            <div class="correct">정답 ④</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">④</span>교란되지 않은 지반, 다짐이 된 채움재 또는 제어가 된 저강도재료 위에 시공하여야 한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="조경계획및설계" class="subj_nm s_41">
                    <div class="question">
                        <div class="tit">20.「산림문화ㆍ휴양에 관한 법률」상 숲길의 종류 중 다음 (가), (나)에 들어갈 용어로 옳은 것은?</div>
                        <div class="box">
                            <span class="blnk">(가)</span>은/는 산을 오르면서 심신을 단련하는 활동을 하는 길이며, <span class="blnk">(나)</span>은/는 길을 걸으면서 지역의 역사ㆍ문화를 체험하고 경관을 즐기며 건강을 증진하는 활동을 하는 길로서 시점과 종점이 연결되도록 산의 둘레를 따라 조성한 길을 말한다.
                        </div>
                        <ol class="choices">
                            <li>&emsp;<u>&emsp;&ensp;(가)&ensp;&emsp;</u>&emsp;&emsp;&ensp;&emsp;<u>&emsp;&ensp;(나)&ensp;&emsp;</u>&emsp;</li>
                            <li><span class="mark">①</span>등산로&emsp;&emsp;&emsp;&emsp;&emsp;둘레길</li>
                            <li><span class="mark">②</span>둘레길&emsp;&emsp;&emsp;&emsp;&emsp;트레일</li>
                            <li><span class="mark">③</span>산림레포츠길&emsp;&emsp;&nbsp;탐방로</li>
                            <li><span class="mark">④</span>트레일&emsp;&emsp;&emsp;&emsp;&emsp;휴양ㆍ치유숲길</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 20번</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>
                                    「산림문화ㆍ휴양에 관한 법률」 제22조의2 <br>
                                    숲길의 종류는 다음 각 호와 같다. <br>
                                    1. <u>등산로</u>: 산을 오르면서 심신을 단련하는 활동(이하 “등산”이라 한다)을 하는 길 <br>
                                    2. 트레킹길: 길을 걸으면서 지역의 역사ㆍ문화를 체험하고 경관을 즐기며 건강을 증진하는 활동(이하 “트레킹”이라 한다)을 하는 다음 각 목의 길 <br>
                                    가. <u>둘레길</u>: 시점과 종점이 연결되도록 산의 둘레를 따라 조성한 길 <br>
                                    나. 트레일: 산줄기나 산자락을 따라 길게 조성하여 시점과 종점이 연결되지 않는 길 <br>
                                    3. 산림레포츠길: 산림레포츠를 하는 길 <br>
                                    4. 탐방로: 산림생태를 체험ㆍ학습 또는 관찰하는 활동(이하 “탐방”이라 한다)을 하는 길 <br>
                                    5. 휴양ㆍ치유숲길: 산림에서 휴양ㆍ치유 등 건강증진이나 여가 활동을 하는 길
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="안전관리론" class="subj_nm s_42">
                    <div class="question">
                        <div class="tit">9.	「소방시설 설치 및 관리에 관한 법률 시행령」상 소화설비에 해당하지 않는 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>소화기구</li>
                            <li><span class="mark">②</span>화재알림설비</li>
                            <li><span class="mark">③</span>자동소화장치</li>
                            <li><span class="mark">④</span>옥내소화전설비</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 9번</span>
                            </div>
                            <div class="correct">정답 ②</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">②</span>「소방시설 설치 및 관리에 관한 법률 시행령」 별표 1에 따르면, 소화설비에는 소화기구, 자동소화장치, 옥내소화전설비, 스프링클러설비등, 물분무등소화설비, 옥외소화전설비가 있으며, <u>화재알림설비는 소화설비가 아닌 경보설비</u>에 해당한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="정보보호론" class="subj_nm s_43">
                    <div class="question">
                        <div class="tit">3.	다음에서 설명하는 공격 방법은?</div>
                        <div class="box">
                            <ul class="choices">
                                <li><span class="mark">○</span>사람의 심리를 이용하여 보안 기술을 무력화시키고 정보를 얻는 공격 방법</li>
                                <li><span class="mark">○</span>신뢰할 수 있는 사람으로 위장하여 다른 사람의 정보에 접근하는 공격 방법</li>
                            </ul>
                        </div>
                        <ol class="choices">
                            <li><span class="mark">①</span>재전송 공격(Replay Attack)</li>
                            <li><span class="mark">②</span>무차별 대입 공격(Brute-Force Attack)</li>
                            <li><span class="mark">③</span>사회공학 공격(Social Engineering Attack)</li>
                            <li><span class="mark">④</span>중간자 공격(Man-in-the-Middle Attack)</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                                <span>최희준 선생님</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>
                                    재전송 공격(repaly) <br>
                                    · 공격자가 통신의 내용을 가로채어 기록하고 나중에 동일한 내용을 다시 전송하여 공격하는 것이다. <br>
                                    · 데이터를 획득하여 비 인가된 효과를 얻기 위하여 재전송한다. <br>
                                    · 인증에 사용되는 프로토콜이 약하거나 제대로 구현되지 않은 경우, 공격자가 중간에서 통신을 가로채어  인증 요청을 기록하고 나중에 동일한 요청을 재전송하여 인증을 우회하는 데 사용할 수 있다. <br>
                                    · 공격자가 세션 ID나 인증 토큰과 같은 인증 요소를 가로채어 다시 사용함으로써 공격을 수행할 수 있다. 이를 통해 공격자는 사용자의 세션을 탈취하거나 무단으로 시스템에 접근할 수 있다.
                                </li>
                                <li><span class="mark">②</span>
                                    무차별 대입 공격(Brute-Force Attack) <br>
                                    · 공격자가 사용자 이름과 비밀번호를 무작위로 생성하거나 사전에 정의된 목록에서 추측하여 시스템에 연속적으로 시도하는 공격이다. <br>
                                    · 이러한 공격은 일반적으로 자동화된 스크립트나 프로그램을 사용하여 대량의 인증 시도를 시도하므로 많은 양의 데이터가 빠르게 처리될 수 있다.
                                </li>
                                <li><span class="mark">③</span>
                                    사회 공학적(Social Engineering)인 유형 <br>
                                    · 사회적 관계의 취약한 부분이 이용되는 유형으로 인간관계가 악용되어 패스워드나 중요 정보가 노출되거나 파괴, 변조되는 유형이다. <br>
                                    · 믿었던 사람에게 중요한 정보가 노출되거나 빼앗기는 경우이다. <br>
                                    · 불법적인 조직의 공작으로 정보가 노출된다. <br>
                                    · 조직 내부에 존재하는 내부 스파이에게 이용당한다. <br>
                                    · 인간 관계(게시판, 전자우편)가 이용되어 중요 정보가 노출된다. 
                                </li>
                                <li><span class="mark">④</span>
                                    중간자 공격(Man-in-the-Middle Attack) <br>
                                    · 통신하는 두 당사자 사이에 제3자가 끼어들어 정보를 가로채거나 조작하는 공격이다. <br>
                                    · 이 공격은 보통 네트워크 통신을 가로채고 해당 통신을 제어하여 공격자가 원하는 정보를 탈취하거나 변경하는 데 사용된다. <br>
                                    · 공공 와이파이 네트워크에서 공격자가 네트워크에 접속하여 피해자의 데이터를 가로채거나 조작할 수 있다. <br>
                                    · 루팅된 장치: 공격자가 피해자의 컴퓨터나 모바일 장치에 악성 소프트웨어를 설치하여 네트워크 통신을 가로채고 제어한다.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="알고리즘" class="subj_nm s_44">
                    <div class="question">
                        <div class="tit">17. 퀵 정렬 시 시간복잡도가 최악의 경우가 되는 것으로 가장 적절한 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>피벗(pivot)을 최대값으로 정한다.</li>
                            <li><span class="mark">②</span>피벗을 랜덤(random)하게 정한다.</li>
                            <li><span class="mark">③</span>피벗을 중간값(median)으로 정한다.</li>
                            <li><span class="mark">④</span>피벗을 파티션(partition)의 중간에 위치한 값으로 정한다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 17번</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>피벗(pivot)을 최대값으로 정하면 불균형한 파티셔닝이 일어나므로 적절하다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="정보시스템보안" class="subj_nm s_45">
                    <div class="question">
                        <div class="tit">17. 리눅스 bash shell의 환경 변수에 대한 설명으로 옳은 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>TERM은 접속 호스트 이름을 나타낸다.</li>
                            <li><span class="mark">②</span>SHELL은 서브 셸을 사용할 때 서브 셸을 의미한다.</li>
                            <li><span class="mark">③</span>PATH는 명령을 탐색할 경로를 의미한다.</li>
                            <li><span class="mark">④</span>PWD는 현재 사용 중인 패스워드의 위치를 나타낸다.</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 17번</span>
                            </div>
                            <div class="correct">정답 ③</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span><span class="cr_red">×</span> TERM은 로그인 터미널 유형을 의미한다.</li>
                                <li><span class="mark">②</span><span class="cr_red">×</span> SHELL은 로그인 셸을 의미한다.</li>
                                <li><span class="mark">③</span><span class="cr_blue">○</span> PATH는 명령을 탐색할 경로를 의미한다.</li>
                                <li><span class="mark">④</span><span class="cr_red">×</span> PWD는 현재 작업 디렉터리를 의미한다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div data-title="무선공학개론" class="subj_nm s_46">
                    <div class="question">
                        <div class="tit">3.	다음 전력 값 중 가장 큰 것은?</div>
                        <ol class="choices">
                            <li><span class="mark">①</span>10 [W]</li>
                            <li><span class="mark">②</span>1,000 [mW]</li>
                            <li><span class="mark">③</span>10 [dBm]</li>
                            <li><span class="mark">④</span>0 [dBW]</li>
                        </ol>
                    </div>
                    <div class="answer_box">
                        <div class="tit">정답 및 해설</div>
                        <div class="txt">
                            <div class="info flex">
                                <span>2024 국가직 9급 3번</span>
                            </div>
                            <div class="correct">정답 ①</div>
                            <div class="s_tit">해설</div>
                            <ul class="choices">
                                <li><span class="mark">①</span>②의 1000 [mW]와 ④의 0 [dBW]는 1 [W]이며, ③의 10 [dBm]는 10 [mW]이므로 가장 큰 것은 ①의 10 [W]이다.</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 기술직군 E -->

            </div>
        </div>
        <button onclick="" class="btnClose">팝업 닫기</button>
        </div>
    </div>
    <!--  //나의관심직렬 문제 이미지 팝업 -->

</div><!-- //eventWrap -->
<!-- 메가공무원 9급 합격대비 기초학습 진단평가 E -->`;

const css = `/* setting */
.show-1400 {display: none;}
.cr_red {color: #f00;}
.cr_blue {color: #00f;}

.evSection {padding: 100px 0 150px; background: #fffde6;}
.evSection .con_tit h5 {font-weight: 900; font-size: 38px;}
.title_default {padding-bottom: 40px; border-bottom: 2px solid #000; margin-bottom: 50px;}
.title_default h4 {font-weight: 900; font-size: 34px;}

/* 기본 탭 */
.evSection .tab_base.tab_default {display: flex; justify-content: center; align-items: center; gap: 20px; margin: 0 auto 30px;}
.evSection .tab_base.tab_default li {width: 33%; max-width: 220px;}
.evSection .tab_base.tab_default li a {display: block; font-size: 18px; color: #a48ab3; background: #e8d1ff; padding: 17px 0; border-radius: 30px;}
.evSection .tab_base.tab_default li.on a {font-weight: 500; color: #fff; background: #c081ff;}

/* 서브 탭 */
.evSection .tab_base.tab_sub{display:flex;justify-content:center;gap:8px;flex-wrap:wrap;}
.evSection .tab_base.tab_sub li a{font-size:16px;color:#bbb99e;border:1px solid #bbb99e;display:inline-block;padding:6px 20px;border-radius:20px;}
.evSection .tab_base.tab_sub li.on a{color:#c081ff;font-weight:700;border-color:#c081ff;}
.evSection .panel_base.panel_sub{margin-top:40px;}

/* 응시 탭 */
.result_tab {border-bottom: 1px solid #000; margin-bottom: 20px;}
.result_tab ul {display: flex; justify-content: flex-start; align-items: center;}
.result_tab ul li {width: 130px; max-width: 30%;}
.result_tab ul li a {display: block; font-size: 16px; color: #8a8a8a; border: 1px solid #ddd; border-bottom: none; border-radius: 20px 20px 0 0; padding: 18px 0;}
.result_tab ul li + li a {border-left: none;}
.result_tab ul li.on a {font-weight: 700; color: #fff; background: #000}

/* 컨텐츠 박스 */
.box_default {background: #fff; border: 1px solid #ddd; border-radius: 20px; padding: 38px 40px; font-size: 16px;}
.box_default + .box_default {margin-top: 50px;}
.box_default .box_title {font-weight: 700; font-size: 20px; text-align: left; margin-bottom: 20px;}
.box_default .box_title span {font-size: 13px; vertical-align: middle;}

.box_default.apply_noti {text-align: left;}
.box_default.apply_noti li {position: relative; font-weight: 400; font-size: 16px; padding-left: 15px;}
.box_default.apply_noti li .mark {position: absolute; top: 0; left: 0;}
.box_default.apply_noti li b {color: #c081ff;}

/* 나의 응시 정보 */
.info_wrap {font-size: 16px; color: #333;}
.info_wrap .info.flex {display: flex; justify-content: flex-start; align-items: center;}
.info_wrap .info + .info {margin-top: 15px;}
.info_wrap .info .info_title {font-weight: 700; text-align: left;}
.info_wrap .info.flex .info_title::after {content: ''; display: inline-block; width: 1px; height: 14px; background: #999; margin: 0 10px; vertical-align: middle;}
.info_wrap .info .radio_list {display: flex; justify-content: flex-start; align-items: center; gap: 14px;}
.info_wrap .info .radio_list li label {cursor: pointer;}
.info_wrap .info .radio_list li label input[type=radio] {cursor: pointer;}
.info_wrap .info .info_table {color: #111; border-top: 2px solid #e9e4ab; border-bottom: 2px solid #e9e4ab; margin-top: 10px;}
.info_wrap .info .info_table th {background: #fffcd7; border: 1px solid #ddd; padding: 14px 10px;}
.info_wrap .info .info_table td {text-align: left; border: 1px solid #ddd; padding: 14px 10px;}
.info_wrap .info .info_table th:first-child {border-left: none;}
.info_wrap .info .info_table td:last-child {border-right: none;}
.info_wrap .info .info_table td .select_box {margin-right: 40px;}
.info_wrap .info .info_table td .select_box select {width: 100%; height: 29px; font-family: var(--font); font-size: 16px; color: #888; padding: 0 8px; border: 1px solid #ddd; border-radius: 0; appearance: none; cursor: pointer; background-color: #fff; background-image: url(https://image.megagong.net/m/2024/0708_exam/select_arrow.png); background-repeat: no-repeat; background-position: 100% 0;}
.info_wrap .info .info_table td.col_3 .flex {display: flex; justify-content: flex-start; align-items: center;}
.info_wrap .info .info_table td.col_3 .select_box {display: flex; justify-content: flex-start; align-items: center; gap: 10px; text-wrap: nowrap; margin-right: 18px;}
.info_wrap .info .info_table td.col_3 .select_box select {width: 128px;}
.info_btn {display: flex; justify-content: center; align-items: center; gap: 20px; margin: 40px auto;}
.info_btn a {display: block; width: 290px; max-width: 48%; font-weight: 500; font-size: 18px; color: #fff; background: #000; padding: 17px 0; border-radius: 10px;}
.info_btn a.apply {background: #c081ff;}
/* 응시 후 */
.info_wrap.type_2 .info .info_table th {padding: 9px 10px;}
.info_wrap.type_2 .info .info_table td {padding: 9px 10px;}
.info_wrap.type_2 .info .info_table td.col_3 .flex span + span::before {content: ''; display: inline-block;; width: 1px; height: 14px; background: #c3c3c3; margin: 0 7px; vertical-align: middle;}

/* 전 직렬 팝업 */
.tiny_pop {text-align: left; font-size: 12px; color: #888; margin-top: 10px;}
.tiny_pop a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}
.interest_pop {text-align: center;}


/* 띠배너 */
.bnr_default a {position: relative; display: block; font-weight: 700; font-size: 20px; letter-spacing: -0.04em; padding-top: 21px; padding-bottom: 21px; border-radius: 10px;}
.bnr_default.series {margin-bottom: 30px;}
.bnr_default.series a {font-size: 24px; color: #fff; background: #63c6ff; padding: 30px 0; border-radius: 20px;}
.bnr_default.series a::before,
.bnr_default.series a::after {content: ''; position: absolute; bottom: 0;}
.bnr_default.series a::before {left: 55px; width: 114px; height: 74px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_series_bg1.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.series a::after {right: 40px; width: 128px; height: 76px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_series_bg2.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.series a span {color: #111;}
.bnr_default.series a .arrow {display: inline-block; width: 10px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_wht.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.quizbank {margin-top: 30px;}
.bnr_default.quizbank a {background: #e0f3f8; padding-left: 90px; text-align: left;}
.bnr_default.quizbank a::after {content: ''; position: absolute; width: 142px; height: 70px; bottom: 0; right: 90px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_quizbank_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.quizbank a span.cr_1 {color: #c081ff;}
.bnr_default.quizbank a span.cr_2 {color: #63c6ff;}
.bnr_default.quizbank a .arrow {display: inline-block; width: 7px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_blk.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.pass_opinion {margin-top: 30px;}
.bnr_default.pass_opinion a {background: #fae9e0;}
.bnr_default.pass_opinion a::before,
.bnr_default.pass_opinion a::after {content: ''; position: absolute; bottom: 0;}
.bnr_default.pass_opinion a::before {left: 30px; width: 105px; height: 59px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_pass_opinion_bg1.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.pass_opinion a::after {right: 36px; width: 117px; height: 60px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_pass_opinion_bg2.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.pass_opinion a span.cr_1 {color: #63c6ff;}
.bnr_default.pass_opinion a span.cr_2 {color: #ff737a;}
.bnr_default.pass_opinion a .arrow {display: inline-block; width: 7px; height: 16px; background: url(https://image.megagong.net/m/2024/0708_exam/bnr_arrow_blk.png) no-repeat; background-size: contain; vertical-align: middle;}
.bnr_default.sub_guide a {background: #e0f3f8; border-radius: 29px; padding: 15px 0; padding-left: 120px;}
.bnr_default.sub_guide a::before {content: ''; position: absolute; width: 115px; height: 68px; bottom: 0; left: 260px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_sub_guide_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.sub_guide a span {color: #63c6ff;}
.bnr_default.price a {background: #e0f3f8; border-radius: 29px; padding: 15px 0; padding-left: 160px;}
.bnr_default.price a::before {content: ''; position: absolute; width: 134px; height: 68px; bottom: 0; left: 250px; background-image: url(https://image.megagong.net/m/2024/0708_exam/bnr_price_bg.png); background-size: contain; background-repeat: no-repeat; background-position: 50% 100%;}
.bnr_default.price a span {color: #63c6ff;}
.bnr_default.price + .tiny_noti {color: #888; margin-top: 10px; text-align: right;}

/* 기본 테이블 */
.table_default {font-size: 16px;}
.table_default table {background: #fff;}
.table_default tr th,
.table_default tr td {padding: 10px 5px; border: 1px solid #ddd; line-height: 1.2;}
.table_default tr th:first-child,
.table_default tr td:first-child {border-left: none;}
.table_default tr th:last-child,
.table_default tr td:last-child {border-right: none;}

.table_default .tbl_mo {display: none;}
.table_default .cr_1 {color: #fff; background: #6d1ac1;}
.table_default .cr_2 {background: #fffcd7;}
.table_default .tal {text-align: left;}

.table_default .tiny_noti {color: #888; margin-top: 10px; text-align: left;}
.table_default .tiny_noti a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}

/* S: left.asp */
.lnb_bar {position: absolute; top: 140px; left: 50%; margin-left: -640px; transform: translateX(-100%); z-index: 1;}
.lnb_bar.pofixed {position: fixed;}
.lnb_bar .depth1 {background: #fff; border: 1px solid #ddd; border-radius: 15px;}
.lnb_bar .depth1 > li {position: relative;}
.lnb_bar .depth1 > li + li {border-top: 1px solid #ddd;}
.lnb_bar .depth1 > li > a {position: relative; width: 230px; display: flex; justify-content: flex-start; align-items: center; gap: 14px; padding: 22px 27px;}
.lnb_bar .depth1 > li > a strong {font-size: 18px; line-height: 1.2; text-align: left;}
.lnb_bar .depth1 > li.on > a {color: #c081ff;}
/* lnb - depth2 */
.lnb_bar .depth1 > li.accordion > a.on {color: #c081ff;}
.lnb_bar .depth1 > li.accordion > a::before {content: ''; position: absolute; top: calc(50% - 17px/2); right: 30px; width: 17px; height: 11px; background: url(https://image.megagong.net/m/2024/0708_exam/left_arrow.png) no-repeat; transition: transform 0.3s;}
.lnb_bar .depth1 > li.accordion.on > a::before {transform: rotateX(180deg);}
.lnb_bar .depth1 > li.accordion.on > a.hideDepth::before {transform: rotateX(0deg);}
.lnb_bar .depth1 .depth2 {display: none; padding-bottom: 27px; margin-top: -10px;}
.lnb_bar .depth1 .on .depth2 {display: block;}
.lnb_bar .depth1 .depth2 li a {display: block; font-size: 16px; color: #888; padding: 0 25px; text-align: left;}
.lnb_bar .depth1 .depth2 li a > div {position: relative; width: fit-content; margin-left: 10px; border-bottom: 1px solid transparent;}
.lnb_bar .depth1 .depth2 li a .mark {position: absolute; top: calc(50% - 2.5px); left: -10px; width: 5px; height: 5px; background: #888; border-radius: 50%;}
.lnb_bar .depth1 .depth2 li:hover a,
.lnb_bar .depth1 .depth2 li.on a {color: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover a > div,
.lnb_bar .depth1 .depth2 li.on a > div {border-bottom-color: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover a .mark,
.lnb_bar .depth1 .depth2 li.on a .mark {background: #c081ff;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a {color: #888;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a > div {border-bottom-color: transparent;}
.lnb_bar .depth1 .depth2 li:hover ~ li.on a .mark {background: #888;}
/* E: left.asp */

/* S: 진단평가란? - main.asp */
/* con_top */
.con_top {padding: 140px 0 150px; background: url(https://image.megagong.net/m/2024/0708_exam/main_bg.jpg) no-repeat; background-size: auto 100%;}
.con_top h3 {margin: 0 auto 60px;}
.con_top .visual_slider {margin: 0 -80px 45px -70px;}
.con_top .visual_slider .item {position: relative;}
.con_top .visual_slider .item .arrow {position: absolute; width: fit-content; max-width: 40%; top: 53%; right: 0;}
.con_top .visual_slider .item .arrow::before {content: ''; position: absolute; width: 0; height: 100%; top: 0; background: url(https://img.megagong.net/m/2024/0708_exam/main_arrow.png); background-size: auto 100%; animation: aniWidth 2s linear infinite; animation-delay: 2s; filter: brightness(1.1);}
.con_top .link_btn {display: block; width: 80%; max-width: 340px; font-weight: 900; font-size: 32px; color: #fff; background: #c081ff; padding: 22px 0; border-radius: 45px; margin: 0 auto;}
.con_top .link_btn.result {background: #6d1ac1;}
.con_top .slick-dots {display: flex; justify-content: center; align-items: center; gap: 12px;}
.con_top .slick-dots li button {font-size: 0; width: clamp(10px, 2.4vmin, 18px); height: clamp(10px, 2.4vmin, 18px); background: #fff; border: 1px solid #000; border-radius: 50%;}
.con_top .slick-dots li.slick-active button {background: #000;}

@keyframes aniWidth {
    0% {width: 0; left: 0; background-position: 0 50%;}
    25% {width: 100%; background-position: 0 50%;}
    50% {width: 100%; left: auto; right: 0; background-position: 100% 50%;}
    100% {width: 0; right: 0;  background-position: 100% 50%;}
}

/* evCon1 */
.evCon1 {padding: 150px 0;}
.evCon1 h4 {font-weight: 900; font-size: 68px; color: #6d1ac1; margin-bottom: 80px;}
.evCon1 .step_wrap .step + .step {margin-top: 140px;}
.evCon1 .step_wrap .con_tit {margin-bottom: 60px;}
.evCon1 .step_wrap .con_tit .label {display: block; position: relative; z-index: 0; margin-bottom: 30px;}
.evCon1 .step_wrap .con_tit .label::before {content: ''; position: absolute; width: 100%; height: 1px; top: 50%; left: 0; background: #c081ff; z-index: -1;}
.evCon1 .step_wrap .con_tit .label span {display: inline-block; width: 130px; font-style: normal; font-size: 21px; color: #fff; background: #c081ff; border-radius: 18px; padding: 3px 0;}
.evCon1 .step_wrap .con_tit .sub_tit {font-weight: 400; font-size: 21px; color: #666; margin-top: 10px;}
.evCon1 .step_wrap .con_tit .sub_tit span {font-weight: 700; color: #c081ff;}
.evCon1 .step_wrap .step .content {position: relative; z-index: 0;}
.evCon1 .step_wrap .step .content .badge {position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); width: 150px; height: 150px; border-radius: 50%; display: flex; justify-content: center; align-items: center; font-weight: 700; font-size: 18px; line-height: 1.2; color: #d7afff; background: rgba(0, 0, 0, 0.9); z-index: 1;}
.evCon1 .step_wrap .step_slider .slick-track {display: flex !important; align-items: center;}
.evCon1 .step_wrap .step_slider .item {background: #fff; border-radius: 20px; border: 1px solid #e5deed; overflow: hidden;}
.evCon1 .step_wrap .step_slider img {margin: 0 auto;}
.evCon1 .step_wrap .step_slider .slick-arrow {position: absolute; width: 50px; height: 96px; top: 50%; transform: translateY(-50%); font-size: 0; z-index: 1;}
.evCon1 .step_wrap .step_slider .slick-prev {left: -90px; background: url(https://image.megagong.net/m/2024/0708_exam/con1_prev.png) no-repeat;}
.evCon1 .step_wrap .step_slider .slick-next {right: -90px; background: url(https://image.megagong.net/m/2024/0708_exam/con1_next.png) no-repeat;}
.evCon1 .step_wrap .step_slider .slick-dots {display: flex; justify-content: center; align-items: center; gap: 12px;}
.evCon1 .step_wrap .step_slider .slick-dots li button {font-size: 0; width: clamp(10px, 2.4vmin, 18px); height: clamp(10px, 2.4vmin, 18px); background: #fffcd7; border: 1px solid #6d1ac1; border-radius: 50%;}
.evCon1 .step_wrap .step_slider .slick-dots li.slick-active button {background: #6d1ac1;}
/* E: 진단평가란? - main.asp */

/* S: 직렬 선택 가이드 - series_guide.asp */
.evSeries .box_default b {color: #c081ff;}
.evSeries .tip_title {font-weight: 700; font-size: 24px; text-align: left; margin: 80px auto 20px;}
.evSeries .tip_title span {font-size: 18px;}
.evSeries .tip_title::before {content: ''; display: inline-block; width: 58px; height: 58px; vertical-align: middle; margin-right: 5px; background-image: url(https://image.megagong.net/m/2024/0708_exam/series_tip_icon.png); background-repeat: no-repeat; background-size: auto 100%;}
.evSeries .tip_title.tip1::before {background-position: 0 0;}
.evSeries .tip_title.tip2::before {background-position: -58px 0;}
.evSeries .tip_title.tip3::before {background-position: -116px 0;}
.evSeries .table_default {margin-top: 50px;}
.evSeries .msg {font-size: 18px; margin-top: 20px;}
.evSeries .msg b {color: #c081ff;}

.series_cont {display: flex; flex-wrap: wrap; justify-content: center; align-items: center; gap: 40px; background: url(https://image.megagong.net/m/2024/0708_exam/series_arrow.png) no-repeat 50% 50%;}
.series_cont .item {width: 450px; height: 450px; color: #111; background: #fff; border-radius: 50%; border: 1px solid #ddd; padding: 100px 0;}
.series_cont .item_title {width: fit-content; font-weight: 900; font-size: 26px; color: #c081ff; padding-bottom: 5px; border-bottom: 2px solid #c081ff; margin: 0 auto 20px;}  
.series_cont .item dl dt {font-weight: 900; font-size: 20px; margin-bottom: 20px;} 
.series_cont .item dl dt span {display: block; font-weight: 400; font-size: 16px; color: #555;}
.series_cont .item dl dd {font-size: 16px;} 
.series_cont .item dl dd ul {display: flex; justify-content: center; align-items: center; gap: 5px 10px; flex-wrap: wrap;} 
.series_cont .item dl dd ul::before {content: ''; display: block; width: 100%; height: 0; order: 2;}
.series_cont .item dl dd ul li:nth-child(n + 4) {order: 3;} 
.series_cont .item dl dd ul li a {display: block; font-size: 19px; color: #a48ab3; border: 1px solid #a48ab3; border-radius: 18px; padding: 2px 20px;} 
.series_cont .item dl dd ul li:hover a {font-weight: 700; color: #fff; background: #6d1ac1; border-color: #6d1ac1;}
/* E: 직렬 선택 가이드 - series_guide.asp */

/* S: 과목별 특징 및 학습법 - subject_guide.asp */
.subject_intro_wrap .tec_info{display:flex;justify-content:center;align-items:center;gap:0 10px;}
.subject_intro_wrap .tec_info dt{width:230px;height:230px;overflow:hidden;}
.subject_intro_wrap .tec_info dd{text-align:left;}
.subject_intro_wrap .tec_info dd .slogan{font-size:18px;color:#555555;display:block;}
.subject_intro_wrap .tec_info dd .home{display:flex;font-size:28px;font-weight:bold;align-items:center;gap:0 6px;}
.subject_intro_wrap .tec_info dd .home span{display:flex;font-size:13px;font-weight:900;color:#fff;background-color:#000;border-radius:50%;width:24px;height:24px;align-items:center;justify-content:center;}
.subject_intro_wrap .tec_info dd .btns_wrap{display:flex;gap:0 5px;margin-top:20px;display:none;}
.subject_intro_wrap .tec_info dd .btns_wrap .btn_base{display:inline-block;font-size:13px;color:#fff;background-color:#333;padding:4.5px 14px;border-radius:5px;min-width:110px;text-align:center;}
.subject_info_list > li{padding:40px;background-color:#fff;border:1px solid #ddd;border-radius:15px;margin-top:20px;text-align: justify; font-size:16px;color:#555;font-weight:400;}
.subject_info_list > li:first-child{margin-top:0;}
.subject_info_list > li .num{font-weight:900;color:#111;font-size:18px;margin-bottom:20px;display:block;}
.subject_info_list > li .con{margin-top:10px;}
.subject_info_list > li .con:first-child{margin-top:0;}
.subject_info_list > li .s-tit{font-weight:900;margin-top:20px;}
.subject_info_list > li .s-tit,
.subject_info_list > li .con strong.black{color:#000;}
.subject_info_list > li .s-tit.primary,
.subject_info_list > li .con strong{color:#c081ff;}
.subject_info_list > li .con strong span{font-weight:400;color:#000;}
.subject_info_list > li .con li{padding-left:10px;text-indent:-10px;}
.subject_info_list > li .con.type-2 li{margin-top:20px;padding-left:20px;text-indent:-20px;}
.subject_info_list > li .con.type-2 li:first-child{margin-top:0;}
.subject_info_list > li .con.type-2 li strong{display:block;margin-bottom:10px;}
.subject_info_list > li .tbl_subject{table-layout:fixed;width:100%;}
.subject_info_list > li .tbl_subject th,.subject_info_list > li .tbl_subject td{padding:10px;text-align:center;border-bottom:1px solid #dddddd;border-left:1px solid #dddddd;font-size:16px;}
.subject_info_list > li .tbl_subject thead tr:first-child th{border-top:1px solid #ddd;}
.subject_info_list > li .tbl_subject th:last-child,
.subject_info_list > li .tbl_subject td:last-child{border-right:1px solid #ddd;}
.subject_info_list > li .tbl_subject th.bl{border-left:1px solid #ddd;}
.subject_info_list > li .tbl_subject th{background-color:#fffcd7;font-weight:700;}
.subject_info_list > li .tbl_subject td{font-weight:400;color:#111;}
.subject_info_list > li .tbl_subject.type-2 th, .subject_info_list > li .tbl_subject.type-2 td{text-align:left;}
.subject_info_list > li .tbl_subject.type-2 tr:first-child th,
.subject_info_list > li .tbl_subject.type-2 tr:first-child td{border-top:1px solid #ddd;}
.subject_info_list > li .con.type-2 .tbl_subject.type-2 th strong{margin-bottom:0;}
.tbl_subject_wrap{display:flex;justify-content:space-between;align-items:center;gap:0 20px;}
.tbl_subject_wrap .tbl_subject{flex-grow:1;}
.tbl_subject_wrap .tbl_arrow{flex-shrink:0;}
.subject_info_list > li .tiny{font-size:12px;color:#999;margin-top:10px;}
.subject_info_list > li .info_box{font-size: 14px; border:1px solid #ccc;padding:10px;border-radius:5px;margin-top:10px;}
.subject_info_list > li .info_box li{padding-left:10px;text-indent:-10px;line-height:1.6;color:#111;}
.subject_info_list > li .b_tit{color:#000;font-weight:500;font-size:16px;text-align:center;display:block;}
.subject_info_list > li .b_tit .primary{color:#c081ff;}
/* E: 과목별 특징 및 학습법 - subject_guide.asp */

/* S: 응시 - apply_start.asp */
.apply_start .test_paper {display: flex; justify-content: center; align-items: stretch; gap: 20px; height: 770px; margin-bottom: 40px;}
.apply_start .question_wrap {position: relative; width: 590px;}
.apply_start .question_wrap .question_zone .btn_wrap a {position: absolute; top: 50%; display: block; width: 24px; height: 40px; font-size: 0; background-image: url(https://img.megagong.net/m/2023/0222_gongexam/paging_arrow.png); background-repeat: no-repeat;}
.apply_start .question_wrap .question_zone .btn_wrap a.prev {left: 3%; background-position: 0 0;}
.apply_start .question_wrap .question_zone .btn_wrap a.next {right: 3%; background-position: 100% 0;}
.apply_start .answer_sheet {width: 390px; border: 1px solid #ddd; overflow-y: auto; background: #fff; padding: 15px 15px 20px 15px;}
.apply_start .answer_sheet .tbl_wrap {font-size: 16px; color: #111; margin-bottom: 30px;}
.apply_start .answer_sheet .tbl_wrap + .tbl_wrap {margin-top: 15px;}
.apply_start .answer_sheet .tbl_wrap thead th {background: #fffcd7; border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody th {background: #fffcd7; border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody td {font-family: var(--font-warning); border: 1px solid #ddd; padding: 8px 10px;}
.apply_start .answer_sheet .tbl_wrap tbody td a {display: block;}
.apply_start .answer_sheet .tbl_wrap tbody td a span {display: block; width: 20px; height: 20px; border: 1px solid #898989; border-radius: 50%; font-size: 12px; line-height: 18px; color: #898989; background: #fff; text-align: center; margin: 0 auto;}
.apply_start .answer_sheet .tbl_wrap tbody td a span.last {font-size: 10px; letter-spacing: -0.1em;}
.apply_start .answer_sheet .tbl_wrap tbody td.on a span {color: #fff; background: #c081ff; border: 1px solid #c081ff;}
.apply_start .answer_sheet .tiny_txt {font-size: 13px; color: #888; text-align: center; margin-bottom: 10px;}
.apply_start .answer_sheet .apply_btn a {display: block; width: 290px; font-weight: 500; font-size: 18px; color: #fff; background: #000; padding: 17px 0; border-radius: 10px; margin: 0 auto;}

/* 문제 */
.question_wrap {word-break: break-all; text-align: justify;}
.question_wrap .question {height: 770px; font-size: 16px; line-height: 1.6; text-align: left; padding: 20px 50px 40px; border: 1px solid #ddd; overflow-y: auto;}
.question_wrap .question .tit {font-size: 15px; margin-bottom: 10px;}
.question_wrap .box {position: relative; padding: 20px; border: 1px solid #000; margin-bottom: 30px;}
.question_wrap .box p {text-indent: 1em;}
.question_wrap .box .example {position: absolute; top: 0; left: 50%; transform: translate(-50%, -50%); background: #fff; padding: 0 10px;}
.question_wrap .choices li {position: relative; padding-left: 25px;}
.question_wrap .choices li + li {margin-top: 5px;}
.question_wrap .choices li .mark {position: absolute; top: 0; left: 0;}
.question_wrap u {text-decoration: none; border-bottom: 1px solid #000;}

.question_wrap .question .q1_5 .choices li {padding-left: 28px;}
.question_wrap .question .q1_5 .blnk {display: inline-block; width: 50%; max-width: 240px; height: 18px; vertical-align: middle; border: 1px solid #000; margin-right: 5px;}
.question_wrap .question .q2_4 .box,
.question_wrap .question .q2_5 .box {background: #f5f5f5;}
.question_wrap .question .q2_4 .blnk,
.question_wrap .question .q2_5 .blnk {width: 80%; text-align: center; background: #fff; border: 1px solid #000; margin: 0 auto 15px;}
.question_wrap .question .q2_4 .box p,
.question_wrap .question .q2_5 .box p {text-indent: unset;}
.question_wrap .question .q2_4 .box strong,
.question_wrap .question .q2_5 .box strong {display: block; margin: 15px auto 5px;}
.question_wrap .question .q2_4 .choices,
.question_wrap .question .q2_5 .choices {font-size: 15px;}
.question_wrap .question .q2_4 .box p:last-of-type,
.question_wrap .question .q2_5 .box p:last-of-type {margin-top: 15px;}
.question_wrap .question .q3_2 .blnk {display: inline-block; width: 80px; text-align: center; border: 1px solid #000; margin-left: 10px; margin-right: 5px;}

/* 정답 및 해설 */
.scroll_box {height: auto; max-height: 700px; overflow-y: auto;}
.scroll_box .question_wrap .question {height: auto; overflow: visible;}
.answer_box {position: relative; background: #bce8ff; text-align: left; font-size: 16px; line-height: 1.6;}
.answer_box .tit {position: absolute; top: 0; left: 50%; transform: translate(-50%, -50%); color: #fff; background: #00a6ff; padding: 5px 10px; border-radius: 10px;}
.answer_box .txt {padding: 30px;}
.answer_box .txt .info {display: flex; justify-content: space-between;}
.answer_box .txt .correct {font-weight: 700; color: #0184ff; font-size: 18px; margin-top: 20px;}
.answer_box .txt .s_tit {font-weight: 700; margin: 10px auto 5px;}
.answer_box .box {margin-top: 10px;}
/* E: 응시 - apply_start.asp */

/* S: 진단결과분석 - apply_result.asp */
/* 테이블 */
.result_tbl sup {opacity: 0.5; font-size: 0.75em; vertical-align: top;}
.result_tbl tr .cr_1 {border-color: #fff;}
.result_tbl.grade_tbl thead th:not(:first-child),
.result_tbl.grade_tbl tr td:nth-of-type(5n) {border-right-color: #e9e4ab;}
.result_tbl.grade_tbl .num {background: #f3e7ff;}
.result_tbl.grade_tbl td.ans_X {font-weight: 700; color: #f00;}
.result_tbl.grade_tbl td.ans_O {font-weight: 700; color: #0c00ff;}
.result_tbl.grade_tbl td .qst_view {display: block; font-size: 0; width: 26px; max-width: 76%; height: 22px; background: url('https://img.megagong.net/m/2024/0708_exam/result_qst.png') center center no-repeat; background-size: 100% auto; margin: 0 auto;}
.result_tbl.predict_tbl colgroup col:first-child {border: 2px solid #c081ff;}
.result_tbl.predict_tbl tr td:first-of-type {font-weight: 700; color: #c081ff;}
.result_tbl.pass_tbl td a {color: #c081ff; border-bottom: 1px solid #c081ff;}
.result_tbl.cut_tbl {font-size: 15px;}
.result_tbl.cut_tbl tr th,
.result_tbl.cut_tbl tr td {padding: 7px 5px;}
.result_tbl.cut_tbl thead th span {font-size: 13px;}
.result_tbl.cut_tbl tbody th a {border-bottom: 1px solid #000;}
.result_tbl.cut_tbl .subject {position: relative; font-size: 13px; padding: 0;}
.result_tbl.cut_tbl .subject::before {content: ''; position: absolute; top: 0; left: 50%; width: 1px; height: 100%; background: #ddd;}
.result_tbl.cut_tbl .subject > div {display: flex;}
.result_tbl.cut_tbl .subject a {position: relative; display: block; flex: 1; padding: 10px 5px;}
.result_tbl.cut_tbl .tiny_noti .img {vertical-align: bottom; margin: 0 2px;}

/* 필기합격선 */
.graph_tab {margin-top: 30px;}
.graph_tab .grh {margin-bottom: 40px;}
.graph_tab .grh > img {margin: 0 auto;}
.graph_tab .radio_list {display: flex; justify-content: flex-start; align-items: center; gap: 18px; margin-bottom: 15px;}
.graph_tab .radio_list li label {font-size: 16px;}
.graph_tab .radio_list li input[type=radio] {margin-right: 5px;}
.graph_tab .radio_list li input[type=radio]:checked + span {font-weight: 700;}

/* 문제 해설 팝업 */
.eventWrap .layerPopup { position:fixed; left:0; top:0; width:100%; height:100%; z-index:100; } 
.eventWrap .layerPopup.questn_pop {display: flex;justify-content: center;align-items: center;} 
.eventWrap .layerPopup .dimBg { position:absolute; top:0; left:0; width:100%; height:100%; background-color:#000; opacity:0.7; } 
.eventWrap .layerPopup .contentBox { position: relative; width: 770px; margin: 6% auto 0; line-height: 1.3; background: #fff; } 
.eventWrap .layerPopup .contentBox .pop_box { padding: 0; position: relative; height: 650px; overflow-y: auto; } 
.eventWrap .layerPopup .btnClose { position: absolute; bottom: -30px; right: 0; background: #000; padding: 3px; width:30px; height:30px; box-sizing: border-box; } 
.eventWrap .layerPopup .btnClose { position:absolute; top: -35px; right: 0; display:block; font-size:0; line-height:0; width:35px; height:35px; background: url('https://img.megagong.net/m/2021/0106_basicexam/pop_x.png') center center no-repeat;} 

/* 전문과목 팝업 */
.subj_nm {display: none;}
.pop_table {background: #fff; margin-top: 10px;}

.s_3 {text-align: left;}

.s_25 .question .blnk,
.s_41 .question .blnk {display: inline-block; width: 80px; text-align: center; border: 1px solid #000; margin: 0 5px;}

.part-wrp + .tiny_noti {color: #888; margin-top: 10px; text-align: left;}
.part-wrp + .tiny_noti a {font-size: 11px; color: #fff; background: #c081ff; border-radius: 3px; padding: 0 5px; margin-left: 5px; text-wrap: nowrap;}
/* E: 진단결과분석 - apply_result.asp */

/* S: 학습계획가이드 - learning_guide.asp */
.evLearning .box_default .box_title b {color: #c081ff;}
.evLearning .box_default .box_title .tiny {font-weight: 500; font-size: 14px; color: #666;}
.evLearning .txtbox_default {font-size: 16px; text-align: left; background: #fbf7ff; border: 1px solid #ddd; padding: 40px; border-radius: 20px;}
.evLearning .txtbox_default .cr_1 {color: #c081ff;}
.evLearning .txtbox_default .cr_2 {color: #6d1ac1;}

.evLearning .graph_wrap.pie_graph {display: flex; justify-content: center; align-items: center; gap: 40px; margin-bottom: 40px;}
.evLearning .graph_wrap.pie_graph .grp {flex: 0 0 auto; width: 360px; height: auto;}
.evLearning .graph_wrap.pie_graph .grp .piechart {width: 360px; height: 360px; margin: 0 auto;}
.evLearning .graph_wrap.pie_graph .legend_list {display: flex; justify-content: center; align-items: center; flex-wrap: wrap; gap: 5px 10px; margin-top: 20px; font-size: 16px;}
.evLearning .graph_wrap.pie_graph .legend_list::before {content: ''; display: block; width: 100%; height: 0; order: 2;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(n+4) {order: 3;}
.evLearning .graph_wrap.pie_graph .legend_list li::before {content: ''; display: inline-block; width: 10px; height: 10px; border-radius: 50%; margin-right: 5px;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(1):before {background: #dcc950;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(2):before {background: #eedd67;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(3):before {background: #ffee78;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(4):before {background: #fff19f;}
.evLearning .graph_wrap.pie_graph .legend_list li:nth-of-type(5):before {background: #fff8d0;}
.evLearning .graph_wrap.pie_graph text {font-size: 16px; text-align: center; }
.evLearning .graph_wrap.pie_graph p {flex: 1; position: relative; font-weight: 400; font-size: 16px; text-align: left; background: #fff8d0; border-radius: 0 40px 0 40px; padding: 30px;}
.evLearning .graph_wrap.pie_graph p::before {content: ''; position: absolute; top: 0; left: 0; transform: translateX(-100%); border-bottom: 30px solid transparent; border-right: 42px solid #fff8d0;}
.evLearning .graph_wrap.bar_graph {display: flex; justify-content: center; align-items: center; gap: 10px; margin-bottom: 30px;}
.evLearning .graph_wrap.bar_graph .ico span {display: block; font-weight: 500; font-size: 16px; line-height: 1.2; margin-top: 5px;}
.evLearning .graph_wrap.bar_graph .grp {flex: 1; display: flex;}
.evLearning .graph_wrap.bar_graph .grp li {position: relative; display: flex; justify-content: center; align-items: center; font-size: 16px; line-height: 1.2; color: #fff; height: 60px;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(1) {color: #000; background: #e8d1ff; background: -webkit-linear-gradient(0deg, transparent 0%, #e8d1ff 50%); background: linear-gradient(90deg, transparent 0%, #e8d1ff 50%);}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(2) {background: #c081ff;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(3) {background: #9948eb;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(4) {background: #6d1ac1; z-index: 0; padding-right: 2%;}
.evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {content: ''; position: absolute; top: 50%; right: 0; transform: translateY(-50%); ;border-top: 45px solid transparent; border-bottom: 45px solid transparent; border-left: 54px solid #6d1ac1; background: #fff; z-index: -1;}
.evLearning .curr .txtbox_default {margin-bottom: 60px;}
.evLearning .curr_list li {display: flex; justify-content: center; align-items: stretch; gap: 10px;}
.evLearning .curr_list li + li {margin-top: 10px;}
.evLearning .curr_list li .step {
    --arrow-height: 30px;
    position: relative; flex: 0 0 200px; display: flex; flex-direction: column; justify-content: center; align-items: center; font-weight: 700; font-size: 18px; color: #fff; margin-bottom: var(--arrow-height); border-radius: 10px;}
.evLearning .curr_list li .step::after {content: ''; position: absolute; bottom: 0; left: 50%; transform: translate(-50%, 100%); width: 40px; height: var(--arrow-height); background-image: url('https://img.megagong.net/m/2024/0708_exam/curr_arrow.png'); background-repeat: no-repeat; background-size: auto 100%;}
.evLearning .curr_list li .step span {font-size: 14px;}
.evLearning .curr_list li:nth-child(1) .step {background: #e69dff;}
.evLearning .curr_list li:nth-child(2) .step {background: #c081ff;}
.evLearning .curr_list li:nth-child(3) .step {background: #9948eb;}
.evLearning .curr_list li:nth-child(4) .step {background: #6d1ac1; margin-bottom: 0;}
.evLearning .curr_list li:nth-child(1) .step::after {background-position: 0 0;}
.evLearning .curr_list li:nth-child(2) .step::after {background-position: -40px 0;}
.evLearning .curr_list li:nth-child(3) .step::after {background-position: -80px 0;}
.evLearning .curr_list li:nth-child(4) .step::after {content: none;}
.evLearning .curr_list li p {flex: 1; font-size: 16px; text-align: left; border: 1px solid #e5deed; border-radius: 10px; padding: 25px 30px;}

.evLearning .tip .txtbox_default {margin-bottom: 30px;}
.tip_tbl {margin-bottom: 40px;}
.tip_tbl tbody td.cr_2 {font-weight: 700;}
.tip_tbl tbody td.prosncons {padding: 20px 15px;}
.tip_tbl tbody td.prosncons ul li {position: relative; padding-left: 10px;}
.tip_tbl tbody td.prosncons ul li + li {margin-top: 5px;}
.tip_tbl tbody td.prosncons ul li .mark {position: absolute; top: 0; left: 0;}
.tip_tbl tbody td.prosncons ul li.link .mark {color: #c081ff;}
.tip_tbl tbody td.prosncons ul li.link a {font-size: 14px;}
.tip_tbl tbody td.prosncons ul li.link a b {color: #c081ff; border-bottom: 1px solid #c081ff;}
/* E: 학습계획가이드 - learning_guide.asp */

@media screen and (max-width: 1750px){
    .lnb_bar {margin-left: -35vw;}
}
@media screen and (max-width: 1400px){
    .show-1400 {display: block;}
    .hide-1400 {display: none;}

    /* S: left.asp */
    .lnb_bar {position: relative; top: 0; left: 0; width: 100%; margin-left: 0; transform: none;}
    .lnb_bar.pofixed {position: fixed; top: 0; left: 0; z-index: 3;}
    .lnb_bar.pofixed.mofixed {/*top: 49px;*/ top: 0;}
    .lnb_bar h2 {font-size: clamp(18px, 2.6vmin, 24px); color: #fff; background: #c081ff; padding: 1.5vw 0;}
    .lnb_bar .depth1 {display: flex; justify-content: center; align-items: center; gap: 2vw; border: none; border-radius: 0;}
    .lnb_bar .depth1 > li + li {border-top: none;}
    .lnb_bar .depth1 > li + li::before {content: ''; position: absolute; width: 1px; height: clamp(10px, 2.2vmin, 14px); background: #c2c2c2; top: 50%; left: -1vw; transform: translateY(-50%);}
    .lnb_bar .depth1 > li > a {width: auto; padding: 1.5vw 0 2vw;}
    .lnb_bar .depth1 > li > a .ico {display: none;}
    .lnb_bar .depth1 > li > a strong {font-weight: 400; font-size: clamp(13px, 2.2vmin, 20px);}
    .lnb_bar .depth1 > li.on > a strong {font-weight: 700;}
    /* lnb - depth2 */
    .lnb_bar .depth1 > li.accordion > a.on strong {font-weight: 700;}
    .lnb_bar .depth1 > li.accordion > a::before {content: none;}
    .lnb_bar .depth1 .depth2 {position: absolute; bottom: 1px; left: -15px; transform: translateY(100%); padding-bottom: 0; padding: 5px 0; margin-top: 0; background: #fff; border: 1px solid #ddd; text-wrap: nowrap;}
    .lnb_bar .depth1 .on .depth2 {display: flex;}

    .lnb_bar .depth1 li:last-of-type .depth2 {left: auto; right: 0;}
    .lnb_bar .depth1 .depth2 li a {font-size: clamp(12px, 1.8vmin, 16px); padding: 0 10px;}
    /* E: left.asp */
}
@media screen and (max-width: 1200px){
    /* setting */
    .evSection {padding: 8% 0 14%;}
    .title_default {padding-bottom: 4%; margin-bottom: 5%;}
    .title_default h4 {font-size: clamp(20px, 3.6vmin, 34px);}

    /* 기본 탭 */
    .evSection .tab_base.tab_default {gap: 1vmin; margin: 0 auto 3%;}
    .evSection .tab_base.tab_default li a {font-size: clamp(15px, 2vmin, 18px); padding: clamp(8px, 1.5vmin, 17px) 0;}

    /* 서브 탭 */
    .evSection .tab_base.tab_sub {gap: 1vmin;}
    .evSection .tab_base.tab_sub li a {font-size: clamp(13px, 1.7vmin, 16px); padding: 0.5vmin 2vmin;}
    .evSection .panel_base.panel_sub {margin-top: 5%;}

    /* 응시 탭 */
    .result_tab {margin-bottom: 3%;}
    .result_tab ul li a {font-size: clamp(13px, 1.8vmin, 16px); padding: 1.5vw 0; border-radius: 10px 10px 0 0;}

    /* 컨텐츠 박스 */
    .box_default {padding: 30px 20px; font-size: clamp(13px, 1.8vmin, 16px);}
    .box_default + .box_default {margin-top: 5%;}
    .box_default .box_title {font-size: clamp(16px, 2.2vmin, 20px); margin-bottom: 2%;}

    .box_default.apply_noti li {font-size: clamp(13px, 1.8vmin, 16px);}

    /* 나의 응시 정보 */
    .info_wrap {font-size: clamp(13px, 1.8vmin, 16px);}
    .info_wrap .info + .info {margin-top: 2vmin;}
    .info_wrap .info .info_table {margin-top: 1vmin;}
    .info_wrap .info .info_table td .select_box {margin-right: 0;}
    .info_wrap .info .info_table td .select_box select {font-size: clamp(13px, 1.8vmin, 16px);}
    .info_btn {gap: 2vmin; margin: 4% auto;}
    .info_btn a {font-size: clamp(16px, 2vmin, 18px); padding: 1.5vmin 0;}

    /* 전 직렬 팝업 */

    /* 띠배너 */
    .bnr_default a {font-size: clamp(13px, 2.2vmin, 20px); padding: 2vmin 0;}
    .bnr_default.series {margin-bottom: 3%;}
    .bnr_default.series a {font-size: clamp(14px, 2.6vmin, 24px); padding: 3vmin 0;}
    .bnr_default.series a::before {left: 2%; width: 17vw;}
    .bnr_default.series a::after {right: 2%; width: 18vw;}
    .bnr_default.quizbank {margin-top: 3%;}
    .bnr_default.quizbank a {padding-left: 5vw;}
    .bnr_default.quizbank a::after {right: 2%; width: 12vw;}
    .bnr_default.pass_opinion {margin-top: 3%;}
    .bnr_default.pass_opinion a::before {left: 2%; width: 10vw;}
    .bnr_default.pass_opinion a::after {right: 2%; width: 10vw;}
    .bnr_default.sub_guide a {padding: 1.5vmin 0;}
    .bnr_default.sub_guide a::before {width: 13vw; left: 2%;}
    .bnr_default.price a {padding: 1.5vmin 0; padding-left: 2vmin;}
    .bnr_default.price a::before {width: 13vw; left: 2%;}

    /* 기본 테이블 */
    .table_default {font-size: clamp(13px, 1.8vmin, 16px);}

    /* S: left.asp */
    /* E: left.asp */

    /* S: 진단평가란? - main.asp */
    /* con_top */
    .con_top {padding: 12% 0;}
    .con_top h3 {margin: 0 auto 6%;}
    .con_top h3 {margin: 0 auto 6%;}
    .con_top .visual_slider {margin: 0 -2% 5%;}
    .con_top .visual_slider .item.after {padding-top: 6vmin;}
    .con_top .link_btn {font-size: clamp(20px, 3.4vmin, 32px); padding: 2.2vmin 0;}

    /* evCon1 */
    .evCon1 {padding: 14% 0;}
    .evCon1 h4 {font-size: clamp(32px, 7vmin, 68px); margin-bottom: 8%;}
    .evCon1 .step_wrap .step + .step {margin-top: 10%;}
    .evCon1 .step_wrap .con_tit {margin-bottom: 6%;}
    .evCon1 .step_wrap .con_tit h5 {font-size: clamp(22px, 4vmin, 38px);}
    .evCon1 .step_wrap .con_tit .label {margin-bottom: 3%;}
    .evCon1 .step_wrap .con_tit .label span {font-size: clamp(14px, 2.3vmin, 21px); padding: 0.5vw 0;}
    .evCon1 .step_wrap .con_tit .sub_tit {font-size: clamp(16px, 2.3vmin, 21px);}
    .evCon1 .step_wrap .step .content .badge {width: clamp(90px, 16vmin, 150px); height: clamp(90px, 16vmin, 150px); font-size: clamp(13px, 2vmin, 18px);}
    /* E: 진단평가란? - main.asp */

    /* S: 직렬 선택 가이드 - series_guide.asp */
    .evSeries .tip_title {font-size: clamp(18px, 2.6vmin, 24px); margin: 8% auto 2%;}
    .evSeries .tip_title span {font-size: clamp(15px, 2vmin, 18px);}
    .evSeries .table_default {margin-top: 5%;}
    .evSeries .msg {font-size: clamp(15px, 2vmin, 18px); margin-top: 4%;}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_info_list > li{padding:30px;}
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */

    /* S: 응시 - apply_start.asp */
    .apply_start .test_paper {flex-direction: column; height: auto; gap: 2vw; margin-bottom: 5%;}
    .apply_start .question_wrap {width: 100%;}

    .apply_start .question_wrap .question_zone .btn_wrap {display: flex; justify-content: center; align-items: center; gap: 1vw; margin-top: 2%;}
    .apply_start .question_wrap .question_zone .btn_wrap a {flex: 1; position: static; width: auto; height: auto; font-weight: 700; font-size: 14px; background: #fff; border: 1px solid #c3c3c3; padding: 11px 0; border-radius: 6px;}
    .apply_start .answer_sheet {width: 100%;}
    .apply_start .answer_sheet .tbl_wrap {margin-bottom: 3%;}
    .apply_start .answer_sheet .tbl_wrap + .tbl_wrap {margin-top: 1%;}

    .apply_start .answer_sheet .apply_btn a {font-size: clamp(14px, 2vmin, 18px); padding: 2vw 0;}

    /* 문제 */
    .question_wrap .question {height: auto; padding: 20px 20px 40px;}

    /* 정답 및 해설 */
    .answer_box .txt {padding: 20px 20px 30px;}
    /* E: 응시 - apply_start.asp */

    /* S: 진단결과분석 - apply_result.asp */
    /* 테이블 */
    .result_tbl.grade_tbl td .qst_view {height: 3vmin;}
    .result_tbl.cut_tbl {font-size: clamp(12px, 1.7vmin, 15px);}
    .result_tbl.cut_tbl thead th span {font-size: clamp(11px, 1.5vmin, 13px);}
    .result_tbl.cut_tbl td .result {display: inline-block; width: 88%;}

    /* 필기합격선 */
    .graph_tab {margin-top: 3%;}
    .graph_tab .grh {margin-bottom: 8%;}
    .graph_tab .radio_list {gap: 1.5vmin; margin-bottom: 2%;}
    .graph_tab .radio_list li label {font-size: clamp(13px, 1.8vmin, 16px);}

    /* 문제 해설 팝업 */
    .eventWrap .layerPopup .contentBox {width: 90%;}
    .scroll_box {height: auto; max-height: 90vh;}
    /* E: 진단결과분석 - apply_result.asp */

    /* S: 학습계획가이드 - learning_guide.asp */
    .evLearning .box_default .box_title .tiny {font-size: clamp(11px, 1.6vmin, 14px);}
    .evLearning .txtbox_default {font-size: clamp(13px, 1.8vmin, 16px); padding: 30px 20px;}

    .evLearning .graph_wrap.pie_graph {gap: 2vw; margin-bottom: 6%;}
    .evLearning .graph_wrap.pie_graph .grp {width: 40vmin;}
    .evLearning .graph_wrap.pie_graph .grp .piechart {width: 100%; height: 40vmin;}
    .evLearning .graph_wrap.pie_graph .legend_list {font-size: clamp(13px, 1.8vmin, 16px); gap: 0.25vmin 1vmin;}
    .evLearning .graph_wrap.pie_graph p {font-size: clamp(13px, 1.8vmin, 16px); padding: 20px;}
    .evLearning .graph_wrap.pie_graph p::before {border-bottom-width: 3vmin; border-right-width: 4vmin;}
    .evLearning .graph_wrap.pie_graph text {font-size: clamp(11px, 1.8vmin, 16px);}
    .evLearning .graph_wrap.bar_graph {gap: 1vw; margin-bottom: 4%;}
    .evLearning .graph_wrap.bar_graph .ico span {font-size: clamp(11px, 1.8vmin, 16px);}
    .evLearning .graph_wrap.bar_graph .grp li {font-size: clamp(11px, 1.8vmin, 16px); height: clamp(36px, 6vmin, 60px);}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {border-top-width: 4.4vmin; border-bottom-width: 4.4vmin; border-left-width: 5vmin;}
    .evLearning .curr .txtbox_default {margin-bottom: 6%;}
    .evLearning .curr_list li .step {flex-basis: 24%; min-width: 0; font-size: clamp(13px, 2vmin, 18px);}
    .evLearning .curr_list li .step span {font-size: clamp(11px, 1.6vmin, 14px);}
    .evLearning .curr_list li p {font-size: clamp(13px, 1.8vmin, 16px); padding: 20px 15px;}
    
    .evLearning .tip .txtbox_default {margin-bottom: 4%;}
    .tip_tbl {margin-bottom: 6%;}
    /* E: 학습계획가이드 - learning_guide.asp */
}
@media screen and (max-width: 992px){
    /* S: 직렬 선택 가이드 - series_guide.asp */
    .series_cont {gap: 4vmin; background-size: 6vmin;}
    .series_cont .item {width: calc(50% - 2vmin); height: 43vmin; padding: 5vmin 0; border-radius: 20px; display: flex; flex-direction: column;}
    .series_cont .item_title {font-size: clamp(18px, 2.8vmin, 26px); margin: 0 auto 2vmin;}
    .series_cont .item dl {margin: auto;}
    .series_cont .item dl dt {font-size: clamp(15px, 2.2vmin, 20px); margin: 0 auto 2vmin;}
    .series_cont .item dl dt span {font-size: clamp(13px, 1.8vmin, 16px);}
    .series_cont .item dl dd {font-size: clamp(13px, 1.8vmin, 16px);} 
    .series_cont .item dl dd ul li a {font-size: clamp(14px, 2.1vmin, 19px); padding: 2px 2vmin;}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_info_list > li .num{font-size:16px;}
    .subject_info_list > li .tbl_subject th, .subject_info_list > li .tbl_subject td{font-size:14px;padding:5px;}
    .subject_intro_wrap .tec_info dd .slogan{font-size:16px;}
    .subject_intro_wrap .tec_info dd .home{font-size:24px;gap:0 3px;}
    .subject_intro_wrap .tec_info dd .home span{font-size:12px;width:20px;height:20px;}
    .tbl_subject_wrap{gap:0 10px;}
    .tbl_subject_wrap .tbl_arrow{width:120px;}
    .tbl_subject_wrap .tbl_subject.lg{width:70%;}
    .tbl_subject_wrap .tbl_subject.sm{width:30%;} 
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */
}
@media screen and (max-width: 768px){
    .eventWrap .tiny_noti {font-size: 11px;}

    /* 나의 응시 정보 */
    .info_wrap .info .info_table colgroup {display: none;}
    .info_wrap .info .info_table tr {display: flex; flex-wrap: wrap;}
    .info_wrap .info .info_table th {flex: 1 0 34%; border: none; border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; display: flex; justify-content: center; align-items: center; padding: 7px 5px;}
    .info_wrap .info .info_table td {flex: 1 0 66%; border: none; border-bottom: 1px solid #ddd; display: flex; justify-content: flex-start; align-items: center; padding: 7px 5px;}
    .info_wrap .info .info_table tr:last-child th:last-of-type,
    .info_wrap .info .info_table tr:last-child td:last-of-type {border-bottom: none;}
    .info_wrap .info .info_table td .select_box {flex: 1;}
    .info_wrap .info .info_table td.col_3 .flex {flex: 1; flex-direction: column; align-items: stretch; gap: 1vw;}
    .info_wrap .info .info_table td.col_3 .select_box {margin-right: 0;}
    .info_wrap .info .info_table td.col_3 .select_box select {width: calc(100% - 50px); margin-left: auto;}
    /* 응시 후 */
    .info_wrap.type_2 .info .info_table th {padding: 7px 5px;}
    .info_wrap.type_2 .info .info_table td {padding: 7px 5px;}
    .info_wrap.type_2 .info .info_table td.col_3 .flex {flex-direction: row; gap: 0;}

    /* 전 직렬 팝업 */
    .tiny_pop {font-size: 11px;}
    .tiny_pop a {font-size: 10px;}

    /* 띠배너 */
    .bnr_default.series a .arrow {width: clamp(5px, 2.2vmin, 8px); height: clamp(8px, 2.2vmin, 13px);}
    .bnr_default.quizbank a .arrow,
    .bnr_default.pass_opinion a .arrow {width: clamp(5px, 2vmin, 7px); height: clamp(8px, 2vmin, 16px);}

    /* 기본 테이블 */
    .table_default tr th,
    .table_default tr td {padding: 7px 3px;}
    .table_default .tbl_pc {display: none;}
    .table_default .tbl_mo {display: table;} 
    .table_default .tiny_noti a {font-size: 10px;}

    /* S: left.asp */
    #headertop .depth2-wrp > div.fixed {position: static;}
    /* E: left.asp */

    /* S: 진단평가란? - main.asp */
    /* con_top */
    .con_top .visual_slider .item img {margin: 0 auto;}
    .con_top .visual_slider .item .arrow {right: 10vmin;}

    /* E: 진단평가란? - main.asp */

    /* S: 직렬 선택 가이드 - series_guide.asp */
    .evSeries .tip_title::before {width: 40px; height: 40px;}
    .evSeries .tip_title.tip2::before {background-position: -40px 0;}
    .evSeries .tip_title.tip3::before {background-position: -80px 0;}
    .evSeries .table_info colgroup col:nth-child(1) {width: 14% !important;}
    .evSeries .table_info colgroup col:nth-child(5) {width: 9% !important;}

    .series_cont .item {height: clamp(320px, 48vmin, 365px);}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_info_list > li{font-size:14px;padding:20px;}
    .subject_info_list > li .info_box {font-size: 12px;}
    .subject_info_list > li .b_tit {font-size: 14px;}
    .subject_info_list > li .num{margin-bottom:10px;}
    .subject_intro_wrap .tec_info dt {width: 40%; height: clamp(140px, 40vmin, 230px);}
    .subject_intro_wrap .tec_info dd {width: 60%;}
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */

    /* S: 응시 - apply_start.asp */
    .apply_start .answer_sheet .tbl_wrap {font-size: 14px;}
    .apply_start .answer_sheet .tbl_wrap tbody td {padding: 6px 0;}
    /* 문제 */
    .question_wrap .question {font-size: 14px;}
    .question_wrap .question .tit {font-size: 13px;}
    .question_wrap .question .box {padding: 10px;}

    /* 정답 및 해설 */
    .answer_box {font-size: 14px;}
    .answer_box .txt .correct {font-size: 16px; margin-top: 10px;}
    /* E: 응시 - apply_start.asp */

    /* S: 진단결과분석 - apply_result.asp */
    /* 테이블 */
    .result_tbl.grade_tbl td .qst_view {height: clamp(15px, 4vmin, 22px); background-size: auto 100%;}
    .result_tbl.predict_tbl colgroup col:first-child {border: none;}
    .result_tbl.predict_tbl tbody tr:first-child {border: 2px solid #c081ff;}
    .result_tbl.pass_tbl .badge {display: inline-block; max-width: 80%;}
    .result_tbl.cut_tbl tr th,
    .result_tbl.cut_tbl tr td {padding: 5px 2px;}
    .result_tbl.cut_tbl tr th > div.show-768 {display: inline-block !important;}
    .result_tbl.cut_tbl .subject::before {width: 100%; height: 1px; top: 50%; left: 0;}
    .result_tbl.cut_tbl .subject > div {flex-direction: column;}
    .result_tbl.cut_tbl .subject {font-size: 11px;}
    .result_tbl.cut_tbl .subject a {padding: 7px 3px;}
    .result_tbl.cut_tbl colgroup col:nth-child(n+2):nth-child(-n+4) {width: 13.5% !important;}
    .result_tbl.cut_tbl colgroup col:nth-child(5) {width: 27.5% !important;}
    .result_tbl.cut_tbl colgroup col:last-child {width: 14% !important;}

    .part-wrp + .tiny_noti a {font-size: 10px;}

    /* 필기합격선 */
    .graph_tab .grh > img {max-width: 80%;}
    /* E: 진단결과분석 - apply_result.asp */

    /* S: 학습계획가이드 - learning_guide.asp */
    .evLearning .graph_wrap.bar_graph {flex-wrap: wrap; justify-content: space-between;}
    .evLearning .graph_wrap.bar_graph .ico {order: 1;}
    .evLearning .graph_wrap.bar_graph .ico:first-of-type {text-align: left;}
    .evLearning .graph_wrap.bar_graph .ico:last-of-type {text-align: right;}
    .evLearning .graph_wrap.bar_graph .ico > img {width: 50%;}
    .evLearning .graph_wrap.bar_graph .grp {flex-basis: 100%; order: 2;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(1) {background: #e8d1ff;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4) {padding-right: 0;}
    .evLearning .graph_wrap.bar_graph .grp li:nth-child(4)::after {content: none;}

    .tip_tbl thead {display: none;}
    .tip_tbl .tbl_mo .cr_2 {background: #fef8b4;}
    .tip_tbl .tbl_mo tr td:nth-last-child(2) {background: #fffcd7;}
    .tip_tbl tbody td.prosncons {
        --title-height: clamp(20px, 3.2vmin, 30px);
        padding: 0; position: relative; line-height: 1.4;
    }
    .tip_tbl tbody td.prosncons > b {position: absolute; top: 0; left: 0; width: 100%; line-height: var(--title-height);}
    .tip_tbl tbody td.prosncons ul {padding: 15px 10px; /*margin-top: var(--title-height);*/}

    .tip_tbl tbody td.prosncons ul li.link a {font-size: 12px;}

    /* E: 학습계획가이드 - learning_guide.asp */
}
@media screen and (max-width: 576px){
    /* 컨텐츠 박스 */
    .box_default {padding: 20px 10px;}

    /* 나의 응시 정보 */
    .info_wrap .info.flex .info_title {align-self: flex-start;}
    .info_wrap .info .radio_list {flex-direction: column; align-items: flex-start; gap: 5px;}

    /* S: 직렬 선택 가이드 - series_guide.asp */
    .series_cont {flex-wrap: nowrap; flex-direction: column; background: none; gap: 2vmin;}
    .series_cont .item {width: 100%; height: auto;}
    /* E: 직렬 선택 가이드 - series_guide.asp */

    /* S: 과목별 특징 및 학습법 - subject_guide.asp */
    .subject_intro_wrap .tec_info dd .slogan {font-size: 13px;}
    .subject_intro_wrap .tec_info dd .home {font-size: 22px;}
    .tbl_subject_wrap .tbl_arrow{width:100px;}
    .subject_info_list > li .tbl_subject th, .subject_info_list > li .tbl_subject td{font-size:12px;}
    /* E: 과목별 특징 및 학습법 - subject_guide.asp */

    /* S: 학습계획가이드 - learning_guide.asp */
    .evLearning .txtbox_default {padding: 20px 10px;}
    .evLearning .box_default .box_title .tiny {display: block; margin-top: 0.5vmin;}

    .evLearning .graph_wrap.pie_graph {flex-direction: column; gap: 5vmin;}
    .evLearning .graph_wrap.pie_graph .grp {width: 68vmin;}
    .evLearning .graph_wrap.pie_graph .grp .piechart {height: 68vmin;}
    .evLearning .graph_wrap.pie_graph text {font-size: clamp(14px, 3vmin, 17px);}
    .evLearning .graph_wrap.pie_graph p::before {content: none;}
    .bnr_default.price + .tiny_noti {margin-top: 5px;}
    /* E: 학습계획가이드 - learning_guide.asp */
}`;

const excCss = `.eventWrap{max-height:80vh;overflow-y:auto;}
.eventWrap::-webkit-scrollbar{border-radius:4px;background:transparent;width:8px;}
.eventWrap::-webkit-scrollbar-track{/*background:#34374c;border-left:1px solid #212332;*/} 
.eventWrap::-webkit-scrollbar-thumb{background-color:#3333ff;border-radius:4px;background-clip:padding-box;border:1px solid transparent;}
.eventWrap::-webkit-scrollbar-thumb:hover{background-color:#778298;}`;

const js = `//3개년 추이 
$(window).on("load", function() {
    var cd = "1911-1011410110531"; //모집단위 코드
    var exam_gbn = "9"; //7급,9급 여부  
    var exam_gbn_2 = "1";//국가직,지방직,교육청  
    var exam_grp = ("행정직군" == "행정직군") ? "101" : "102"; //직군(행정직/기술직..) 

    $.get("/l/gong/guide/get_info2.asp?mode=get_3y_trans&cd="+cd+"&exam_code="+exam_gbn+"&exam_code2="+exam_gbn_2+"&exam_grp="+exam_grp,function(data) {
        $("#insRecent").html(data);
        $(window).resize();
        $("#insRecent h4").hide();
    });   
});

$("#special_subj_know").show();


var curr_dpt_kbn = ("기술직군" == "행정직군") ? "2" : "1";  

function clickTabCutline(dpt_kbn) {
    curr_dpt_kbn = dpt_kbn;
    $(".result_tab ul li").removeClass("on");
    $(".result_tab ul li").eq(Number(dpt_kbn)-1).addClass("on");
    $(".graph_tab .grh").children().eq(0).attr("src", "https://design.megagong.net/image/m/2024/0708_exam/result_graph_" + dpt_kbn + ".png");
    $(".graph_tab .grh").children().eq(1).attr("src", "https://design.megagong.net/image/m/2024/0708_exam/result_graph_" + dpt_kbn + "_mo.png");
    loadCutlineTable('1');
}
clickTabCutline(curr_dpt_kbn);

function loadCutlineTable(ord_kbn) { 
    var params = {
        exam_idx: "13",
        bpd_code: "1911-1011410110531",
        tot_avg_scr: "80",
        dpt_kbn: curr_dpt_kbn,
        order_kbn: ord_kbn,
        now: "2024-07-16 13:41:58"
    }
    // $("#cutline_table").load("./apply_result_cutline.asp", params);
}

$("input[name=tblSort]").change(function() {
    loadCutlineTable($(this).val());
});

function showQst(subj_cd,qno) {
    $("#questionBox .question").children("div").hide();
    $("#questionBox .answer_box").children("div").hide();
    $("#q" + subj_cd + "_" + qno).show();
    $("#a" + subj_cd + "_" + qno).show();

    qst_popupOn();

    $('div.scroll_box').animate({scrollTop : 0}, 0);
}

function openSubjGuide(tab, sub) {
    if (sub == '0') {
        alert('준비 중입니다.');
        return;
    }
    window.open('about:blank').location.href="/l/exam/gong/2024_2/subject_guide.asp?tab=" + tab + "&s" + tab + "=" + sub;
}

//  팝업 띄우기
function qst_popupOn(subj_nm) {
    if($("#questnPop").css("display") == "none"){
        $("#questnPop").show();
        //wrapWindowByMask();
        // $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop").hide();
        // $("body").unbind('touchmove');
    }
    return false;
}
(function () {
$('#questnPop .btnClose').on('click', function (e) {
    e.preventDefault();
    $('#questnPop').hide().removeClass('on');
});
$('#questnPop .dimBg').on('click', function () {
    $('#questnPop .btnClose').trigger('click');
});
})();

//  팝업 띄우기
function qst_popupOn2(subj_nm, dpt_kbn) {
    // 행정직
    if (dpt_kbn == '1') {
        
    }
    // 기술직
    if (dpt_kbn == '2') {
        
    }

    $(".subj_nm[data-title=" + subj_nm +"]").show();

    if($("#questnPop2").css("display") == "none"){
        $("#questnPop2").show();
        //wrapWindowByMask();
        // $("body").bind('touchmove', function(e){e.preventDefault()});
    }else{
        $("questnPop2").hide();
        // $("body").unbind('touchmove');
    }
    return false;
}
(function () {
    $('#questnPop2 .btnClose').on('click', function (e) {
        e.preventDefault();
        $('#questnPop2').hide().removeClass('on');
        $('.subj_nm').hide();
    });
    $('#questnPop2 .dimBg').on('click', function () {
        $('#questnPop2 .btnClose').trigger('click');
    });
})();`;

const outJs = ``;

    return (
      <PageContent
        title={title}
        desc=""
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["진단평가", "진단 결과 분석"]}
        link="<%=lab_main%>/l/exam/gong/2024_2/apply_result.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>