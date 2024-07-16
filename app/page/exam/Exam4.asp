<script type="text/babel">
  'use strict';

  function Exam4({ title, onChange }) {

const html = `<!-- 메가공무원 9급 합격대비 기초학습 진단평가 S -->
<div id="eventWrap" class="eventWrap">
    <!-- 진단평가 응시 S -->
    <div id="apply_start" class="evSection apply_start">
        <div class="inner">
            <div class="title_default">
                <h4>진단평가 응시</h4>
            </div>

            <!--<div class="series bnr_default">
                <a href="./series_guide.asp" title="직렬 선택 가이드">
                    아직 직렬 고민 중이라면? <br class="show-992" /><span>직렬 선택 가이드</span> 및 <br class="show-576" />직렬별 <span>과목 소개</span> 보러 가기 <i class="arrow"></i>
                </a>
            </div>-->

            <ul class="apply_noti box_default">
                <li><span class="mark">ㆍ</span>진단평가는 <b>1회만 응시 가능</b>하며, 정확한 진단 결과를 얻기 위해서는 모르는 문항이라도 그냥 넘어가기보다  가급적 모든 문항을 푸는 것이 좋습니다.</li>
                <li><span class="mark">ㆍ</span>모든 문항의 답안을 입력하여야 최종 제출이 가능합니다.</li>
            </ul>

            <div class="box_default">
                <div class="result_tab">
                    <ul>
                        <li id="tab_10" class="on"><a href="javascript:;" onclick="getTabSubj('10')" title="국어">국어</a></li>
                        <li id="tab_11"><a href="javascript:;" onclick="getTabSubj('11')" title="영어">영어</a></li>
                        <li id="tab_12"><a href="javascript:;" onclick="getTabSubj('12')" title="한국사">한국사</a></li>
                    </ul>
                </div>

                <div class="test_paper flex">
                    <!-- 문제영역 S -->
                    <div class="question_wrap">
                        <div class="question_zone">
                            <!-- 문제 -->
                            <div class="question">
                                <!-- 국어 S -->
                                <div id="q10_1" class="q1_1" style="">
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
                                            <li><span class="mark">(나)</span>공직에 관심이 있는 사람은 모두 일자리 문제에 관심이 있는 사람이다. <br>따라서 <span class="blnk"></span>.</li>
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
                                            <li><span class="mark">■</span><b>Dates</b>:?Friday, June 16 - Sunday, June 18</li>
                                            <li><span class="mark">■</span><b>Times</b>:?10 : 00 a.m. - 8 : 00 p.m. (Friday &amp; Saturday) <br>10 : 00 a.m. - 6 : 00 p.m. (Sunday)</li>
                                            <li><span class="mark">■</span><b>Location</b>:?City Harbour Park, Main Street, and surrounding areas</li>
                                        </ul>
                                        <strong>Highlights</strong>
                                        <ul class="choices">
                                            <li><span class="mark">■</span><b>Live Performances</b><br>Enjoy a variety of live music, dance, and theatrical performances on multiple stages throughout the festival grounds.</li>
                                            <li><span class="mark">■</span><b>Food Trucks</b><br>Have a feast with a wide selection of food trucks offering diverse and delicious cuisines, as well as free sample tastings.</li>
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
                                            <li><span class="mark">■</span><b>Dates</b>:?Friday, June 16 - Sunday, June 18</li>
                                            <li><span class="mark">■</span><b>Times</b>:?10 : 00 a.m. - 8 : 00 p.m. (Friday &amp; Saturday) <br>10 : 00 a.m. - 6 : 00 p.m. (Sunday)</li>
                                            <li><span class="mark">■</span><b>Location</b>:?City Harbour Park, Main Street, and surrounding areas</li>
                                        </ul>
                                        <strong>Highlights</strong>
                                        <ul class="choices">
                                            <li><span class="mark">■</span><b>Live Performances</b><br>Enjoy a variety of live music, dance, and theatrical performances on multiple stages throughout the festival grounds.</li>
                                            <li><span class="mark">■</span><b>Food Trucks</b><br>Have a feast with a wide selection of food trucks offering diverse and delicious cuisines, as well as free sample tastings.</li>
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
                            <!-- 버튼 S -->
                            <div class="btn_wrap subject">
                                <a href="javascript:;" onclick="getQno('prev');" id="btn_prev_subj" name="btn_prev_subj" class="prev" title="이전 문제">이전 문제</a>
                                <a href="javascript:;" onclick="getQno('next');" id="btn_next_subj" name="btn_next_subj" class="next" title="다음 문제">다음 문제</a>
                            </div>
                            <!-- 버튼 E -->
                        </div>
                    </div>
                    <!-- 문제영역 E -->
                    <!-- 답안지 S -->
                    <div class="answer_sheet">
                        <div class="tbl_wrap kor">
                            <table title="답안지 입력">
                                <colgroup>
                                    <col style="width: 15%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th colspan="6">국어 답안지</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr>
                                        <th>1</th>
                                        
                                        <td id="q_10_1_1">
                                            <a href="javascript:;" onclick="setAns(this, '10', '1', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_1_2">
                                            <a href="javascript:;" onclick="setAns(this, '10', '1', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_1_3">
                                            <a href="javascript:;" onclick="setAns(this, '10', '1', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_1_4">
                                            <a href="javascript:;" onclick="setAns(this, '10', '1', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_1_5">
                                            <a href="javascript:;" onclick="setAns(this, '10', '1', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>2</th>
                                        
                                        <td id="q_10_2_1">
                                            <a href="javascript:;" onclick="setAns(this, '10', '2', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_2_2">
                                            <a href="javascript:;" onclick="setAns(this, '10', '2', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_2_3">
                                            <a href="javascript:;" onclick="setAns(this, '10', '2', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_2_4">
                                            <a href="javascript:;" onclick="setAns(this, '10', '2', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_2_5">
                                            <a href="javascript:;" onclick="setAns(this, '10', '2', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>3</th>
                                        
                                        <td id="q_10_3_1">
                                            <a href="javascript:;" onclick="setAns(this, '10', '3', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_3_2">
                                            <a href="javascript:;" onclick="setAns(this, '10', '3', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_3_3">
                                            <a href="javascript:;" onclick="setAns(this, '10', '3', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_3_4">
                                            <a href="javascript:;" onclick="setAns(this, '10', '3', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_3_5">
                                            <a href="javascript:;" onclick="setAns(this, '10', '3', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>4</th>
                                        
                                        <td id="q_10_4_1">
                                            <a href="javascript:;" onclick="setAns(this, '10', '4', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_4_2">
                                            <a href="javascript:;" onclick="setAns(this, '10', '4', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_4_3">
                                            <a href="javascript:;" onclick="setAns(this, '10', '4', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_4_4">
                                            <a href="javascript:;" onclick="setAns(this, '10', '4', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_4_5">
                                            <a href="javascript:;" onclick="setAns(this, '10', '4', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>5</th>
                                        
                                        <td id="q_10_5_1">
                                            <a href="javascript:;" onclick="setAns(this, '10', '5', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_5_2">
                                            <a href="javascript:;" onclick="setAns(this, '10', '5', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_5_3">
                                            <a href="javascript:;" onclick="setAns(this, '10', '5', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_5_4">
                                            <a href="javascript:;" onclick="setAns(this, '10', '5', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_10_5_5">
                                            <a href="javascript:;" onclick="setAns(this, '10', '5', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="tbl_wrap eng">
                            <table title="답안지 입력">
                                <colgroup>
                                    <col style="width: 15%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th colspan="6">영어 답안지</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr>
                                        <th>1</th>
                                        
                                        <td id="q_11_1_1">
                                            <a href="javascript:;" onclick="setAns(this, '11', '1', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_1_2">
                                            <a href="javascript:;" onclick="setAns(this, '11', '1', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_1_3">
                                            <a href="javascript:;" onclick="setAns(this, '11', '1', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_1_4">
                                            <a href="javascript:;" onclick="setAns(this, '11', '1', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_1_5">
                                            <a href="javascript:;" onclick="setAns(this, '11', '1', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>2</th>
                                        
                                        <td id="q_11_2_1">
                                            <a href="javascript:;" onclick="setAns(this, '11', '2', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_2_2">
                                            <a href="javascript:;" onclick="setAns(this, '11', '2', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_2_3">
                                            <a href="javascript:;" onclick="setAns(this, '11', '2', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_2_4">
                                            <a href="javascript:;" onclick="setAns(this, '11', '2', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_2_5">
                                            <a href="javascript:;" onclick="setAns(this, '11', '2', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>3</th>
                                        
                                        <td id="q_11_3_1">
                                            <a href="javascript:;" onclick="setAns(this, '11', '3', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_3_2">
                                            <a href="javascript:;" onclick="setAns(this, '11', '3', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_3_3">
                                            <a href="javascript:;" onclick="setAns(this, '11', '3', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_3_4">
                                            <a href="javascript:;" onclick="setAns(this, '11', '3', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_3_5">
                                            <a href="javascript:;" onclick="setAns(this, '11', '3', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>4</th>
                                        
                                        <td id="q_11_4_1">
                                            <a href="javascript:;" onclick="setAns(this, '11', '4', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_4_2">
                                            <a href="javascript:;" onclick="setAns(this, '11', '4', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_4_3">
                                            <a href="javascript:;" onclick="setAns(this, '11', '4', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_4_4">
                                            <a href="javascript:;" onclick="setAns(this, '11', '4', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_4_5">
                                            <a href="javascript:;" onclick="setAns(this, '11', '4', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>5</th>
                                        
                                        <td id="q_11_5_1">
                                            <a href="javascript:;" onclick="setAns(this, '11', '5', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_5_2">
                                            <a href="javascript:;" onclick="setAns(this, '11', '5', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_5_3">
                                            <a href="javascript:;" onclick="setAns(this, '11', '5', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_5_4">
                                            <a href="javascript:;" onclick="setAns(this, '11', '5', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_11_5_5">
                                            <a href="javascript:;" onclick="setAns(this, '11', '5', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="tbl_wrap his">
                            <table title="답안지 입력">
                                <colgroup>
                                    <col style="width: 15%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                    <col style="width: 17%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th colspan="6">한국사 답안지</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    <tr>
                                        <th>1</th>
                                        
                                        <td id="q_12_1_1">
                                            <a href="javascript:;" onclick="setAns(this, '12', '1', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_1_2">
                                            <a href="javascript:;" onclick="setAns(this, '12', '1', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_1_3">
                                            <a href="javascript:;" onclick="setAns(this, '12', '1', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_1_4">
                                            <a href="javascript:;" onclick="setAns(this, '12', '1', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_1_5">
                                            <a href="javascript:;" onclick="setAns(this, '12', '1', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>2</th>
                                        
                                        <td id="q_12_2_1">
                                            <a href="javascript:;" onclick="setAns(this, '12', '2', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_2_2">
                                            <a href="javascript:;" onclick="setAns(this, '12', '2', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_2_3">
                                            <a href="javascript:;" onclick="setAns(this, '12', '2', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_2_4">
                                            <a href="javascript:;" onclick="setAns(this, '12', '2', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_2_5">
                                            <a href="javascript:;" onclick="setAns(this, '12', '2', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>3</th>
                                        
                                        <td id="q_12_3_1">
                                            <a href="javascript:;" onclick="setAns(this, '12', '3', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_3_2">
                                            <a href="javascript:;" onclick="setAns(this, '12', '3', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_3_3">
                                            <a href="javascript:;" onclick="setAns(this, '12', '3', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_3_4">
                                            <a href="javascript:;" onclick="setAns(this, '12', '3', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_3_5">
                                            <a href="javascript:;" onclick="setAns(this, '12', '3', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>4</th>
                                        
                                        <td id="q_12_4_1">
                                            <a href="javascript:;" onclick="setAns(this, '12', '4', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_4_2">
                                            <a href="javascript:;" onclick="setAns(this, '12', '4', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_4_3">
                                            <a href="javascript:;" onclick="setAns(this, '12', '4', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_4_4">
                                            <a href="javascript:;" onclick="setAns(this, '12', '4', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_4_5">
                                            <a href="javascript:;" onclick="setAns(this, '12', '4', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <th>5</th>
                                        
                                        <td id="q_12_5_1">
                                            <a href="javascript:;" onclick="setAns(this, '12', '5', 1)">
                                                <span>1</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_5_2">
                                            <a href="javascript:;" onclick="setAns(this, '12', '5', 2)">
                                                <span>2</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_5_3">
                                            <a href="javascript:;" onclick="setAns(this, '12', '5', 3)">
                                                <span>3</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_5_4">
                                            <a href="javascript:;" onclick="setAns(this, '12', '5', 4)">
                                                <span>4</span>
                                            </a>
                                        </td>
                                        
                                        <td id="q_12_5_5">
                                            <a href="javascript:;" onclick="setAns(this, '12', '5', 5)">
                                                <span class="last">모름</span>
                                            </a>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="tiny_txt">* 모든 답안을 입력하면 답안 제출이 가능합니다.</div>
                        <div id="apply_btn" class="apply_btn" style="display:none;">
                            <a href="javascript:;" onclick="applyX();" id="btn_final_apply" title="답안 제출">답안 제출</a>
                        </div>
                    </div>
                    <!-- 답안지 E -->
                </div>
            </div>
                
        </div>
    </div>
    <!-- 진단평가 응시 E -->

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

const js = `var pickLength = $(".tbl_wrap table tbody tr td.on").length;
if (pickLength >= 15) {
    $("#apply_btn").show();
}


var curr_subj_cd = 10;  
var curr_idx = 1;

// 탭 변경 로직
function changeTabOn() {
    $(".result_tab ul li").removeClass("on");
    $("#tab_"+curr_subj_cd).addClass("on");
    responsiveAnswerZone();
}

// 과목탭 클릭 함수
function getTabSubj(scd) {
    curr_subj_cd = scd;
    curr_idx = 1;  

    changeTabOn();

    $(".question_zone .question").children("div").hide();
    $("#q" + curr_subj_cd + "_" + curr_idx).show();

    LRbuttonHideShow(curr_idx);
}
getTabSubj(10);

// 이전, 다음 문항 가져오기
function getQno(mode) {  
    $(".question_zone .question").children("div").hide();

    if (mode == 'prev') {  
        if (curr_subj_cd == 10 && curr_idx <= 1) {  
            return;
        } else if (curr_idx == 1) {  
            curr_subj_cd--;
            curr_idx = 5;
            changeTabOn();  // 탭 변경 처리
        } else {  
            curr_idx--;
        }
        $("#q" + curr_subj_cd + "_" + curr_idx).show();
    }
    if (mode == 'next') {
        if (curr_subj_cd == 12 && curr_idx >= 5) {  
            return;
        } else if (curr_idx == 5) {  
            curr_subj_cd++;
            curr_idx = 1;
            changeTabOn();  // 탭 변경 처리
        } else {  
            curr_idx++;
        }
        $("#q" + curr_subj_cd + "_" + curr_idx).show();
    }

    LRbuttonHideShow(curr_idx);
}

// 좌우 버튼 노출, 숨김 처리
function LRbuttonHideShow(idx) {
    if (curr_subj_cd == 10 && idx <= 1) {  // 왼쪽 넘기기 버튼
        $("#btn_prev_subj").hide();
    } else {
        $("#btn_prev_subj").show();
    }

    if (curr_subj_cd == 12 && idx >= 5) {  // 오른쪽 넘기기 버튼
        $("#btn_next_subj").hide();
    } else {
        $("#btn_next_subj").show();
    }
}

// 반응형인 경우에만 과목별 답안지 숨김 or 보임
function responsiveAnswerZone() {
    if ($(window).width() <= 1200) {
        $(".answer_sheet .tbl_wrap").hide();
        if (curr_subj_cd == 10) $(".answer_sheet .kor").show();
        if (curr_subj_cd == 11) $(".answer_sheet .eng").show();
        if (curr_subj_cd == 12) $(".answer_sheet .his").show();
    } else {
        $(".answer_sheet .tbl_wrap").show();
    }
}

// 반응형 체크 => 과목별 답안지 보임 숨김
$(window).on("resize load", function() {
    responsiveAnswerZone();
});

// 답안 체크 저장
function setAns(t, s, q, a) {  
    $(t).parents().parents().children("td").removeClass("on");
    $(t).parents().addClass("on");

    $.ajax({
        type: "POST",
        url: "./apply_proc.asp",
        data: {mode: "set_ans", subj_cd: s, q_no: q, a_no: a, now: "2024-07-16 12:55:43"},
        dataType: "json"
    }).done(function(data) {
        var pickLength = $(".tbl_wrap table tbody tr td.on").length;
        // console.log(pickLength)
        if (pickLength >= 15) {
            $("#apply_btn").show();
        }
        
        if(data.msg) {
            alert(data.msg);
        }
        if(data.result == "fail") {
            location.href="./apply_result.asp";
        }
    });
}

function applyX() {     
    var pickLength = $(".tbl_wrap table tbody tr td.on").length;

    if (pickLength != 15) {
        alert("모든 답안을 입력해 주세요.");
        return;
    }

    if (!confirm("답안 제출 후 수정할 수 없습니다.")) {
        return;
    }

    $.ajax({
        type: "POST",
        url: "./apply_proc.asp",
        data: {mode: "final_apply", now: "2024-07-16 12:55:43"},
        dataType: "json"
    }).done(function(data) {
        if(!data.msg) {
            alert(data.msg);
        }
        if(data.result == "succ") {
            location.href="./apply_result.asp";
            return;
        }
    });
}`;

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
        items={["진단평가", "진단평가 응시"]}
        link="<%=lab_main%>/l/exam/gong/2024_2/apply_start.asp#eventWrap"
        onChange={onChange}
      />
    )
  }
</script>