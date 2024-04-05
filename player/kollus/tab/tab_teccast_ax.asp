<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- 플레이어 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- 플레이어 공통 인클루드 페이지 종료 -->
<!-- 메가 캐스트, 메가 핫이슈, 선생님 새소식 -->
<%
    
%>
<div class="cast">

	<div class="table__top">
		메가 캐스트
	</div>
	<ul class="cast--list">
		<li>
			<a href="">
				<img class="cast--bg" src="<%=IMG%>/bg_openLecture.png" alt="">
				<img class="cast--pic" src="http://cdnmega.nefficient.co.kr//fileserver/teacher_2007/tcc/tcc_tec_pic/tcc_sni_20150901164146.jpg" alt="">
				<div class="cast--txt">재수 성공하는 방법 2탄 재수 학원 선택법 재수 성공하는 방법...<span class="cast--date">2016-01-18</span></div>
			</a>
		</li>
		<li>
			<a href="">
				<img class="cast--bg" src="<%=IMG%>/bg_openLecture.png" alt="">
				<img class="cast--pic" src="http://cdnmega.nefficient.co.kr//fileserver/teacher_2007/tcc/tcc_tec_pic/tcc_sni_20150901164146.jpg" alt="">
				<div class="cast--txt">재수 성공하는 방법 2탄 재수 학원 선택법 재수 성공하는 방법...<span class="cast--date">2016-01-18</span></div>
			</a>
		</li>
	</ul>

	<div class="table__top">
		메가 핫이슈
	</div>
	<ul class="hotissue--list">
		<li>
			<a href="">
				<strong class="hostissue__title">더 강력해진 2017 삼법일신 강좌</strong>
				더 강력해진 2017 [삼법일신] 알고 있나요?6년 연속 1위의 더 강력해진 삼법일신 어쩌구<br>
				<strong>논리의 神 pass! 노트랑 파일까지</strong>
			</a>
		</li>
		<li>
			<a href="">
				<strong class="hostissue__title">더 강력해진 2017 삼법일신 강좌</strong>
				더 강력해진 2017 [삼법일신] 알고 있나요?6년 연속 1위의 더 강력해진 삼법일신 어쩌구<br>
				<strong>논리의 神 pass! 노트랑 파일까지</strong>
			</a>
		</li>
	</ul>

	<div class="table__top">
		선생님 새소식
	</div>
	<ul class="hotissue--list">
		<li>
			<a href="">☆[논리의 神] T-PASS 판매 및 혜택 안내☆</a>
		</li>
		<li>
			<a href="">☆[논리의 神] T-PASS 판매 및 혜택 안내☆</a>
		</li>
	</ul>

</div>