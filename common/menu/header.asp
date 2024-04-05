<%
    if SmartLearingFlg = "Y" Then
%>
<%
    Else '스마트러닝 조건 : N
%>
<!-- skipToContent -->
<ul id="skipToContent">
    <li><a title="주 메뉴 바로가기" href="#headertop">주 메뉴 바로가기</a></li>
    <li><a title="본문 바로가기" href="#mContainer">본문 바로가기</a></li>
    <li><a title="하단 바로가기" href="#footer">하단 바로가기</a></li>
 </ul>
 <!-- // skipToContent -->
 <%
     gmenu = ""
     pinfo = fncRequestVariables("PATH_INFO")

     if hcode = "sobangcampus" Then
         if inStr(pinfo, "/intro/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/help/notice/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/c/sobang/intro/intro4.asp") > 0 Then gmenu = "6"
         if inStr(pinfo, "/c/sobang/examinfo/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/academy/") > 0 And inStr(pinfo, "/c/sobang/academy/burning.asp") = 0 Then gmenu = "3"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/sobang/consult/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/sobang/qna/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/sobang/academy/burning.asp") > 0 Then gmenu = "5"
         if inStr(pinfo, "/c/sobang/academy/rechallenge.asp") > 0 Then gmenu = "5"
     Elseif hcode = "ansung" Then
         if inStr(pinfo, "/intro/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/program/gong/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/program/police/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/system/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/communication/") > 0 Then gmenu = "5"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "6"
         if inStr(pinfo, "/pass/") > 0 Then gmenu = "7"
         if inStr(pinfo, "/program/sobang/") > 0 Then gmenu = "8"
         if inStr(pinfo, "/news/") > 0 Then gmenu = "9"
         if inStr(pinfo, "/program/self/") > 0 Then gmenu = "10"

     Elseif hcode = "gongssel" Then
         if inStr(pinfo, "/intro/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/help/notice/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/consult/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/qna/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/presentation/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/assessmnt/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/teacher/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/self/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/review/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/examinfo/") > 0 Then gmenu = "8"
         if inStr(pinfo, "/passmate/") > 0 Then gmenu = "8"
         if inStr(pinfo, "/event/2020/01220001/") > 0 Then gmenu = "8"
         if inStr(pinfo, "presentation/index.asp") > 0 Then gmenu = "11"

        grd_code = fncrequest("grd_code")
         if inStr(pinfo, "/c/gongssel/schedule/2020/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/gongssel/schedule/2020/overall_06_gather_0917.asp") > 0 and grd_code="9" Then gmenu = "4"
         if inStr(pinfo, "/c/gongssel/schedule/2020/overall_07_gather_0917.asp") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/gongssel/schedule/2021/overall/overall_01_gather.asp") > 0 and grd_code="9" Then gmenu = "4"
         if inStr(pinfo, "/c/gongssel/schedule/2021/overall/overall_01_all.asp") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/gongssel/schedule/2021/am/am_1_9.asp") > 0 Then gmenu = "4"

         if inStr(pinfo, "/c/gongssel/schedule/2020/overall_06_gather_0917.asp") > 0 and grd_code="7" Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2021/overall/overall_01_gather.asp") > 0 and grd_code="7" Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2021/overall/overall_01_gather_new.asp") > 0 Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2020/am_5_6.asp") > 0 Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2021/am/am_1_7.asp") > 0 Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2020/am_12_7_psat.asp") > 0 Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2020/interview/index.asp") > 0 Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2021/overall/overall_05_all_7.asp") > 0 Then gmenu = "9"
         if inStr(pinfo, "/c/gongssel/schedule/2021/overall/overall_05_all_9.asp") > 0 Then gmenu = "4"
         if inStr(pinfo, "/c/gongssel/schedule/2021/low/") > 0 Then gmenu = "10"


         if inStr(pinfo, "/c/gongssel/schedule/2020/army") > 0 Then gmenu = "10"
         if inStr(pinfo, "/c/gongssel/schedule/2021/army") > 0 Then gmenu = "10"
     Elseif hcode = "sobang" Then
         if inStr(pinfo, "/teacher/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/vod/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/book/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/pass/") > 0 Then gmenu = "5"
         if inStr(pinfo, "/s/sobang/examinfo/") > 0 Then gmenu = "6"
     Elseif hcode = "ngbr" Then
         if inStr(pinfo, "/teacher/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/vod/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/book/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/pass/") > 0 Then gmenu = "5"
         if inStr(pinfo, "/s/gong/examinfo") > 0 Then gmenu = "6"
         if inStr(pinfo, "/community/") > 0 Then gmenu = "7"
     Elseif hcode = "army" Then
         if inStr(pinfo, "/teacher/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/vod/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/book/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/pass/") > 0 Then gmenu = "5"
         if inStr(pinfo, "/s/army/examinfo") > 0 Then gmenu = "6"
         if inStr(pinfo, "/army/campus") > 0 Then gmenu = "7"  '군무원 캠퍼스 전용메뉴
    Elseif hcode = "lab" Then
         if inStr(pinfo, "/teacher/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/vod/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/book/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/pass/") > 0 Then gmenu = "5"
     Else
         if inStr(pinfo, "/teacher/") > 0 Then gmenu = "1"
         if inStr(pinfo, "/vod/") > 0 Then gmenu = "2"
         if inStr(pinfo, "/book/") > 0 Then gmenu = "3"
         if inStr(pinfo, "/help/") > 0 Then gmenu = "4"
         if inStr(pinfo, "/pass/") > 0 Then gmenu = "5"
         if inStr(pinfo, "/s/gong/examinfo") > 0 Then gmenu = "6"
     End if

     mobileChk = fncChkMobile()



 planner_totcnt = 0
 planner_end_yn = "N"
    strSql = ""
    strSql = strSql & " SELECT COUNT(*)+(SELECT ISNULL(EM_VIEW_CNT,0) FROM MG_EVT_MAS WITH(NOLOCK) WHERE EM_CD =2452)  "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ED_MAS_CD =2452"
    set objrs = dbexec(strsql, "study")
    if not (objrs.eof and objrs.bof) then
        planner_totcnt = objrs(0)
    end if
    call dbclose(objrs)
 if planner_totcnt >= 2400 then '1700
    planner_end_yn = "Y"
 end if

 s_planner_totcnt = 0
 s_planner_end_yn = "N"
    strSql = ""
    strSql = strSql & " SELECT COUNT(*)+(SELECT ISNULL(EM_VIEW_CNT,0) FROM MG_EVT_MAS WITH(NOLOCK) WHERE EM_CD =2453)  "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ED_MAS_CD =2453"
    set objrs = dbexec(strsql, "study")
    if not (objrs.eof and objrs.bof) then
        s_planner_totcnt = objrs(0)
    end if
    call dbclose(objrs)
 if s_planner_totcnt >= 506 then '356
    s_planner_end_yn = "Y"
 end if

 %>



