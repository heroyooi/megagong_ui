<script type="text/babel">
  'use strict';

  function Exam7({ title, onChange }) {

const html = `<!-- 메가공무원 9급 합격대비 기초학습 진단평가 S -->
<div id="eventWrap" class="eventWrap">
    <!-- 과목별 특징 및 학습법 S -->
    <div class="evSection evSubject">
        <div class="inner">
            <div class="title_default">
                <h4>과목별 특징 및 학습법</h4>
            </div>

            <div class="con_box">
                <ul id="tabSubject" class="tab_base tab_default">
                    <li <%If Request.QueryString("tab") <= 1 then%> class="on"<%End if%>><a href="javascript:void(0);">공통과목</a></li>
                    <li <%If Request.QueryString("tab") = 2 then%> class="on"<%End if%>><a href="javascript:void(0);">전문과목(행정)</a></li>
                    <li <%If Request.QueryString("tab") = 3 then%> class="on"<%End if%>><a href="javascript:void(0);">전문과목(기술)</a></li>
                </ul>
                <ul class="panel_base">
                    <li id="tabSubject1" style="display: block;">
                        <ul class="tab_base tab_sub">
                            <li <%If Request.QueryString("s1") <= 1 then%> class="on"<%End if%>><a href="javascript:void(0);">국어</a></li>
                            <li <%If Request.QueryString("s1") = 2 then%> class="on"<%End if%>><a href="javascript:void(0);">영어</a></li>
                            <li <%If Request.QueryString("s1") = 3 then%> class="on"<%End if%>><a href="javascript:void(0);">한국사</a></li>
                        </ul>
                        <ul class="panel_base panel_sub">
                            <li id="subject1_1" style="display: block;">
                                <!-- 이유진(lyj4718) -->
                                <div class="subject_intro_wrap">
                                    <dl class="tec_info">
                                        <dt><img src="https://design.megagong.net/image/profphoto/gong/lyj4718/Prof3.png" alt=""></dt>
                                        <dd>
                                            <span class="slogan">“공무원 합격을 위한 이유 있는 선택”</span>
                                            <a class="home" target="_blank" href="https://dev.megagong.net/teacher/home.asp?bcode=lyj4718">이유진 선생님 <span>H</span></a>
                                            <div class="btns_wrap">
                                                <a href="#" class="btn_base">무료특강 &gt;</a>
                                                <a href="#" class="btn_base">커리큘럼 소개 &gt;</a>
                                            </div>
                                        </dd>
                                    </dl>
                                    <ul class="subject_info_list">
                                        <li>
                                            <span class="num">1. 국어 개요</span>
                                            <p class="con"><strong>이제 국어는 사고력</strong>, 똑똑한 알고리즘으로 승부하자! <br />- 영역별 학습이 아니라 사고 유형별 훈련이 필요합니다.</p>
                                        </li>
                                        <li>
                                            <span class="num">2. 최근 출제 경향</span>
                                            <p class="con">9급 공무원 시험을 이루는 5과목 중, 최근 5년간 가장 급격한 출제 경향의 변화를 보여준 과목은 단연코 ‘국어’입니다.</p>
                                            <ul class="info_box">
                                                <li>· 2018 년 국가직 - 이전에 3 쪽이었던 국어가 4 쪽으로 늘어남 = 텍스트 분량 증가</li>
                                                <li>· 2019 년 국가직 - 10~12 제였던 독해 유형을 15 제로 늘리고 화법 유형을 3 제 출제</li>
                                                <li>· 2021 년 국가직 - 일반추론 유형 출제 시작</li>
                                                <li>· 2022 년 지방직 - PSAT 형 논리추론 출제 시작</li>
                                                <li>· 2023 년 1 월 9 급 공무원 시험 국어·영어 출제 기조 전환 예고</li>
                                                <li>· 2023 년 11 월 9 급 공무원 시험 국어·영어 출제 기조 전환 예시 문항 공개</li>
                                            </ul>
                                            <p class="con">따라서 이번 인사혁신처의 출제 기조 전환은 새삼스럽거나 급격한 일이 아니라 차근차근 준비되어 온 것이라는 인식 아래 정확한 방향성을 가지고 대비하시면 됩니다. 예비평가를 바탕으로 했을 때, 기존 공무원 국어 시험과 가장 달라지는 부분은 네 가지입니다.</p>
                                            <p class="con">첫째, <strong>문법 지식은 비문학 지문의 언어학 제재로 활용</strong>됩니다. 지문 내용만으로도 답이 도출되지만 문법 개념 지식이 있다면 이해가 훨씬 수월한 것이 사실입니다. 독해 유형 중 사례추론형으로 주로 출제될 것입니다.</p>
                                            <p class="con">둘째, <strong>문학 역시 비문학 지문의 제재로 활용</strong>됩니다. 작품 자체를 미리 숙지해야 할 필요가 없어지고, 지문의 내용에 의거하여 인용된 작품에 대한 내용확인이나 비판추론을 시킬 것입니다.</p>
                                            <p class="con">셋째, <strong>논리추론의 중요도</strong>가 높아집니다. 기존에는 빈칸추론 정도로 출제되던 전제추론 유형을, 기초논리학을 바탕으로 논리식을 세워야 시간 안에 적절한 풀이가 가능하도록 난도를 조정할 것입니다.</p>
                                            <p class="con">넷째, <strong>비문학 독해에 필요한 수준의 문맥적 어휘력을 측정</strong>합니다. 기존의 공무원 국어 유형처럼 한자나 성어의 표기 확인 문제를 출제하지 않았습니다.</p>
                                        </li>
                                        <li>
                                            <span class="num">3. 영역별 출제 비율</span>
                                            <div class="tbl_subject_wrap">
                                                <table summary="영역별 출제 비율 요약" class="tbl_subject lg">
                                                    <colgroup>
                                                        <col width="*" />
                                                        <col width="33.333%" />
                                                        <col width="33.333%" />
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" rowspan="2">영역</th>
                                                            <th scope="col" colspan="2">2024</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="col">국가직</th>
                                                            <th scope="col">지방직</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">문법규정</th>
                                                            <td>2</td>
                                                            <td>2</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">비문학</th>
                                                            <td>11</td>
                                                            <td>11</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">문학</th>
                                                            <td>4</td>
                                                            <td>4</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">어휘</th>
                                                            <td>3</td>
                                                            <td>3</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <span class="tbl_arrow"><img src="https://design.megagong.net/image/m/2024/0708_exam/bg_arrow.png" alt=""></span>
                                                <table summary="영역별 출제 비율 요약" class="tbl_subject sm">
                                                    <colgroup>
                                                        <col width="*" />
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">2025</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="col">예시 문제</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>- (제재로 활용 3)</td>
                                                        </tr>
                                                        <tr>
                                                            <td>18</td>
                                                        </tr>
                                                        <tr>
                                                            <td>- (제재로 활용 3)</td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <p class="tiny">* 2025 영역별 출제 비율은 인사혁신처 발표 ‘9급 출제 기조 전환 예시 문제’ 기준이며, 본시험 출제 비율은 변동될 수 있습니다</p>
                                            
                                        </li>
                                        <li>
                                            <span class="num">4. 예비수험생 및 초시생을 위한 학습 전략</span>

                                            <p class="s-tit">독해 사고력</p>
                                            <p class="con">지문의 핵심 내용을 파악하여 주제를 찾는 유형, 제시된 정보를 바탕으로 선지의 참거짓을 따지는 유형, 정보의 관계를 따져 적절한 위치에 내용을 배치하거나 논리적 순서에 맞게 배열하는 유형 등은 기존에도 출제되던 유형들이지만, 지문 제재가 이전보다 다양해질 것입니다. 따라서 이런 기본 유형들은 다양한 제재와 난도의 지문으로 훈련하여 안전하게 득점할 수 있도록 해야 합니다.</p>

                                            <p class="con">지문에 대한 정독과 속독이 동시에 이루어질 수 있도록 훈련하셔야 합니다. 정독법을 먼저 배우신 후 속독법을 적용하는 순서를 지키셔야 하며, 독해 사고력 발달 순서에 맞게 [요약 → 구조이해 → 구조응용 → 내용확인 → 일반추론 → 응용추론 → 논리추론 → 화법 작문] 순서를 지켜서 유형별로 훈련해 주세요. <br />
                                            제재별 훈련은 유형 훈련 후 약점 제재 위주로 진행하시면 됩니다. <br>
                                            지문 내용을 잘 이해해 놓고서도 묻는 말에 제대로 답하지 않고 ‘자의적 사고’에 빠져 매력적 오답을 합리화 하는 경우가 많습니다. 발문(묻는 말)을 보고 출제자의 의도에 맞는 정답을 능동적으로 도출하고, 선지 제작에 활용되는 매력적 오답들의 패턴을 숙지하여 함정을 피할 수 있도록 하세요. <br />매일 꾸준히 문제를 풀더라도 자기 멋대로 답하는 과정을 반복하면 시험장에서는 득점을 할 수가 없습니다. 방법론을 체화한 뒤에 문제 난도를 점진적으로 상승시키며 훈련한 뒤, 약점 유형을 산출하여 시험장에 가시는 그날까지 더 높은 독해력과 사고력을 갖출 수 있도록 하세요.</p>

                                            <p class="s-tit">논리 추론력</p>
                                            <p class="con">기초적인 논리 공식을 활용하면 정답을 도출할 수 있는 수준의 논리 추론 문제가 출제됩니다. 따라서 제한된 시간 안에 문제를 해결해야 하는 만큼, 독해알고리즘에서 출제 범위로 예측되는 논리학 개념을 배운 뒤 쿼터홈트 예문 훈련을 통해 기호식을 만들고 공식을 활용하는 연습을 충분히 해야 합니다. 그 뒤에 논리추론 딥러닝과 모의고사에서 객관식 연습 문제들을 통해 공식을 적용하는 것이 원활한 수준을 만들어야 합니다. <br />
                                            즉, 성급하게 객관식 문제를 접하시는 것보다는 기초 개념을 배운 뒤 예문 훈련을 거쳐 객관식을 접하는 것이 가장 정확하고 안전한 학습 방향입니다.</p>

                                                <p class="s-tit">국어 능력 - 언어학(문법규정) + 문학 스키마 형성</p>
                                                <p class="con">광범위한 개념과 예시의 암기를 전제로 하던 문법규정 영역은 이제 지문제시형으로 바뀌었습니다. 따라서 기본적인 개념을 배경지식으로 숙지해 두면 속독에 유리할 것이나, 필요 이상의 세부적 개념을 배우거나 기출 예시를 암기 등의 학습은 필요하지 않습니다. <br />
                                                따라서 기출을 회독하는 암기형 학습보다는, 2025 년에 맞춰 지문제시형으로 출제된 예상 문제들을 통해, 지문 속 개념과 예시의 원리를 동원하여 문제를 해결하는 훈련을 해야 합니다. <br />
                                                독해 제재로 활용 가능한 문학 지식(발달사, 장르사, 작가론 등)을 거시적으로 한 번 정리한 뒤부터는 비문학 훈련과 동일합니다. 문학 제재의 비문학 독해 문제 풀이를 많이 하시면 됩니다. 너무 배경 지식에 의존하지 마시고 지문에 제시된 정보만 가지고 선지를 판단하는 훈련을 하셔야 합니다.</p>

                                                <p class="s-tit">어휘력</p>
                                                <p class="con">독해와 동떨어진 유형으로 따로 출제되던 기존 방식과 달리, 독해 지문 안에 활용된 어휘의 문맥적 의미를 묻는 유형이 출제될 것입니다. 따라서 문맥 추론 능력에 대한 훈련과 함께 민간어학시험 수준의 독해 지문들에 자주 사용되는 상용한자어를 미리 숙지해 두시면 도움이 될 것입니다. 따로 시간을 배정하기 어렵다면 독해 훈련 중 만나게 되는 어휘들을 꼼꼼하게 확인하세요.</p>
                                                <p class="con">그러니 저는 늘 대비해 왔습니다. 그러니 무서워하지 않으셔도 됩니다. <br />남들에게는 어렵고, 우리에게는 쉬운 국어가 될 거예요^^</p>
                                        </li>
                                    </ul>
                                </div><!-- 이유진(lyj4718) / 국어 -->
                            </li>
                            <li id="subject1_2">
                                <!-- 조태정(tjenglish08) -->
                                <div class="subject_intro_wrap">
                                    <dl class="tec_info">
                                        <dt><img src="https://design.megagong.net/image/profphoto/gong/tjenglish08/Prof3.png" alt=""></dt>
                                        <dd>
                                            <span class="slogan">“2025에도 공시 영어는 조태정입니다”</span>
                                            <a class="home" target="_blank" href="https://dev.megagong.net/teacher/home.asp?bcode=tjenglish08">조태정 선생님 <span>H</span></a>
                                            <div class="btns_wrap">
                                                <a href="#" class="btn_base">무료특강 &gt;</a>
                                                <a href="#" class="btn_base">커리큘럼 소개 &gt;</a>
                                            </div>
                                        </dd>
                                    </dl>
                                    <ul class="subject_info_list">
                                        <li>
                                            <span class="num">1. 영어 개요</span>
                                            <p class="con"><strong>공무원 시험에서의 영어란, 어휘, 문법, 생활영어, 독해 유형의 문제들이 우리가 생활 속에서 많이 쓰는 표현들과 함께 출제되는 과목</strong>입니다. 즉, 우리가 어린시절부터 접해온 문법, 독해 위주의 문제 뿐만 아니라 어휘, 생활영어 유형의 문제들을 통해 미래의 공직자가 되었을 때 업무상에서 영어를 유용히 사용할 수 있는가?를 평가하기 위한 과목입니다.</p>
                                            <p class="con">이에 따라, <strong>2025 예시문제에서는 유용성/실용성에 중점</strong>을 두었다는 것을 확인할 수 있습니다. 기존 시험과 비교했을 때 <strong>공무원 영어시험은 기출에 의존하기 보다는 기본적인 어휘와 문법 개념 등이 출제</strong>될 것이고 결론적으로는 암기할 것이 많이 줄어들 것으로 보입니다.</p>
                                        </li>
                                        <li>
                                            <span class="num">2. 최근 출제 경향</span>
                                            <p class="con">2025 출제 기조 전환의 모토는 “지식 암기 위주에서 현장 직무 중심으로” 바꾸는 것입니다. 즉, 지식암기 위주로 출제되고 있는 기존 영어 과목의 출제 기조를 직무 능력 중심으로 바꾸고, 민간 채용과의 호환성을 강화하는 것인데요. 영어 과목은 실제 업무 수행에 필요한 실용적인 영어 능력을 검증한다는 것이 보도자료의 내용입니다. <br /><strong>기존의 단순 암기에서 벗어나 실용적인 능력을 평가</strong>하는 시험이 되었고, 이에 맞춰서 학습 방법을 달리 해야할 것입니다. <strong>어휘는 지엽적인 내용을 배제하고 기본적이지만 필수적인 것들을 꼼꼼히 암기</strong>해야 하며, <strong>문법 또한 지엽적인 포인트를 학습하는 대신 보편적으로 알고 있는 기본적인 이론</strong>들을 확실히 잡아가야 할 것입니다. 독해의 경우 간 시험 형태의 유형을 도입하여 걱정하실 수 있으나 어렵지 않게 출제될 것으로 보이며, 기존에 학습해 온 독해 방식에서 보다 정확하게 해석하는 연습을 해 주시면 되겠습니다. <br />이제 더이상 영어가 공무원 시험을 준비하는 데에 있어, 혹은 합격하는 데에 있어 걸림돌이 되지 않을 것이나, 그럼에도 영어는 영어이기 때문에 꾸준히 감을 유지하면서 준비해 주시기 바랍니다.</p>
                                        </li>
                                        <li>
                                            <span class="num">3. 영역별 출제 비율</span>
                                            <div class="tbl_subject_wrap">
                                                <table summary="영역별 출제 비율 요약" class="tbl_subject lg">
                                                    <colgroup>
                                                        <col width="*" />
                                                        <col width="33.333%" />
                                                        <col width="33.333%" />
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col" rowspan="2">영역</th>
                                                            <th scope="col" colspan="2">2024</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="col">국가직</th>
                                                            <th scope="col">지방직</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <th scope="row">어휘</th>
                                                            <td>5</td>
                                                            <td>5</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">문법</th>
                                                            <td>3</td>
                                                            <td>3</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">생활영어</th>
                                                            <td>3</td>
                                                            <td>3</td>
                                                        </tr>
                                                        <tr>
                                                            <th scope="row">독해</th>
                                                            <td>9</td>
                                                            <td>9</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <span class="tbl_arrow"><img src="https://design.megagong.net/image/m/2024/0708_exam/bg_arrow.png" alt=""></span>
                                                <table summary="영역별 출제 비율 요약" class="tbl_subject sm">
                                                    <colgroup>
                                                        <col width="*" />
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">2025</th>
                                                        </tr>
                                                        <tr>
                                                            <th scope="col">예시 문제</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>2</td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                        </tr>
                                                        <tr>
                                                            <td>13</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <p class="tiny">* 2025 영역별 출제 비율은 인사혁신처 발표 ‘9급 출제 기조 전환 예시 문제’ 기준이며, 본시험 출제 비율은 변동될 수 있습니다.</p>
                                            
                                        </li>
                                        <li>
                                            <span class="num">4. 예비수험생 및 초시생을 위한 학습 전략</span>

                                            <p class="s-tit">어휘</p>
                                            <p class="con">기존의 단순 암기에서 벗어나 실용적인 능력을 평가하는 시험으로 바뀌는 출제기조 전환에 가장 많은 영향을 받는 영역이라고도 할 수 있습니다. 특히나 어휘의 경우 기존의 지엽적인 단어/숙어/이디엄을 배제하고 문맥과 기본단어를 통해 추리하여 해결하도록 하는 문제가 출제될 것이므로, 기본적이면서 필수적이고 보편적인 단어를 확실히 암기하면서 문맥을 통해 추리하여 푸는 연습을 꾸준히 해 주시기 바랍니다. <br />추천 커리 : 베이직 보카루트(기초 단어) > 공무원 보카루트(기본 필수 단어)</p>

                                            <p class="s-tit">문법</p>
                                            <p class="con">문법 또한 지엽적인 지식형/영작형 등의 문장 형식의 출제를 배제하고 빈칸 형태를 도입함과 동시에 보편적인 문법 지식을 활용할 것으로 보입니다. 동사의 수, 시제 일치, 태 등과 같은 기본적인 이론을 꼼꼼히 학습하면서 준동사 등 어느 정도 난도 있지만 중요한 단원까지 커버해 준다면 충분히 출제되는 문법 문제 모두를 맞힐 수 있습니다. 영어 시험에서 합격의 당락을 좌지우지하는 영역이 바로 문법입니다. 이 부분은 출제 기조 전환에도 그대로 유지될 것입니다. 따라서 문법은 철저한 학습이 필요합니다. 문법이 해결되면 무조건 합격한다는 마음가짐으로 꼼꼼하게 학습해 주실 것을 당부드립니다. 문법은 선생님의 영역이라고 말씀드립니다. 별다른 복습없이 강의만 잘 따라와도 충분히 문법 정복할 수 있도록 여러분을 이끌어 드리겠습니다. <br />추천 커리 : 리베이스 &gt; 기심론 &gt; 리그래머 125 &gt; 문법 525 &gt; 동형 모의고사</p>

                                            <p class="s-tit">독해</p>
                                            <p class="con">출제기조 전환에 따라 독해 영역에서 보이고 있는 변화는 민간 시험 형태의 유형 도입입니다. 자칫 당황할 수도 있으나 신유형은 상대적으로 변별력이 낮습니다. 이는 다소 수월하게 출제될 것이란 의미이며, 유형 자체에 대한 적응력이 관건일 것으로 보입니다. 기존의 출제 유형 중 빈삽순삭(빈칸/문장삽입/순서/문장삭제)에 대한 철저한 학습과 연습이 필요할 것입니다. 해당 유형을 보다 심도있게 연습해 주셔야 할 것이고, 주제/일치 등 쉬운 유형에서도 구문적인 유창성이 제고됩니다. 즉, 글의 길이는 짧으나 문장 구조를 파악하면서 정확하게 해석할 수 있는지가 관건이 될 것이고, 따라서 늘 강조해왔듯 정확한 해석을 습관화하는 과정이 필수적이라고 할 수 있습니다. <br />추천 커리 : 리베이스 &gt; 기심론 &gt; 매일 독해, 신유형독해 200제 &gt; 빈삽순삭</p>

                                            <p class="s-tit">생활영어</p>
                                            <p class="con">크게 ‘대화형’, ‘이디엄 표현’의 두 가지 유형으로 나뉘었던 생활영어는 단순 암기를 배제한다는 기조 전환에 따라 이디엄 및 생활영어적 표현이 배제되고 대화를 통한 추론 능력을 주로 평가할 것으로 보입니다. 생활영어는 미리 학습하는 것보다 대화의 흐름을 통해 추론하는 연습을 해 주시면 충분히 대비 가능할 것입니다. <br />추천 커리 : 클라이맥스, 데일리루틴 시리즈, 동형 모의고사</p>
                                        </li>
                                    </ul>
                                </div><!-- 조태정(tjenglish08) / 영어 -->
                            </li>
                            <li id="subject1_3">
                                <div class="subject_intro_wrap">
                                    <dl class="tec_info">
                                        <dt><img src="https://design.megagong.net/image/profphoto/gong/jeonhangil/Prof3.png" alt=""></dt>
                                        <dd>
                                            <span class="slogan">“처음부터 끝까지, <br class="show-460">수험생을 위한 책임과 진심”</span>
                                            <a class="home" target="_blank" href="https://dev.megagong.net/teacher/home.asp?bcode=jeonhangil">전한길 선생님 <span>H</span></a>
                                            <div class="btns_wrap">
                                                <a href="#" class="btn_base">무료특강 &gt;</a>
                                                <a href="#" class="btn_base">커리큘럼 소개 &gt;</a>
                                            </div>
                                        </dd>
                                    </dl>
                                    <ul class="subject_info_list">
                                        <li>
                                            <span class="num">1. 한국사 개요</span>
                                            <p class="con"><strong>한국사는 우리나라의 역사를 정치, 경제, 사회, 문화 등으로 분류하여 학생들이 역사를 종합적 · 체계적으로 학습할 수 있도록 한 과목</strong>입니다. <strong>정규교육 과정에 속한 과목이기에 낯설진 않겠지만, 암기가 필요한 과목</strong>이라 호불호가 갈리기도 합니다.</p>
                                            <p class="con">범위가 선사 시대에서부터 현대사까지라 분량이 많고, 연도와 인물 그리고 주요 사건 등 암기가 필요한 과목이라 처음 공부할 때는 어렵게 느껴질 테지만, <strong>반복 학습과 각자의 노하우가 쌓이면 재미를 찾을 수 있는 효자 과목</strong>입니다.</p>
                                        </li>
                                        <li>
                                            <span class="num">2. 최근 출제 경향</span>
                                            <p class="con"><strong>최근 공무원 한국사 시험은 비교적 평이한 난이도</strong>의 문제가 주를 이루고 있습니다. 짧은 사료를 제시하고 사료와 관련된 인물이나 사건을 묻는 문제가 대부분이며, 단답형 문제와 연표형 문제, 순서 나열 문제도 한 문제씩 꾸준히 출제되고 있습니다.</p>
                                            <p class="con">평균적으로 20문제 중 <strong>전근대사 12문제, 근현대사 8문제</strong> 정도의 비율로 출제되며, 전 시대를 아우르는 지역사·분류사 문제가 출제되기도 합니다.</p>
                                            <p class="con"><strong>2025년에도 크게 변하지 않고 이전과 같은 난이도와 유형으로 출제</strong>될 것으로 예상됩니다.</p>
                                        </li>
                                        <li>
                                            <span class="num">3. 영역별 출제 비중</span>
                                            <table summary="영역별 출제 비중 요약" class="tbl_subject">
                                                <colgroup>
                                                    <col width="*" />
                                                    <col width="14.2857%" />
                                                    <col width="14.2857%" />
                                                    <col width="14.2857%" />
                                                    <col width="14.2857%" />
                                                    <col width="14.2857%" />
                                                    <col width="14.2857%" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th scope="col" rowspan="2">영역</th>
                                                        <th scope="col" colspan="3">국가직</th>
                                                        <th scope="col" colspan="3">지방직</th>
                                                    </tr>
                                                    <tr>
                                                        <th scope="col">2024</th>
                                                        <th scope="col">2023</th>
                                                        <th scope="col">2022</th>
                                                        <th scope="col">2024</th>
                                                        <th scope="col">2023</th>
                                                        <th scope="col">2022</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">선사/초기국가</th>
                                                        <td>-</td>
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>2</td>
                                                        <td>1</td>
                                                        <td>-</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">고대</th>
                                                        <td>3</td>
                                                        <td>3</td>
                                                        <td>3</td>
                                                        <td>2</td>
                                                        <td>2</td>
                                                        <td>4</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">고려</th>
                                                        <td>4</td>
                                                        <td>3</td>
                                                        <td>4</td>
                                                        <td>3</td>
                                                        <td>3</td>
                                                        <td>4</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">조선</th>
                                                        <td>3</td>
                                                        <td>4</td>
                                                        <td>4</td>
                                                        <td>3</td>
                                                        <td>4</td>
                                                        <td>4</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">근대</th>
                                                        <td>3</td>
                                                        <td>3</td>
                                                        <td>3</td>
                                                        <td>4</td>
                                                        <td>4</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">일제 강점기</th>
                                                        <td>5</td>
                                                        <td>3</td>
                                                        <td>2</td>
                                                        <td>3</td>
                                                        <td>3</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">현대</th>
                                                        <td>1</td>
                                                        <td>2</td>
                                                        <td>2</td>
                                                        <td>1</td>
                                                        <td>2</td>
                                                        <td>3</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">기타</th>
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>2</td>
                                                        <td>1</td>
                                                        <td>1</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </li>
                                        <li>
                                            <span class="num">4. 예비수험생 및 초시생을 위한 학습 전략</span>
                                            <p class="con">한국사는 공부해야 할 <strong>분량이 많기 때문에, 독학보다는 자신에게 맞는 선생님의 커리큘럼에 따라 공부를 시작</strong>하는 것이 좋습니다. 전한길 한국사의 단기고득점 자동화 시스템은 [1단계] 이론(2.0 올인원 개념완성) → [2단계] 기출문제 풀이(3.0 기출문제집) → 3단계 최종점검(4.0 실전동형 모의고사) 순으로 진행되며, 필기노트, 사료집 등 특강을 추가로 선택할 수 있습니다. 본인이 기초가 부족하다는 생각이 들면 꼭 이론부터 시작해 주세요. 최근 공무원 한국사 문제의 난도가 높지 않다고 하지만, 이건 기초를 튼튼히 쌓은 수험생에게만 해당합니다. <br />
                                            또한, 한국사를 암기 과목이라고 생각하고 개념을 이해하기도 전에 무조건 외우려고만 한다면, 시간도 오래 걸릴 뿐더러 오히려 더 기피하게 될 확률이 높습니다. 따라서 <strong>처음에는 암기보다는 사료와 개념을 이해</strong>한다고 생각하며 공부하고, <strong>이후 암기와 함께 빈칸 채우기, OX 문제 등 반복 학습을 통해 학습</strong>하는 것이 좋습니다</p>
                                        </li>
                                    </ul>
                                </div><!-- 전한길(jeonhangil) / 한국사 -->
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 과목별 특징 및 학습법 E -->

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

const js = ``;

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
        items={["진단평가", "과목별 특징 및 학슥법"]}
        link="<%=lab_main%>/l/exam/gong/2024_2/subject_guide.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>