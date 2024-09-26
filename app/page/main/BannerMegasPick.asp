<%
    Randomize 
    Dim randomPick
    randomPick = Int(Rnd * 2)
%>

<script type="text/babel">
  'use strict';

  function BannerMegasPick({ title, onChange }) {

const html = `<div class="main_wrp">
    <div id="main_sPick" class="main_sPick_new tab_box">
        <div class="tab">
            <ul class="tab_wrap">
                <li class="first_tab<%if randomPick = 0 then%> on<%end if%>">
                    <button href="javascript:void(0);" title="Mega's Pick">
                        Mega's&nbsp;<span class="blue">Pick</span>
                    </button>
                </li>
                <li class="<%if randomPick = 1 then%> on<%end if%>">
                    <button href="javascript:void(0);" title="주간 BEST 칼럼">
                        주간 BEST 칼럼 <a href="/column/column.asp" class="title_more" target="_blank" title="더보기">더보기</a>
                    </button>
                </li>
            </ul>
            <div class="cont_wrap" <%if randomPick = 1 then%> style="display: none"<%end if%>>
                <ul class="pick_list">
                    <%if cdate(lo_now_date) >= cdate("2024-09-11") Then%>
                    <li>
                        <a href="/s/gong/event/2020/10280102/index.asp#eventWrap" title="9-10월 신규 강좌 업데이트">
                            <p>
                                <span>실전력을 높이는 심화이론&기출문풀</span>
                                <strong>9-10월 신규 강좌 업데이트</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0807_lecture/pick_icon1.png" alt="" />
                        </a>
                    </li>   
                    <li>
                        <a href="/s/gong/event/2024/07240084/index.asp#eventWrap" title="">
                            <p>
                                <span>2025 출제기조 전환 완벽 대비</span>
                                <strong>국어/영어 학습 전략 제시</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0807_lecture/pick_icon2.png" alt="" />
                        </a>
                    </li>   
                    <%if cdate(lo_now_date) >= cdate("2024-09-13") Then%>
                    <li>
                        <a href="/s/gong/event/2024/07230085/index.asp#eventWrap" title="">
                            <p>
                                <span>압도적 합격의 시작점</span>
                                <strong>2025 메가공무원 기본이론 스타트</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0807_lecture/pick_icon5.png" alt="" />
                        </a>
                    </li>   
                    <% else %>
                    <li>
                        <a href="/s/gong/event/2024/05210045/index.asp#eventWrap" title="">
                            <p>
                                <span>첫 도전부터 합격하는 방법</span>
                                <strong>2025 합격 커리큘럼 가이드</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0807_lecture/pick_icon3.png" alt="" />
                        </a>
                    </li>   
                    <% end if %>

                    <li>
                        <a href="/s/gong/event/2022/07280123/index.asp#eventWrap" title="">
                            <p>
                                <span>법원직 전문가들의 빈틈없는 합격 가이드</span>
                                <strong>2025 메가법원직 1순환</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0807_lecture/pick_icon4.png" alt="" />
                        </a>
                    </li>   
                    <% else %>
                    <li>
                        <a href="/s/gong/event/2024/07230085/index.asp#eventWrap" title="2025 메가공무원 기본이론 스타트">
                            <p>
                                <span>압도적 합격의 시작점</span>
                                <strong>2025 메가공무원 기본이론 스타트</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0723_sobangbasic/pick_icon2.png" alt="" />
                        </a>
                    </li>   
                    <li>
                        <a href="/s/gong/event/2024/01030004/index.asp#eventWrap" title="국어는 사고력 영어는 실용적 능력">
                            <p>
                                <span>직접 풀면 보이는 국어/영어</span>
                                <strong>국어는 사고력 영어는 실용적 능력</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0619_main/pick_icon3.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="/s/gong/event/2024/05210045/index.asp#eventWrap" title="2025 합격 커리큘럼 가이드 ">
                            <p>
                                <span>첫 도전부터 합격하는 방법</span>
                                <strong>2025 합격 커리큘럼 가이드</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0619_main/pick_icon4.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="/column/column.asp" title="메가공무원 선생님 칼럼">
                            <p>
                                <span>선생님들이 직접 제시하는 합격 전략</span>
                                <strong>메가공무원 선생님 칼럼</strong>
                            </p>
                            <img src="<%=img_main %>/m/2024/0821_teacolum/pick_icon4.png" alt="" />
                        </a>
                    </li>
                    <% end if %>
                </ul>
            </div><!-- / cont_wrap -->

            <div class="cont_wrap"  <%if randomPick = 0 then%> style="display: none"<%end if%>>
                <div class="column_list_wrap">
                    <ul class="column_list">
                        <li>
                            <a href="/column/column_view.asp?idx=46" title="합격가능성을 낮추는 생활습관">
                                <span class="num">1</span>
                                <img src="https://img.megagong.net/profphoto/gong/geek2991/pro_lec.png" alt="유휘운">
                                <p>
                                    <span>행정법/행정법각론&nbsp;정인국</span>
                                    <strong>합격가능성을 낮추는 생활습관</strong>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/column/column_view.asp?idx=44" title="출제기조가 전환되었으니 국어 기출 의미가 없다?">
                                <span class="num">2</span>
                                <img src="https://img.megagong.net/profphoto/gong/lyj4718/pro_lec.png" alt="유휘운">
                                <p>
                                    <span>국어&nbsp;이유진</span>
                                    <strong>출제기조가 전환되었으니 국어 기출 의미가 없다?</strong>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/column/column_view.asp?idx=50" title="지난 두 달, 후회가 남는 수험생들에게">
                                <span class="num">3</span>
                                <img src="https://img.megagong.net/profphoto/gong/plower3362/pro_lec.png" alt="유휘운">
                                <p>
                                    <span>행정학/지방자치론&nbsp;황철곤</span>
                                    <strong>지난 두 달, 후회가 남는 수험생들에게</strong>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a href="/column/column_view.asp?idx=45" title="영어 말아먹는 법">
                                <span class="num">4</span>
                                <img src="https://img.megagong.net/profphoto/gong/sooyeon/pro_lec.png" alt="유휘운">
                                <p>
                                    <span>영어&nbsp;박수연</span>
                                    <strong>영어 말아먹는 법</strong>
                                </p>
                            </a>
                        </li>
                    </ul>
                    <p class="noti">* 지난 월~일요일 일주일 간 조회수 기준</p>
                </div>
            </div><!-- / cont_wrap -->
        </div>
    </div><!-- / main_sPick -->
</div>`;

const css = `.main_sPick_new {position:relative;width:390px;margin:0 0 0 10px;height:350px;border:var(--main-border1);border-radius:3px;background:#fff}
.main_sPick_new .tab {display: flex; flex-direction: column; height: 100%;}
.main_sPick_new .tab .tab_wrap {margin: 0;}
.main_wrp .main_sPick_new.tab_box .cont_wrap {height: 100%; padding: 0 30px;}
.main_sPick_new .pick_list {line-height:1; margin: 12px 0;}
.main_sPick_new .pick_list a { padding:8px 0;display:flex; justify-content:space-between; align-items: center;}
.main_sPick_new .pick_list a span {display:block;color:var(--main-text1);margin:0 0 7px}
.main_sPick_new .pick_list a strong {display:block;font-size:16px}
.main_sPick_new .column_list_wrap {height:100%; box-sizing:border-box; padding:0 0 15px; display: flex; flex-direction: column; justify-content: space-between;}
.main_sPick_new .column_list {line-height:1; margin: 14px 0 0;}
.main_sPick_new .column_list a {padding:6px 0;display:flex; align-items: center; gap:12px;}
.main_sPick_new .column_list .num {font-size: 17px; font-weight: bold; color:#111;}
.main_sPick_new .column_list a span {display:block;color:var(--main-text1);margin:0 0 7px}
.main_sPick_new .column_list a strong {display:block;font-size:16px; height:20px; max-width: 244px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;}
.main_sPick_new .tab_wrap .first_tab button {font-weight:bold;}
.main_sPick_new .tab_wrap .first_tab.on button .blue {color: var(--main-point1);}
.main_sPick_new .column_list_wrap .noti {font-size: 12px; color:#777777; text-align: right;}
/* E:[PC] MEGA's PICK */
@media screen and (max-width: 1200px) {
    .main_sPick_new{display:none;}
}`;

const excCss = ``;

const js = `$('#main_sPick .tab_wrap li').on('click', function(){
    $('#main_sPick .tab_wrap li').removeClass('on');
    $(this).addClass('on');

    $('#main_sPick .cont_wrap').css('display','none');
    $('#main_sPick .cont_wrap').eq($('#main_sPick .tab_wrap li').index($(this))).css('display','block');
});`;

    return (
      <PageContent
        title={title}
        desc=""
        // image="/images/demo/main_banner_megaspick.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["Mega's Pick", "메인 배너"]}
        link="<%=url_main%>/megagong.asp"
        file="m\gong\bnr_zone\v24\main_pick_renewal.asp"
        onChange={onChange}
      />
    )
  }
</script>