<% ' 헤더 배너 %>
     <!-- #include virtual = "/common/menu/header_banner.asp"-->
     <!-- #include virtual = "/common/menu/header_vod.asp"-->
<% ' // 헤더 배너 %>


 <%
 '국가직 9급 시험 D-Day
 str_gong_dnt = ""
 if cdate(lo_now_date) < cdate("2022-04-18") Then
     gong_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-04-17"))
     str_gong_dnt = "D-Day"
     if gong_dnt <> 0 Then str_gong_dnt = "D-" & gong_dnt
 End if

 '지방직 9급 D-Day
 str_gong_dnt_2 = ""
 if cdate(lo_now_date) < cdate("2022-06-19") Then
     gong_dnt_2 = DateDiff("D", cdate(lo_now_date), cdate("2022-06-18"))
     str_gong_dnt_2 = "D-Day"
     if gong_dnt_2 <> 0 Then str_gong_dnt_2 = "D-" & gong_dnt_2
 End if

 '국가직 7급 1차 D-Day
 str_gong7_dnt = ""
 if cdate(lo_now_date) < cdate("2021-07-11") Then
     gong7_dnt = DateDiff("D", cdate(lo_now_date), cdate("2021-07-10"))
     str_gong7_dnt = "D-Day"
     if gong7_dnt <> 0 Then str_gong7_dnt = "D-" & gong7_dnt
 End if

 '국가직 7급 2차 D-Day
 str_gong7_dnt_2 = ""
 if cdate(lo_now_date) < cdate("2021-09-12") Then
     gong7_dnt_2 = DateDiff("D", cdate(lo_now_date), cdate("2021-09-11"))
     str_gong7_dnt_2 = "D-Day"
     if gong7_dnt_2 <> 0 Then str_gong7_dnt_2 = "D-" & gong7_dnt_2
 End if

 '지방직 7급 D-Day
 str_gong7_dnt_3 = ""
 if cdate(lo_now_date) < cdate("2022-10-30") Then
 gong7_dnt_3 = DateDiff("D", cdate(lo_now_date), cdate("2022-10-29"))
     str_gong7_dnt_3 = "D-Day"
     if gong7_dnt_3 <> 0 Then str_gong7_dnt_3 = "D-" & gong7_dnt_3
 End if

 '군무원 D-Day
 str_army_dnt = ""
 if cdate(lo_now_date) < cdate("2021-07-25") Then
 army_dnt = DateDiff("D", cdate(lo_now_date), cdate("2021-07-24"))
 str_army_dnt = "D-Day"
     if army_dnt <> 0 Then str_army_dnt = "D-" & army_dnt
 End if

 '2020 소방직 시험 D-Day
 str_sobang_dnt = ""
 if cdate(lo_now_date) < cdate("2021-04-04") Then
     sobang_dnt = DateDiff("D", cdate(lo_now_date), cdate("2021-04-03"))
     str_sobang_dnt = "D-Day"
     if sobang_dnt <> 0 Then str_sobang_dnt = "D-" & sobang_dnt
 End if

 '2020 경찰 시험 1차 D-Day
 police1_dnt = ""
 if cdate(lo_now_date) < cdate("2020-04-05") Then
     police1_dnt = DateDiff("D", cdate(lo_now_date), cdate("2020-04-04"))
     str_police1_dnt = "D-Day"
     if police1_dnt <> 0 Then str_police1_dnt = "D-" & police1_dnt
 End if

 '2020 경찰 시험 2차 D-Day
 police2_dnt = ""
 if cdate(lo_now_date) < cdate("2020-09-20") Then
     police2_dnt = DateDiff("D", cdate(lo_now_date), cdate("2020-09-19"))
     str_police2_dnt = "D-Day"
     if police2_dnt <> 0 Then str_police2_dnt = "D-" & police2_dnt
 End if



 '2022 국가직 5급 1차 D-Day
 str_gong_5_1_dnt = ""
 if cdate(lo_now_date) < cdate("2022-02-27") Then
    gong_5_1_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-02-26"))
    str_gong_5_1_dnt = "D-Day"
     if gong_5_1_dnt <> 0 Then str_gong_5_1_dnt = "D-" & gong_5_1_dnt
 End if

 '2022 국가직 9급 D-Day
 str_gong_9_dnt = ""
 if cdate(lo_now_date) < cdate("2022-04-03") Then
    gong_9_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-04-02"))
    str_gong_9_dnt = "D-Day"
     if gong_9_dnt <> 0 Then str_gong_9_dnt = "D-" & gong_9_dnt
 End if

 '2022 국가직 5급 2차 D-Day
 str_gong_5_2_dnt = ""
 if cdate(lo_now_date) < cdate("2022-06-26") Then
    gong_5_2_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-06-25"))
    str_gong_5_2_dnt = "D-Day"
     if gong_5_2_dnt <> 0 Then str_gong_5_2_dnt = "D-" & gong_5_2_dnt
 End if

 '2022 법원직 D-Day
 str_gong9_dnt = ""
 if cdate(lo_now_date) < cdate("2022-06-26") Then
    gong_5_2_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-06-25"))
    str_gong9_dnt = "D-Day"
     if gong_5_2_dnt <> 0 Then str_gong9_dnt = "D-" & gong_5_2_dnt
 End if

 '2022 국가직 7급 1차 D-Day
 str_gong_7_1_dnt = ""
 if cdate(lo_now_date) < cdate("2022-07-24") Then
    gong_7_1_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-07-23"))
    str_gong_7_1_dnt = "D-Day"
     if gong_7_1_dnt <> 0 Then str_gong_7_1_dnt = "D-" & gong_7_1_dnt
 End if

 '2022 국가직 7급 2차 D-Day
 str_gong_7_2_dnt = ""
 if cdate(lo_now_date) < cdate("2022-10-16") Then
    gong_7_2_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-10-15"))
    str_gong_7_2_dnt = "D-Day"
     if gong_7_2_dnt <> 0 Then str_gong_7_2_dnt = "D-" & gong_7_2_dnt
 End if

 '2022 소방공무원 D-Day
 str_sobang_dnt = ""
 if cdate(lo_now_date) < cdate("2022-04-10") Then
    sobang_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-04-09"))
    str_sobang_dnt = "D-Day"
     if sobang_dnt <> 0 Then str_sobang_dnt = "D-" & sobang_dnt
 End if

 '2022 군무원 D-Day
 str_army_dnt = ""
 if cdate(lo_now_date) < cdate("2022-07-17") Then
    army_dnt = DateDiff("D", cdate(lo_now_date), cdate("2022-07-16"))
    str_army_dnt = "D-Day"
     if army_dnt <> 0 Then str_army_dnt = "D-" & army_dnt
 End if



 %>
 <!-- header -->

 <header id="headertop">



    <% ' Side Bar Navigation / 좌측 고정 사이드바 S %>
    <% if hcode <> "lab" Then %>
    <!-- #include virtual = "/common/menu/header_side_navi.asp"-->
    <% end if %>

    <% if hcode = "gong" and cdate(lo_now_date) < cdate("2021-11-08 19:00") then %>
    <div class="top_pc_bn">
        <div class="inner">
            <a href="/s/gong/event/2021/09280127/index.asp#eventWrap">
                <%If cdate(lo_now_date) < cdate("2021-11-05") then%>
                <img src="<%=img_main%>/m/2021/1101_zhonghun/top_ban_shin_img.png" alt="신용한T">
                <%else%>
                <img src="<%=img_main%>/m/2021/1101_zhonghun/top_ban_shin_img_211104.png" alt="신용한T">
                <%end if%>
            </a>
        </div>
    </div>
    <style>
        .top_pc_bn { background:#b0008f url(<%=img_main%>/m/2021/1101_zhonghun/top_ban_shin_bg.png) no-repeat center;background-size:auto 100%; }
        .top_pc_bn .inner { width:1200px; margin:0 auto;}
        @media (max-width:1200px) {
            .top_pc_bn { display:none; }
        }
    </style>
    <script>
        setInterval(function(){
            $(".top_pc_bn").toggleClass("on");
        }, 500);
    </script>
    <% end if %>

    <% if hcode <> "lab" Then %>
    <div class="hd_top">
        <div class="inner">

        <% '/common/js/common.js 여닫힘 스크립트 %>
        <% if 1=123456 then %>
        <div class="homep_link">

            <!-- 다크모드 버튼 -->
            <a href="javascript:;" class="darkmode_btn" title="다크모드"></a>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('.darkmode_btn').click(function(){
                        $('body').toggleClass('darkmode');
                    });
                });
            </script>
            <!-- // 다크모드 버튼 -->

            <div <% if hcode = "gong" Or hcode = "sobang" Or hcode = "army" Then %>class="on"<% End if %>>
                <a href="javascript:;" class="road1" title="인강"><span>인강</span></a>
                <ul class="sel_on">
                    <!-- <li <% if hcode = "gong" Then %>class="on"<% End if %>><a href="<%=url_main %>" title="메가공무원">메가공무원</a></li> -->
                    <li <% if hcode = "gong" Then %>class="on"<% End if %>><a href="<%=url_main %>" title="메가공무원 9/7급">메가공무원 9/7급</a></li>
                    <li <% if hcode = "sobang" Then %>class="on"<% End if %>><a href="<%=sobang_main %>" title="메가소방">메가소방</a></li>
                    <li <% if hcode = "army" Then %>class="on"<% End if %>><a href="<%=army_main %>" title="메가군무원">메가군무원</a></li>
                </ul>
            </div>
            <div <% if hcode = "gongssel" Or hcode = "sobangcampus" Or hcode = "ansung" Then %>class="on"<% End if %>>
                <a href="javascript:;" class="road1" title="학원"><span>학원</span></a>
                <ul class="sel_off">
                    <li <% if hcode = "gongssel" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>" title="난공 공무원학원">난공 공무원학원</a></li>
                    <li <% if hcode = "sobangcampus" Then %>class="on"<% End if %>><a href="<%=sobangcampus_main %>" title="난공 소방학원">난공 소방학원</a></li>
                    <li <% if hcode = "army" Then %>class="on"<% End if %>><a href="<%=gongssel_main %>/c/gongssel/schedule/2021/army/overall_gather_3.asp" title="난공 군무원학원">난공 군무원학원</a></li>
                    <li <% if hcode = "ansung" Then %>class="on"<% End if %>><a href="<%=ansung_main %>" title="기숙학원(일행, 경찰, 소방)">기숙학원<br>(일행, 경찰, 소방)</a></li>
                </ul>
            </div>
            <div>
                <a href="javascript:;" class="road1" title="난공불락 스파르타"><span>난공불락 스파르타</span></a>
                <ul>
                    <li><a href="https://ngbr.megagong.net/megagong.asp" target="_blank" title="메인">메인</a></li>
                    <li><a href="/r/ngbr/branch/gangnam/index.asp" target="_blank" title="강남">강남</a></li>
                    <li><a href="/r/ngbr/branch/gangbuk/index.asp" target="_blank" title="강북">강북</a></li>
                    <li><a href="/r/ngbr/branch/gwangsan/index.asp" target="_blank" title="광주(광산)">광주(광산)</a></li>
                    <li><a href="/r/ngbr/branch/chonnam/index.asp" target="_blank" title="광주(전남대)센터">광주(전남대)</a></li>
                    <li><a href="/r/ngbr/branch/chungjangro/index.asp" target="_blank" title="광주(충장로)">광주(충장로)</a></li>
                    <li><a href="/r/ngbr/branch/busan-seomyeon/index.asp" target="_blank" title="부산(서면)">부산(서면)</a></li>
                    <li><a href="/r/ngbr/branch/bundang/index.asp" target="_blank" title="분당">분당</a></li>
                    <li><a href="/r/ngbr/branch/incheon/index.asp" target="_blank" title="인천">인천</a></li>
                </ul>
            </div>
        </div>
        <% end if %>

        <% if 1=123456 then %>
            <% if hcode = "gong" then %>
            <!-- <div class="sns_wrp">
                <ul>
                    <li><a href="https://blog.naver.com/gongcamp" target="_blank" title="네이버블로그"><span>네이버블로그</span></a></li>
                    <li><a href="https://www.facebook.com/megagong/" target="_blank" title="페이스북"><span>페이스북</span></a></li>
                    <li><a href="https://www.instagram.com/megagong/" target="_blank" title="인스타그램"><span>인스타그램</span></a></li>
                    <li><a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank" title="유튜브"><span>유튜브</span></a></li>
                    <li><a href="https://tv.naver.com/gongcampus" target="_blank" title="네이버TV"><span>네이버TV</span></a></li>
                </ul>
            </div> -->
            <% elseif hcode = "gongssel" Or hcode = "sobangcampus" Or hcode = "ansung" then %>
            <!-- <div class="sns_wrp">
                <ul>
                    <li><a href="https://blog.naver.com/megastudy-russel/" target="_blank" title="네이버블로그"><span>네이버블로그</span></a></li>
                    <li><a href="https://www.facebook.com/megastudy.gong/" target="_blank" title="페이스북"><span>페이스북</span></a></li>
                    <li><a href="https://www.instagram.com/megagong_campus/" target="_blank" title="인스타그램"><span>인스타그램</span></a></li>
                    <li><a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank" title="유튜브"><span>유튜브</span></a></li>
                    <li><a href="https://tv.naver.com/gongcampus" target="_blank" title="네이버TV"><span>네이버TV</span></a></li>
                </ul>
            </div> -->
            <% elseif hcode="ngbr" then %>
            <!-- <div class="sns_wrp" style="margin: 0 -93px 0 0;">
                <ul>
                    <li><a href="https://blog.naver.com/ngbrsparta/" target="_blank" title="네이버블로그"><span>네이버블로그</span></a></li>
                    <li></li>
                    <li><a href="https://www.instagram.com/ngbrsparta/" target="_blank" title="인스타그램"><span>인스타그램</span></a></li>
                    <li><a href="https://www.youtube.com/channel/UCxi7JcaVTr41CszJpqWhRJA" target="_blank" title="유튜브"><span>유튜브</span></a></li>
                </ul>
            </div> -->
            <% else %>
            <!-- <div class="sns_wrp">
                <ul>
                    <li><a href="https://blog.naver.com/megasobang" target="_blank" title="네이버블로그"><span>네이버블로그</span></a></li>
                    <li><a href="https://www.facebook.com/megagong/" target="_blank" title="페이스북"><span>페이스북</span></a></li>
                    <li><a href="https://www.instagram.com/megagong/" target="_blank" title="인스타그램"><span>인스타그램</span></a></li>
                    <li><a href="https://www.youtube.com/channel/UCkY2Tq32Mpy8Qq-QljPFLag" target="_blank" title="유튜브"><span>유튜브</span></a></li>
                    <li><a href="https://tv.naver.com/gongcampus" target="_blank" title="네이버TV"><span>네이버TV</span></a></li>
                </ul>
            </div> -->
            <% end if %>
        <% End if %>


            <div class="login_wrap">
                <%If cook_id = "" then%>
                    <!-- 로그인 전 정보 영역 -->
                    <form name="frmLogin_top" method="post" action="https://<%=hostnm %>/member/login_sql.asp?site_gubun=<%=hcode%>" >
                        <ul class="login_after">
                        <li><a href="<%=httpsnm%>/member/login.asp">로그인</a></li>
                            <li><a href="<%=httpsnm%>/member/agree.asp">회원가입</a></li>
                            <li><a href="<%=httpsnm%>/member/login.asp?r_url=<%=server.urlencode("/mypage/")%>">마이페이지</a></li>
                            <li><a href="<%=httpsnm%>/mypage/pay/my_cart.asp">장바구니</a></li>
                        </ul>
                    </form>
                    <!-- 로그인 전 정보 영역 -->
                <% Else %>
                    <%
                        '쪽지
                        strSql = ""
                        strSql = strSql & "SELECT	TOP 3 NM_MAS_NO, ND_IDX, NM_TITLE, NM_SEND_DT = (CASE WHEN ND_SEND_DT IS NULL THEN CONVERT(CHAR(10),NM_SEND_DT,126) ELSE CONVERT(CHAR(10),ND_SEND_DT,126) END), ND_KEEP_YN "
                        strSql = strSql & "FROM     MS_NOTE_MAS WITH(NOLOCK) "
                        strSql = strSql & "JOIN     MS_NOTE_DTL WITH(NOLOCK) ON NM_MAS_NO = ND_MAS_NO "
                        strSql = strSql & "AND		ND_DEL_YN = 'N' "
                        strSql = strSql & "AND		ND_READ_YN = 'N' "
                        strSql = strSql & "AND		ND_MEM_ID = '" & cook_id & "' "
                        strSql = strSql & "ORDER BY NM_SEND_DT DESC "
                        Set Rs = DBexec(strSql, "study")
                        If not Rs.Eof Then
                            ar_paper = Rs.GetRows()
                        Else
                            ar_paper = ""
                        End if
                        RSClose(Rs)

                        p_new = "N"

                        if isArray(ar_paper) Then
                            if DateDiff("D", ar_paper(3, 0), Date()) <= 14 Then
                                p_new = "Y"
                            End if
                        End if
                    %>
                    <!-- 로그인 후 정보 영역 -->
                    <ul class="login_after">
                        <% if false Then %><li class="welcome"><span class="pointSt" onclick="location.href='/member/Account_Chk.asp';" style="cursor:pointer"><%=COOK_NAME %></span>님</li><% End if %>
                        <li><a href="/mypage/"> 마이페이지 </a></li>

                        <% if hcode = "ansung" or hcode = "sobangcampus"  Or cook_id="mjtest01" Or cook_id="jyleems" Then %>
                            <li><a href="/mypage/pay/my_cart_off.asp"> 학원결제 </a></li>
                            <li><a href="/mypage/study/my_study_remind.asp"> 복습동영상 </a></li>
                        <% else %>
                            <li><a href="/mypage/study/my_study.asp"> 내 강의실 </a></li>
                        <% End if %>
                        <li><a href="/mypage/paper/my_paper.asp">쪽지<% if p_new = "Y" Then %><img src="<%=img_main%>/common/letter_new.gif" hspace="4" align="absmiddle" style="vertical-align:middle;margin: -10px 0 0 3px;display:inline-block"><% End if %></a></li>
                        <li><a href="<%=httpsnm%>/mypage/pay/my_cart.asp">장바구니</a></li>
                        <li><a href="/member/logout_sql.asp"> 로그아웃</a></li>
                    </ul>
                    <!-- 로그인 후 정보 영역 -->
                <% End if %>
            </div>

        <!-- 디데이 설정 -->
        <% if hcode = "gong" Or hcode = "gongssel" Or hcode = "ansung" Or hcode = "ngbr" Then %>
        <div class="dday_wrap">
            <% if str_gong_5_1_dnt <> "" Then %>
            <div class="dday_txt">국가직 5급 1차 <strong><%=str_gong_5_1_dnt%></strong></div>
            <% End if %>

            <% if str_gong_9_dnt <> "" Then %>
            <div class="dday_txt">국가직 9급 <strong><%=str_gong_9_dnt%></strong></div>
            <% End if %>

            <% if hcode = "ansung"  Then %>
            <% if str_sobang_dnt <> "" Then %>
            <div class="dday_txt">소방공무원 <strong><%=str_sobang_dnt%></strong></div>
            <% End if %>
            <% End if %>

            <% if str_gong_dnt_2 <> "" Then %>
            <div class="dday_txt">지방직 9급 <strong><%=str_gong_dnt_2%></strong></div>
            <% End if %>

            <% if str_gong_5_2_dnt <> "" Then %>
            <div class="dday_txt">국가직 5급 2차 <strong><%=str_gong_5_2_dnt%></strong></div>
            <% End if %>

            <% if str_gong9_dnt <> "" Then %>
            <div class="dday_txt">법원직 9급 <strong><%=str_gong9_dnt%></strong></div>
            <% End if %>

            <% if str_gong_7_1_dnt <> "" Then %>
            <div class="dday_txt">국가직 7급 1차 <strong><%=str_gong_7_1_dnt%></strong></div>
            <% End if %>

            <% if str_gong_7_2_dnt <> "" Then %>
            <div class="dday_txt">국가직 7급 2차 <strong><%=str_gong_7_2_dnt%></strong></div>
            <% End if %>

            <% if str_gong7_dnt_3 <> "" Then %>
            <div class="dday_txt">지방직 7급 <strong><%=str_gong7_dnt_3%></strong></div>
            <% End if %>
        </div>
        <%elseif hcode = "sobang" Or hcode = "sobangcampus"  Then %>
        <div class="dday_wrap">
            <% if str_sobang_dnt <> "" Then %>
            <div class="dday_txt">소방공무원 <strong><%=str_sobang_dnt%></strong></div>
            <% End if %>
        </div>
        <%elseif hcode = "army" Or hcode = "armycampus"  Then %>
        <div class="dday_wrap">
            <% if str_army_dnt <> "" Then %>
            <div class="dday_txt">군무원 <strong><%=str_army_dnt%></strong></div>
            <% End if %>
        </div>
        <%end if%>



            <script type="text/javascript">
            (function($){
                $('.dday_wrap').slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    infinite: true,
                    dots: false,
                    arrows: false,
                    speed: 200,
                    autoplaySpeed: 3000,
                    autoplay: true,
                    rows: 0,
                    vertical: true
                });
            })(jQuery);
        </script>
        <!-- // 디데이 설정 -->

        </div>


    </div>
    <% Else %>
    <div class="hd-top">
        <div class="inner">      
            <div class="dday-slider mo-view ">
                <div><b>지방직 7급</b> <span>D-100</span></div>
                <div><b>ㅇㅇ직 8급</b> <span>D-100</span></div>
                <div><b>ㄴㄴ직 9급</b> <span>D-100</span></div>
            </div>            
            <ul class="hdtop-wrap">
                <%If cook_id = "" then%>
                <!-- 로그인 전 정보 영역 -->
                <li class="login-wrap">
                    <form name="frmLogin_top" method="post" action="https://<%=hostnm %>/member/login_sql.asp?site_gubun=<%=hcode%>" >
                        <a href="<%=httpsnm%>/member/login.asp"><span class="pc-view">로그인</span><img src="<%=img_main%>/lab/common/icn_login.png" alt="" class="mo-view"></a>
                    </form>
                </li>
                <!-- 로그인 전 정보 영역 -->
                <% Else %>
                <!-- 로그인 후 정보 영역 -->
                <li class="login-wrap"><a href="/member/logout_sql.asp"><span class="pc-view">로그아웃</span><img src="<%=img_main%>/lab/common/icn_login.png" alt="" class="mo-view"></a></li>
                <!-- 로그인 후 정보 영역 -->
                <% End if %>

                <li class="link-wrap">
                    <a href="javascript:;" class="link-btn" title="메가공무원">메가공무원</a>
                    <ul class="link-list">
                        <li><a href="<%=url_main%>/megagong.asp" target="_blank">메가공무원</a></li>	
                        <li><a href="<%=sobang_main%>/megagong.asp" target="_blank">메가소방</a></li>	
                        <li><a href="<%=army_main%>/megagong.asp" target="_blank">메가군무원</a></li>	
                    </ul>                    
                </li>
            </ul>       
        </div>
    </div>
        
    <% End if %>

    <% 'CONTENTS / GNB 영역 %>

    <% if hcode = "gong" Then %>
        <% ' 20210201 공무원 메인개편 %>
        <!-- #include virtual = "/common/menu/header_gong_v21.asp"-->
    <% End if %>

    <% if hcode = "sobang" Then %>
        <!-- #include virtual = "/common/menu/header_sobang_v21.asp"-->
    <% End if %>

    <% if hcode = "gongssel" Then %>
        <!-- #include virtual = "/common/menu/header_gongssel_v21.asp"-->
    <% End if %>

    <% if hcode = "sobangcampus" Then %>
        <!-- #include virtual = "/common/menu/header_sobangcampus_v21.asp"-->
    <% End if %>

    <% if hcode = "ansung" Then %>
        <!-- #include virtual = "/common/menu/header_ansung_v21.asp"-->
    <% End if %>

    <% if hcode = "ngbr" Then %>
    <!-- #include virtual = "/common/menu/header_ngbr.asp"-->
    <% End if %>

    <% if hcode = "army" or hcode = "armycampus" Then %>
        <%If cdate(lo_now_date) < cdate("2021-12-29") then%>
        <!-- #include virtual = "/common/menu/header_army.asp"-->
        <% else %>
        <!-- #include virtual = "/common/menu/header_army_v21.asp"-->
        <% End if %>
    <% End if %>

    <% if hcode = "lab" Then %>
        <!-- #include virtual = "/common/menu/header_lab.asp"-->
    <% End if %>


    <% 'CONTENTS / GNB 영역 %>






    <!-- --- 공무원,소방 온라인 PC header 고정 , Mobile header 스크롤 노출 (메인만 적용) --- -->
    <% if instr(1, NowUrl, "/megagong.asp") = 1 Then %>
    <% if hcode <> "ngbr" and hcode <> "lab" Then %>
    <script>
    $(window).scroll(function(){
        var hdWrap = $("#header_wrap").offset().top;

        if($(window).scrollTop() > hdWrap+80){
            $('#header_utility').addClass('fixed');
            $('#hd_MoUtility').addClass('fixed');

        }else{
            $('#header_utility').removeClass('fixed');
            $('#hd_MoUtility').removeClass('fixed');
        }
    });
    </script>
    <% End if %>
    <% end if %>







 </header>
 <!-- //header -->
<%
    End if '스마트러닝 조건 : N
%>