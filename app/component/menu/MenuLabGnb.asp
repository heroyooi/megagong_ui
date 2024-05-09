<script type="text/babel">
  'use strict';

  function MenuLabGnb({ title, onChange }) {

const html = `
<%
Dim subUrl
subUrl = "/l/" + h_gubn

Function fncMenuON(gbn, loot)
    rtnClass = Split(" ||on||current", "||")
    chkTF = false

    trueUrl = NowUrl
    if UrlQueryString <> "" then
        trueUrl = trueUrl & "?" & UrlQueryString
    end if
    
    lootArr = Split(Replace(loot, " ", ""), "||")
    if isArray(lootArr) then 
        for i = 0 to Ubound(lootArr)
            if instr(trueUrl, lootArr(i)) > 0 and chkTF = false then
                chkTF = true
            end if
        next
    end if

    if chkTF = false then
        gbn = 0
    end if

    fncMenuON = rtnClass(gbn)
End Function
%>
<header id="headertop" class="lab">
  <div class="depth2-wrp <%=fncMenuON(1, "/full/")%>">
    <div class="<%=h_gubn%>"><!--추가 클래스명: //공:gong 군:army 소:sobang-->
        <div class="depth2-swiper swiper-container">
            <div class="swiper-wrapper">       
            <!-- 공무원 S -->
            <% if h_gubn = "gong" then %>

                <% if cdate(lo_now_date) >= cdate("2024-03-23 10:30") and cdate(lo_now_date) < cdate("2024-04-25 14:00") then %>
                <!-- 20240323 풀서비스 -->
                <div class="swiper-slide">
                    <a href="<%=url_main%>/s/gong/full/20240323/index.asp#fullContainer" target="_blank" title="합격예측 풀서비스">합격예측 풀서비스</a>
                </div>                       
                <!-- // 20240323 풀서비스 -->
                <% end if %>

                <% if cdate(lo_now_date) >= cdate("2024-03-23 10:30") then %>
                <div class="swiper-slide for_mo">
                    <a href="<%=url_main%>/s/gong/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="전국 모의고사">전국 모의고사</a>
                </div>                       
                <% end if %>

                <% If cdate(lo_now_date) >= cdate("2023-10-28 10:30") and cdate(lo_now_date) < cdate("2023-11-14 14:00") then %>
                <!-- 20230923 풀서비스 -->
                <div class="swiper-slide <%=fncMenuON(1, "/full/")%>">
                    <a href="<%=url_main%>/s/gong/full/20231028/index.asp#fullContainer" target="_blank" title="합격예측 풀서비스">합격예측 풀서비스</a>
                </div>                       
                <!-- // 20230923 풀서비스 -->
                <% end if %>

                <div class="swiper-slide <%=fncMenuON(1, "/guide/ || /11300001/ || /11300002/ || /wise/")%>">
                    <a href="<%=subUrl%>/guide/guide.asp" title="공무원 가이드">공무원 가이드</a>
                </div>
                <% if cdate(lo_now_date) >= cdate("2024-04-29 10:00") and cdate(lo_now_date) < cdate("2024-06-22") then %>
                <div class="swiper-slide">
                    <span class="menu_icn mockexam toggleImg2" style="left:19px;">
                        <% if cdate(lo_now_date) < cdate("2024-05-25 09:30") then %>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>지방직 신청 중!</b>
                        <% elseif cdate(lo_now_date) < cdate("2024-05-27") then %>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0429_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>지방직 응시 중!</b>
                        <% end if %>
                    </span>
                    <a href="<%=url_main%>/s/gong/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="전국 모의고사">
                        전국 모의고사
                    </a>
                </div>
                <% end if %> 
                <% if cdate(lo_now_date) >= cdate("2024-01-24") and cdate(lo_now_date) < cdate("2024-03-23 10:30") then %>
                <div class="swiper-slide">
                    <span class="menu_icn mockexam toggleImg2" style="left:19px;">
                        <% if cdate(lo_now_date) < cdate("2024-02-17 09:30") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>1회 신청 중!</b>
                        <% elseif cdate(lo_now_date) >= cdate("2024-02-17 09:30") and cdate(lo_now_date) < cdate("2024-02-19") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>1회 응시 중!</b>
                        <% elseif cdate(lo_now_date) >= cdate("2024-02-21 12:00") and cdate(lo_now_date) < cdate("2024-03-09 09:30") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>2회 신청 중!</b>
                        <% elseif cdate(lo_now_date) >= cdate("2024-03-09 09:30") and cdate(lo_now_date) < cdate("2024-03-11") then %>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_1.png" alt="-" class="on"/>
                            <img src="<%=img_main%>/m/2024/0124_gongexam/icon_gong1_2.png" alt="-" class="off"/>
                            <b>2회 응시 중!</b>
                        <% end if %>
                    </span>
                    <a href="<%=url_main%>/s/gong/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="전국 모의고사">
                        전국 모의고사
                    </a>
                </div>
                <% end if %> 
                <% if mode_flg = false then %>
                <div class="swiper-slide">
                    <a href="/l/share/exam/gong/2024/index.asp#eventWrap" target="_blank" title="진단평가">진단평가</a>
                </div>
                <% end if %>
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=2 || /news/view.asp?schExtra1=2 || /strategy/list.asp || /strategy/view.asp || /nangongtv/ || /followm/ || /pass_opinion/ || /ngtvevent/index.asp")%>">
                    <a href="<%=subUrl%>/pass_opinion/index.asp" title="합격전략">합격전략</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/statistic/")%>">
                    <a href="<%=subUrl%>/statistic/pass.asp" title="합격자 통계">합격자 통계</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=3 || /news/list.asp?schExtra1=1 || /news/view.asp?schExtra1=3 || /news/view.asp?schExtra1=1")%>">
                    <a href="<%=subUrl%>/news/list.asp?schExtra1=3" title="시험공고&amp;뉴스">시험공고&amp;뉴스</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/library/ || /analysis/ || /explain/")%>">
                    <a href="<%=subUrl%>/library/list.asp" title="기출문제">기출문제</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/l/share/quizbank/")%>">
                    <a href="/l/share/quizbank/index.asp" title="문제은행">
                        문제은행
                        <!-- <i class="ic-new"><img src="<%=img_main%>/common/ic_new.gif" alt="NEW" class=""></i> -->
                    </a>
                </div>


                <!-- 공무원 E -->
            <% end if %>

            <!-- 소방 S -->
            <% if h_gubn = "sobang" then %>
                <% if cdate(lo_now_date) < cdate("2024-04-24 14:00")then %>
                <!-- 20240323 풀서비스 -->
                <div class="swiper-slide">
                    <a href="<%=sobang_main%>/s/sobang/full/20240330/index.asp#fullContainer" target="_blank" title="합격예측 풀서비스">합격예측 풀서비스</a>
                </div>                       
                <!-- // 20240323 풀서비스 -->
                <% end if %>

                <div class="swiper-slide <%=fncMenuON(1, "/guide/")%>">
                    <a href="<%=subUrl%>/guide/guide.asp" title="소방공무원 가이드">소방공무원 가이드</a>
                </div>

                <% if cdate(lo_now_date) >= cdate("2024-02-05") and cdate(lo_now_date) < cdate("2024-04-11") then %>
                <div class="swiper-slide">
                    <% if cdate(lo_now_date) < cdate("2024-03-04") then %>
                    <span class="menu_icn mockexam toggleImg2">
                        <img src="<%=img_main%>/m/2024/0205_sobangexam/icon_sobang1_1_lab.png" alt="-" class="on"/>
                        <img src="<%=img_main%>/m/2024/0205_sobangexam/icon_sobang1_2_lab.png" alt="-" class="off"/>
                        <% if cdate(lo_now_date) < cdate("2024-03-02 09:30") then %>
                            <b>모의고사 신청 중!</b>
                        <% elseif cdate(lo_now_date) < cdate("2024-03-04") then %>
                            <b>모의고사 응시 중!</b>
                        <% end if %>
                    </span>
                    <style>
                        #headertop .depth2-swiper.swiper-container .swiper-slide .menu_icn.mockexam b{background: #ffc2c2;}
                        #headertop .depth2-swiper.swiper-container .swiper-slide .menu_icn.mockexam.on b{background: #e94747;}
                    </style>
                    <% end if %>
                    <a href="<%=sobang_main%>/s/sobang/mockexam/2024_1/index.asp?top=mainCon1" target="_blank" title="전국 모의고사">
                        전국 모의고사
                    </a>
                </div>
                <% end if %> 

                <!--off 요청
                <div class="swiper-slide">
                    <a href="<%=sobang_main%>/exam/basic/sobang_2/index.asp#eventWrap" target="_blank" title="진단평가">진단평가</a>
                </div>
                -->
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=2 || /news/view.asp?schExtra1=2 || /strategy/list.asp || /strategy/view.asp || /nangongtv/ || /followm/ || /pass_opinion/ || /ngtvevent/index.asp")%>">
                    <a href="<%=subUrl%>/pass_opinion/index.asp" title="합격전략">합격전략</a>
                </div>
                <div class="swiper-slide <%=fncMenuON(1, "/statistic/ ")%>">
                    <a href="<%=subUrl%>/statistic/pass.asp" title="합격자 통계">합격자 통계</a>
                </div>
                
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=3 || /news/list.asp?schExtra1=1 || /news/view.asp?schExtra1=3 || /news/view.asp?schExtra1=1")%>">
                    <a href="<%=subUrl%>/news/list.asp?schExtra1=3" title="시험공고&amp;뉴스">시험공고&amp;뉴스</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/library/ || /analysis/ || /explain/")%>">
                    <a href="<%=subUrl%>/library/list.asp" title="기출문제">기출문제</a>
                </div>                            
            <% end if %>
            <!-- 소방 E -->

            <!-- 군무원 S -->
            <% if h_gubn = "army" then %>

                <div class="swiper-slide <%=fncMenuON(1, "/guide/")%>">
                    <a href="<%=subUrl%>/guide/guide.asp" title="군무원 가이드">군무원 가이드</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=2 || /news/view.asp?schExtra1=2 || /strategy/list.asp || /strategy/view.asp || /nangongtv/ || /followm/ || /pass_opinion/ || /ngtvevent/index.asp")%>">
                    <a href="<%=subUrl%>/pass_opinion/index.asp" title="합격전략">합격전략</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/statistic/")%>">
                    <a href="<%=subUrl%>/statistic/pass.asp" title="합격자 통계">합격자 통계</a>
                </div>
                
                <div class="swiper-slide <%=fncMenuON(1, "/news/list.asp?schExtra1=3 || /news/list.asp?schExtra1=1 || /news/view.asp?schExtra1=3 || /news/view.asp?schExtra1=1")%>">
                    <a href="<%=subUrl%>/news/list.asp?schExtra1=3" title="시험공고&amp;뉴스">시험공고&amp;뉴스</a>
                </div>

                <div class="swiper-slide <%=fncMenuON(1, "/library/ || /analysis/ || /explain/")%>">
                    <a href="<%=subUrl%>/library/list.asp" title="기출문제">기출문제</a>
                </div>                            
            <% end if %>
            <!-- 군무원 E -->
            </div>
        </div>
    </div>
  </div>
</header>`;

const css = `.toggleImg2 img:nth-child(1) {display: none;}
.toggleImg2.on img:nth-child(1) {display: block;}
.toggleImg2 img:nth-child(2) {display: block;}
.toggleImg2.on img:nth-child(2) {display: none;}`;

const excCss = ``;

const js = `var window_width = $(window).width();
var depth2_swiper = undefined;
function responSwiper() {
    //swiper 호출타입으로 구분 
    if (window_width < 1024 && depth2_swiper == undefined) {
        depth2_swiper = new Swiper(".depth2-swiper", {
            slidesPerView: 'auto',
            observer: true,
            observeParents: true,
            observeSlideChildren: true,
            simulateTouch: true,     
            //scrollbar: {
            //    el: '.depth2-swiper .swiper-scrollbar',
            //    draggable: true,
            //},                    
        });
    } else if (window_width >= 1024 && depth2_swiper != undefined) {
        depth2_swiper.destroy();
        depth2_swiper = undefined;
    }
}
responSwiper();

//실시간 브라우저 width 갱신
$(window).on('resize', function () {
    window_width = $(window).width();
    responSwiper();
});
            
function inifiniteLoop() {
  $(".depth2-wrp .toggleImg2").toggleClass("on");
  timeout = setTimeout(inifiniteLoop, 500);
}
inifiniteLoop();`;

const outJs = `clearTimeout(timeout);`;

    return (
      <PageContent
        title={title}
        desc="메뉴 컴포넌트는 메가공무원 사이트를 이용하는 학생들이 필요로 하는 정보와 서비스를 쉽게 찾을 수 있도록 구성되어 있습니다."
        // image="/images/btn.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        outJs={outJs}
        items={["GNB","2뎁스","반응형"]}
        link="<%=lab_main%>"
        onChange={onChange}
        version="no-padding"
      />
    )
  }
</script>