<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- �÷��̾� ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- �÷��̾� ���� ��Ŭ��� ������ ���� -->
<!-- �ް� ĳ��Ʈ, �ް� ���̽�, ������ ���ҽ� -->
<%
    
%>
<div class="cast">

	<div class="table__top">
		�ް� ĳ��Ʈ
	</div>
	<ul class="cast--list">
		<li>
			<a href="">
				<img class="cast--bg" src="<%=IMG%>/bg_openLecture.png" alt="">
				<img class="cast--pic" src="http://cdnmega.nefficient.co.kr//fileserver/teacher_2007/tcc/tcc_tec_pic/tcc_sni_20150901164146.jpg" alt="">
				<div class="cast--txt">��� �����ϴ� ��� 2ź ��� �п� ���ù� ��� �����ϴ� ���...<span class="cast--date">2016-01-18</span></div>
			</a>
		</li>
		<li>
			<a href="">
				<img class="cast--bg" src="<%=IMG%>/bg_openLecture.png" alt="">
				<img class="cast--pic" src="http://cdnmega.nefficient.co.kr//fileserver/teacher_2007/tcc/tcc_tec_pic/tcc_sni_20150901164146.jpg" alt="">
				<div class="cast--txt">��� �����ϴ� ��� 2ź ��� �п� ���ù� ��� �����ϴ� ���...<span class="cast--date">2016-01-18</span></div>
			</a>
		</li>
	</ul>

	<div class="table__top">
		�ް� ���̽�
	</div>
	<ul class="hotissue--list">
		<li>
			<a href="">
				<strong class="hostissue__title">�� �������� 2017 ����Ͻ� ����</strong>
				�� �������� 2017 [����Ͻ�] �˰� �ֳ���?6�� ���� 1���� �� �������� ����Ͻ� ��¼��<br>
				<strong>���� �� pass! ��Ʈ�� ���ϱ���</strong>
			</a>
		</li>
		<li>
			<a href="">
				<strong class="hostissue__title">�� �������� 2017 ����Ͻ� ����</strong>
				�� �������� 2017 [����Ͻ�] �˰� �ֳ���?6�� ���� 1���� �� �������� ����Ͻ� ��¼��<br>
				<strong>���� �� pass! ��Ʈ�� ���ϱ���</strong>
			</a>
		</li>
	</ul>

	<div class="table__top">
		������ ���ҽ�
	</div>
	<ul class="hotissue--list">
		<li>
			<a href="">��[���� ��] T-PASS �Ǹ� �� ���� �ȳ���</a>
		</li>
		<li>
			<a href="">��[���� ��] T-PASS �Ǹ� �� ���� �ȳ���</a>
		</li>
	</ul>

</div>