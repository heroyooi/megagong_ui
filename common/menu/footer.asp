<%
if fncCheckOfficeIp() = true And cook_id = "monome" then
    response.write "LOCAL_ADDR : " & Request.ServerVariables("LOCAL_ADDR")
end if

    if SmartLearingFlg = "Y" Then
%>
        <% if cook_id = "crazytiger" Then %>
        <%
            Response.Write SmartLearingVer
        %>
        <% End if %>
<%
    Else '스마트러닝 조건 : N
%>
<!-- footer -->
<% if hcode = "gong" Or hcode = "sobang" Or hcode = "sobangcampus" Or hcode = "ansung" Or hcode = "gongssel" Or hcode = "army" Or hcode = "armycampus" Or hcode = "ngbr" OR hcode = "lab" Then %>
<footer id="footer">
    <div class="ft_wrp">
        <ul>
            <% if hcode = "gongssel" Or hcode = "sobangcampus" Or hcode = "ansung" Then %>
            <li class="bold"><strong>메가스터디교육(주)</strong></li>
            <%end if%>
            <li><a href="http://corp.megastudy.net/" target="_blank">회사소개</a></li>
            <li><a href="/member/service.asp">이용약관</a></li>
            <li><a href="/member/copyright.asp" style="color:#d5d5d5;">저작권안내</a></li>
            <li><a href="http://corp.megastudy.net/sub05/sub02.php" target="_blank">선생님 채용</a></li>
            <li class="lastli bold"><a href="/member/privacy.asp" style="color:#d5d5d5;">개인정보처리방침</a></li>
        </ul>
        <div class="group_view">
            <a href="javascript:;" class="view_btn" title="메가스터디 그룹 소개">메가스터디 그룹 소개</a>
            <div id="megagroup" style="display: none;">
				<div id="megagroup_list">
				<ul class="megagroup_list">
                    <li><a href="http://junior.mbest.co.kr/" target="_blank">엘리하이</a></li>
					<li><a href="https://www.mbest.co.kr/" target="_blank">엠베스트</a></li>
					<li><a href="https://www.megastudy.net/" target="_blank">메가스터디</a></li>
					<li><a href="https://russel.megastudy.net" target="_blank">수준별 맞춤 단과 러셀</a></li>
					<li><a href="https://campus.megastudy.net/" target="_blank">메가스터디학원</a></li>
                    <li><a href="https://www.megamd.co.kr/" target="_blank">메가엠디</a></li>
                    <li><a href="https://www.megals.co.kr/" target="_blank">메가로스쿨</a></li>
                    <li><a href="https://www.megalawyers.co.kr/" target="_blank">메가로이어스</a></li>
					<li><a href="https://www.megapsat.co.kr/" target="_blank">메가PSAT</a></li>
					<%if hcode <> "gong" Then%>
                    <li><a href="https://www.megagong.net/" target="_blank">메가공무원</a></li>
					<%End if%>
					<%if hcode <> "gongssel" Then%>
					<li><a href="https://gongssel.megagong.net/" target="_blank">메가공무원학원</a></li>
					<%End if%>
					<%if hcode <> "sobang" Then%>
					<li><a href="https://sobang.megagong.net/" target="_blank">메가소방</a></li>
					<%End if%>
					<%if hcode <> "sobangcampus" Then%>
                    <li><a href="https://sobangcampus.megagong.net/" target="_blank">메가소방학원</a></li>
					<%End if%>
                    <%if hcode <> "army" Then%>
                    <li><a href="https://army.megagong.net/" target="_blank">메가군무원</a></li>
					<%End if%>
					<%if hcode <> "ansung" Then%>
					<li><a href="https://ansung.megagong.net/" target="_blank">메가공무원 전문관 24hr</a></li>
					<%End if%>
                    <%if hcode <> "ngbr" Then%>
					<li><a href="https://ngbr.megagong.net/" target="_blank">메가공무원스파르타난공불락</a></li>
					<%End if%>
                    <li><a href="https://www.kimyoung.co.kr/" target="_blank">김영편입</a></li>
					<li><a href="https://www.unistudy.co.kr/" target="_blank">유니스터디</a></li>
					<li><a href="https://www.tjoeun.co.kr/" target="_blank">더조은컴퓨터아트학원</a></li>
					<li><a href="https://www.caedu.co.kr" target="_blank">메가원격평생교육원</a></li>
                    <li><a href="https://www.bbedu.co.kr" target="_blank">보건복지사이버평생교육원</a></li>
                    <li><a href="https://www.megaland.co.kr/" target="_blank">메가랜드</a></li>
                    <li><a href="http://www.megahrd.co.kr/" target="_blank">메가HRD</a></li>
                    <li><a href="http://www.megabooks.co.kr/" target="_blank">메가스터디BOOKS</a></li>
                    <li><a href="http://www.megabmc.com/" target="_blank">메가비엠씨</a></li>
				</ul>
				</div>
			</div>
        </div>
    </div>
	<script type="text/javascript">
		$(document).on('click',function(event){
			if(!$(event.target).closest('.group_view').length && $('.group_view .view_btn').hasClass('on')){
				$('.group_view .view_btn').trigger('click');
			};
		});
	</script>
    <% 'if hcode = "gong" Or hcode = "sobang" Then %>
    <!-- 레이어팝업 -->
    <div id="marchDim" class="footerPopup marchDim">
        <span class="dimBg">-</span>
        <div class="contentBox contentName allCareLayer">
            <div>
                 <img src="<%=img_main%>/common/footer_pop.png" alt=""  />
            </div>
            <style>
                .marchDim{display: none;}
                .footerPopup.marchDim .allCareLayer{position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);z-index:3;width: 600px;}
                .footerPopup.marchDim{z-index: 102;}
                .footerPopup{position:fixed;left:0;top:0;width:100%;height:100%;z-index:100;}
                .footerPopup .dimBg{position:absolute;top:0;left:0;width:100%;height:100%;background-color:#000;opacity:0.7;}

                @media (max-width: 1200px){
                    .footerPopup.marchDim .allCareLayer{width:86%;max-width:650px;}
                }
                @media (max-width: 768px){
                    .footerPopup.marchDim .allCareLayer{width:86%;}
                }


            </style>
        </div>
    </div>
    <script>
        $(function(){
            $('#marchDim').on('click',function(){
                $(this).hide();
            });
        });
    </script>
    <!-- //레이어팝업 -->
	<div class="ft_wrp last">
        <% if hcode = "gong" Or hcode = "sobang" Or hcode = "sobangcampus" Or hcode = "ansung" Or hcode = "gongssel" Or hcode = "army" Or hcode = "armycampus" Or hcode = "lab" Then %>
		<ul>
			<li class="bar"><address>06643 서울 서초구 효령로 321 (서초동, 덕원빌딩) 메가스터디교육(주) 대표이사 손성은</address></li>
			<li>개인정보보호책임자 김록훈 keeper@megagong.net</li> <br>
			<!-- <li>메가스터디교육 원격평생교육시설</li> -->
            <li class="lastli bar">메가스터디교육 원격평생교육시설(제 원-589호)</li>
            <li class="flt_no bar">사업자등록번호 : 780-87-00034</li>
			<li>통신판매업신고번호 : 2015-서울서초-0678 <a href="javascript:;" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7808700034', 'bizCommPop', 'width=750, height=700;');return false;" title="정보조회"><img src="https://img.megagong.net/gong/common/btn_footer_info.gif" alt="정보조회"></a></li> <br>
			<li class="bar">신고기관명 : 서울특별시 서초구</li>
			<li class="bar">호스팅제공자 : (주)케이티</li>
            <li class="lastli">학습지원센터 : 1644-8806</li> <br>
            <% if hcode = "gong" Or hcode = "sobang" Or hcode = "ngbr" Then %>
            <li class="copyrt">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</li>
            <% End if %>
		</ul>
        <div class="cooperation">

            <a class="logo_isms" href="javascript:;">정보보호 관리체계(ISMS)</a>
            <!-- 2022-02-11 추가 -->
            <div class="lgUPlus_area">
                <img src="https://img1s.mbest.co.kr/Pub_common/logo_lg_140414.gif" title="lg u+">
                <p>안전거래를 위해 현금으로 결제 시<br>
                메가스터디에서 가입한 구매안전서비스를 <br>
                이용하실 수 있습니다.</p>
                <a class="confirm" href="javascript:;" onclick="window.open('https://pgweb.tosspayments.com/ms/escrow/s_escrowYn.do?mertid=Gongcampus_00', 'pop_escrow', 'width=500, height=550, top=50, left=100');return false;" class="fnt_b">가입사실 확인 &gt;</a>
            </div>
            <!-- //2022-02-11 추가 -->
        </div>
        <% end if %>
        <% if hcode = "ngbr"  Then %>
        <ul>
			<li class="bar"><address>06643 서울 서초구 효령로 321 (서초동, 덕원빌딩) 메가스터디교육(주) 대표이사 손성은</address></li>
			<li  class="bar">개인정보보호책임자 김록훈 keeper@megagong.net</li>
			<!-- <li>메가스터디교육 원격평생교육시설</li> -->
            <li class="lastli">메가스터디교육 원격평생교육시설(제 원-589호)</li> <br>
            <li class="flt_no bar">사업자등록번호 : 780-87-00034</li>
			<li class="bar">통신판매업신고번호 : 2015-서울서초-0678 <a href="javascript:;" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7808700034', 'bizCommPop', 'width=750, height=700;');return false;" title="정보조회"><img src="https://img.megagong.net/gong/common/btn_footer_info.gif" alt="정보조회"></a></li>
			<li class="bar">신고기관명 : 서울특별시 서초구</li>
			<li class="lastli">호스팅제공자 : (주)케이티</li> <br>
            <li class="copyrt">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</li>
		</ul>
        <% end if %>


	</div>
    <script>
        // function pop_isms() {
        //     $('#marchDim').show();
        // }
        $('.logo_isms').on('click',function(){
            $('#marchDim').show();
        });
    </script>
    <% 'End if %>

    <%If hcode = "sobangcampus" Then%>
    <!-- 소방 푸터 하단 -->
    <div class="ft_wrp sobang n1223 mt">
        <strong class="ac_tit">메가소방신관학원</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 702호 일부</address></li>
            <li>학원문의 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">사업자등록번호 : 706-85-01083</li>
            <li>대표자 : 장정훈</li>
            <li>학원운영등록증번호 : 제3648호</li>
            <li class="lastli">교습과정 : 성인고시</li>
		</ul>
    </div>
    <div class="ft_wrp sobang n1223 line2">
        <strong class="ac_tit ">버닝클래스 <br/>신관독서실</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 701호 일부</address></li>
            <li>학원문의 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">사업자등록번호 : 706-85-01083</li>
            <li>대표자 : 장정훈</li>
            <li>학원운영등록증번호 : 제3659호</li>
            <li class="lastli">교습과정 : 독서실</li>
		</ul>
    </div>
    <div class="ft_wrp sobang n1223">
        <strong class="ac_tit">메가소방2관학원</strong>
        <ul>
			<li><address>서울특별시 동작구 장승배기로 26길 19-5, 2층, 4층</address></li>
            <li>학원문의 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">사업자등록번호 : 706-85-01083</li>
            <li>대표자 : 장정훈</li>
            <li>학원운영등록증번호 : 제3686호</li>
            <li class="lastli">교습과정 : 성인고시</li>
		</ul>
    </div>
    <div class="ft_wrp sobang n1223">
        <strong class="ac_tit">버닝클래스 <br/>독서실</strong>
        <ul>
			<li><address>서울특별시 동작구 장승배기로 26길 19-5, 1층 및 3층 일부</address></li>
            <li>학원문의 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">사업자등록번호 : 706-85-01083</li>
            <li>대표자 : 장정훈</li>
            <li>학원운영등록증번호 : 제3706호</li>
            <li class="lastli">교습과정 : 독서실</li>
		</ul>
    </div>
    <div class="ft_wrp copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // 소방 푸터 하단 -->
    <%End If%>

    <% if hcode = "ansung" Then %>
    <!-- 경찰 푸터 하단 -->
    <div class="ft_wrp police n1223 mt">
        <strong class="ac_tit">메가 공무원, 경찰 <br />전문관 학원</strong>
		<ul>
			<li><address>경기도 안성시 삼죽면 진촌진말길 38</address></li>
			<li>사업자등록번호 : 116-85-33201 </li>
            <li>대표자 : 변창훈</li>
            <li>업종 : 고시학원, 스터디카페</li>
            <li>학원 문의 : 031-676-9112</li>
            <li class="lastli">FAX : 031-676-3112</li>
            <li class="flt_no">학원운영등록증번호 : 제 819-8호, 제 903호 </li>
            <li class="lastli">교습과정 : 평생직업교육학원(성인고시) </li>
		</ul>
    </div>
    <% if 1=2 then%>
    <!--
    <div class="ft_wrp police n1223">
        <strong class="ac_tit">난공소방<br />전문관 학원</strong>
		<ul>
			<li><address>경기도 안성시 삼죽면 진촌진말길 38, A동 지하 1층 일부</address></li>
			<li>사업자등록번호 : 112-85-42241 </li>
            <li class="lastli">대표자 : 변창훈</li>
            <li class="flt_no">학원 문의 : 031-676-9112</li>
            <li>FAX : 031-676-3112</li>
            <li>학원운영등록증번호 : 제903호</li>
            <li class="lastli">교습과정 : 평생직업교육학원(성인고시)</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223">
        <strong class="ac_tit">메가 공무원<br />스터디카페</strong>
		<ul>
			<li><address>경기도 안성시 삼죽면 진촌진말길 38, A동 1층 일부, 3~4층, C동 1층 일부</address></li>
			<li>사업자등록번호 : 611-85-07440</li>
            <li class="lastli">대표자 : 변창훈</li>
            <li class="flt_no">학원 문의 : 031-676-9112</li>
            <li class="lastli">FAX : 031-676-3112</li>
		</ul>
	</div>
    -->
    <% End if %>

    <div class="ft_wrp police copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // 경찰 푸터 하단 -->
    <% End if %>

    <% if hcode = "gongssel" Then %>
    <!-- 공셀 푸터 하단 -->
    <div class="ft_wrp police n1223 mt">
        <strong class="ac_tit">메가공무원1관학원</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 3층일부</address></li>
            <li class="lastli">학원문의 02-3280-1010</li>
            <li class="flt_no">사업자등록번호 : 503-85-33496</li>
            <li>대표자 : 차동경</li>
            <li>학원운영등록증번호 : 제3741호</li>
            <li class="lastli">교습과정 : 성인고시</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223">
        <strong class="ac_tit">메가공무원2관학원</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 3층일부, 4층일부</address></li>
            <li class="lastli">학원문의 02-3280-1010</li>
            <li class="flt_no">사업자등록번호 : 503-85-33496</li>
            <li>대표자 : 차동경</li>
            <li>학원운영등록증번호 : 제3721호</li>
            <li class="lastli">교습과정 : 성인고시</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223 line2">
        <strong class="ac_tit row_te">메가공무원스파르타 <br />난공불락 <br/>노량진1관독서실</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 402호 일부</address></li>
            <li class="lastli">학원문의 02-3280-1010</li>
            <li class="flt_no">사업자등록번호 : 503-85-33496</li>
            <li>대표자 : 차동경</li>
            <li>학원운영등록증번호 : 제3758호</li>
            <li class="lastli">교습과정 : 독서실</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223 line2">
        <strong class="ac_tit row_te">메가공무원스파르타 <br />난공불락 <br />노량진2관독서실</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 402호 일부</address></li>
            <li class="lastli">학원문의 02-3280-1010</li>
            <li class="flt_no">사업자등록번호 : 503-85-33496</li>
            <li>대표자 : 차동경</li>
            <li>학원운영등록증번호 : 제3726호</li>
            <li class="lastli">교습과정 : 독서실</li>
		</ul>
    </div>
    <!-- <div class="ft_wrp police n1223">
        <strong class="ac_tit">메가군무원학원</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 3층일부</address></li>
            <li>학원문의 02-2162-5671</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">사업자등록번호 : 706-85-01083</li>
            <li>대표자 : 장정훈</li>
            <li>학원운영등록증번호 : 제3720호</li>
            <li class="lastli">교습과정 : 성인고시</li>
        </ul>
    </div> -->
    <div class="ft_wrp police copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // 공셀 푸터 하단 -->
    <% End if %>

    <% if hcode = "armycampus" Then %>
    <!-- 메가군무원학원 푸터 하단 -->
    <div class="ft_wrp police n1223 mt">
        <strong class="ac_tit">메가군무원학원</strong>
        <ul>
			<li><address>서울특별시 동작구 노량진로 140, 701호 일부, 702호 일부</address></li>
            <li>학원문의 02-2162-5671</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">사업자등록번호 : 706-85-01083</li>
            <li>대표자 : 장정훈</li>
            <li>학원운영등록증번호 : 제3809호</li>
            <li class="lastli">교습과정 : 성인고시</li>
		</ul>
    </div>
    <div class="ft_wrp police copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // 메가군무원학원 푸터 하단 -->
    <% End if %>


</footer>
<% End if %>

<% if hcode = "ngbr" and 1=12345 Then %>
<!-- 난공불락 footer -->
<footer id="footer" class="ngbr">

    <div class="ft_wrp ngbr">
        <strong class="ac_tit">메가스터디교육 주식회사 (사업자등록번호 : 780-87-00034)</strong>
        <ul>
            <li>
                <address>주소 : 06643 서울 서초구 효령로 321 (서초동, 덕원빌딩) 메가스터디교육(주) 대표이사 손성은</address>
            </li>
            <li>대표번호(학습지원센터) : 1644-8806</li>
            <li class="copyrt">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</li>
        </ul>
    </div>
</footer>
<!-- // 난공불락 footer -->
<% End if %>

<script type="text/javascript">

$(document).ready(function() {
    /* ---메가스터디 그룹 소개 --- */
    $('.group_view .view_btn').click(function(){
        /* --- 클래스 on 토글--- */
        if($(this).hasClass('on')){
            $(this).removeClass('on');
            $('#megagroup').css('display','none');
        }else{
            $(this).addClass('on');
            $('#megagroup').css('display','block');
        }

    });
    $('.group_view .megagroup_close').click(function(){
            $('#megagroup').css('display','none');
            $('.group_view .view_btn').removeClass('on');
    });

});
</script>
<!-- //footer -->

<% if inStr(hostnm, "dev") = 0 Then%>
    <% 'logger영역 %>
    <% if hcode = "gong" then %>
	<!-- #include virtual = "/common/logger/logger_gong.asp"-->
    <% elseif hcode = "sobang" then %>
    <!-- #include virtual = "/common/logger/logger_sobang.asp"-->
    <% elseif hcode = "sobangcampus" then %>
    <!-- #include virtual = "/common/logger/logger_sobangcampus.asp"-->
    <% elseif hcode = "ansung" then %>
    <!-- #include virtual = "/common/logger/logger_ansung.asp"-->
	<% elseif hcode = "gongssel" then %>
    <!-- #include virtual = "/common/logger/logger_gongssel.asp"-->
    <% elseif hcode = "army" then %>
    <!-- #include virtual = "/common/logger/logger_army.asp"-->
    <% elseif hcode = "ngbr" then %>
    <!-- #include virtual = "/common/logger/logger_ngbr.asp"-->
    <% end if %>
    <% 'logger영역 %>
<% end if%>


<% if 1=2 then '붐업이벤트시에만 적용 %>
<%' if fncCheckOfficeIp = true  then %>
<!-- #include virtual = "/event/2019/05290002/point_bnr.asp"-->
<%' end if %>
<% end if %>

<%
'if isrealserver() = false then
'    response.write "login_id : " & cook_id
'end if
%>
<%
	If fncChkMobile = "Y" Then
%>
<div class="view_changer" style="">
    <% if set_view = "R" Then %>
        <a href="#_blank" onclick="setCookie('set_view', 'P', 1000); document.location.reload();" style="">PC 버전 보기 &gt;</a>
    <% End if %>
    <% if set_view = "P" Then %>
        <a href="#_blank" onclick="setCookie('set_view', 'R', 1000); document.location.reload();" style="">반응형 버전 보기 &gt;</a>
    <% End if %>
</div>
<%	End If %>
<%
    End if '스마트러닝 조건 : N
%>


