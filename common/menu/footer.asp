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
    Else '����Ʈ���� ���� : N
%>
<!-- footer -->
<% if hcode = "gong" Or hcode = "sobang" Or hcode = "sobangcampus" Or hcode = "ansung" Or hcode = "gongssel" Or hcode = "army" Or hcode = "armycampus" Or hcode = "ngbr" OR hcode = "lab" Then %>
<footer id="footer">
    <div class="ft_wrp">
        <ul>
            <% if hcode = "gongssel" Or hcode = "sobangcampus" Or hcode = "ansung" Then %>
            <li class="bold"><strong>�ް����͵���(��)</strong></li>
            <%end if%>
            <li><a href="http://corp.megastudy.net/" target="_blank">ȸ��Ұ�</a></li>
            <li><a href="/member/service.asp">�̿���</a></li>
            <li><a href="/member/copyright.asp" style="color:#d5d5d5;">���۱Ǿȳ�</a></li>
            <li><a href="http://corp.megastudy.net/sub05/sub02.php" target="_blank">������ ä��</a></li>
            <li class="lastli bold"><a href="/member/privacy.asp" style="color:#d5d5d5;">��������ó����ħ</a></li>
        </ul>
        <div class="group_view">
            <a href="javascript:;" class="view_btn" title="�ް����͵� �׷� �Ұ�">�ް����͵� �׷� �Ұ�</a>
            <div id="megagroup" style="display: none;">
				<div id="megagroup_list">
				<ul class="megagroup_list">
                    <li><a href="http://junior.mbest.co.kr/" target="_blank">��������</a></li>
					<li><a href="https://www.mbest.co.kr/" target="_blank">������Ʈ</a></li>
					<li><a href="https://www.megastudy.net/" target="_blank">�ް����͵�</a></li>
					<li><a href="https://russel.megastudy.net" target="_blank">���غ� ���� �ܰ� ����</a></li>
					<li><a href="https://campus.megastudy.net/" target="_blank">�ް����͵��п�</a></li>
                    <li><a href="https://www.megamd.co.kr/" target="_blank">�ް�����</a></li>
                    <li><a href="https://www.megals.co.kr/" target="_blank">�ް��ν���</a></li>
                    <li><a href="https://www.megalawyers.co.kr/" target="_blank">�ް����̾</a></li>
					<li><a href="https://www.megapsat.co.kr/" target="_blank">�ް�PSAT</a></li>
					<%if hcode <> "gong" Then%>
                    <li><a href="https://www.megagong.net/" target="_blank">�ް�������</a></li>
					<%End if%>
					<%if hcode <> "gongssel" Then%>
					<li><a href="https://gongssel.megagong.net/" target="_blank">�ް��������п�</a></li>
					<%End if%>
					<%if hcode <> "sobang" Then%>
					<li><a href="https://sobang.megagong.net/" target="_blank">�ް��ҹ�</a></li>
					<%End if%>
					<%if hcode <> "sobangcampus" Then%>
                    <li><a href="https://sobangcampus.megagong.net/" target="_blank">�ް��ҹ��п�</a></li>
					<%End if%>
                    <%if hcode <> "army" Then%>
                    <li><a href="https://army.megagong.net/" target="_blank">�ް�������</a></li>
					<%End if%>
					<%if hcode <> "ansung" Then%>
					<li><a href="https://ansung.megagong.net/" target="_blank">�ް������� ������ 24hr</a></li>
					<%End if%>
                    <%if hcode <> "ngbr" Then%>
					<li><a href="https://ngbr.megagong.net/" target="_blank">�ް����������ĸ�Ÿ�����Ҷ�</a></li>
					<%End if%>
                    <li><a href="https://www.kimyoung.co.kr/" target="_blank">�迵����</a></li>
					<li><a href="https://www.unistudy.co.kr/" target="_blank">���Ͻ��͵�</a></li>
					<li><a href="https://www.tjoeun.co.kr/" target="_blank">��������ǻ�;�Ʈ�п�</a></li>
					<li><a href="https://www.caedu.co.kr" target="_blank">�ް��������������</a></li>
                    <li><a href="https://www.bbedu.co.kr" target="_blank">���Ǻ������̹����������</a></li>
                    <li><a href="https://www.megaland.co.kr/" target="_blank">�ް�����</a></li>
                    <li><a href="http://www.megahrd.co.kr/" target="_blank">�ް�HRD</a></li>
                    <li><a href="http://www.megabooks.co.kr/" target="_blank">�ް����͵�BOOKS</a></li>
                    <li><a href="http://www.megabmc.com/" target="_blank">�ް��񿥾�</a></li>
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
    <!-- ���̾��˾� -->
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
    <!-- //���̾��˾� -->
	<div class="ft_wrp last">
        <% if hcode = "gong" Or hcode = "sobang" Or hcode = "sobangcampus" Or hcode = "ansung" Or hcode = "gongssel" Or hcode = "army" Or hcode = "armycampus" Or hcode = "lab" Then %>
		<ul>
			<li class="bar"><address>06643 ���� ���ʱ� ȿ�ɷ� 321 (���ʵ�, ��������) �ް����͵���(��) ��ǥ�̻� �ռ���</address></li>
			<li>����������ȣå���� ����� keeper@megagong.net</li> <br>
			<!-- <li>�ް����͵��� ������������ü�</li> -->
            <li class="lastli bar">�ް����͵��� ������������ü�(�� ��-589ȣ)</li>
            <li class="flt_no bar">����ڵ�Ϲ�ȣ : 780-87-00034</li>
			<li>����Ǹž��Ű��ȣ : 2015-���Ｍ��-0678 <a href="javascript:;" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7808700034', 'bizCommPop', 'width=750, height=700;');return false;" title="������ȸ"><img src="https://img.megagong.net/gong/common/btn_footer_info.gif" alt="������ȸ"></a></li> <br>
			<li class="bar">�Ű����� : ����Ư���� ���ʱ�</li>
			<li class="bar">ȣ���������� : (��)����Ƽ</li>
            <li class="lastli">�н��������� : 1644-8806</li> <br>
            <% if hcode = "gong" Or hcode = "sobang" Or hcode = "ngbr" Then %>
            <li class="copyrt">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</li>
            <% End if %>
		</ul>
        <div class="cooperation">

            <a class="logo_isms" href="javascript:;">������ȣ ����ü��(ISMS)</a>
            <!-- 2022-02-11 �߰� -->
            <div class="lgUPlus_area">
                <img src="https://img1s.mbest.co.kr/Pub_common/logo_lg_140414.gif" title="lg u+">
                <p>�����ŷ��� ���� �������� ���� ��<br>
                �ް����͵𿡼� ������ ���ž������񽺸� <br>
                �̿��Ͻ� �� �ֽ��ϴ�.</p>
                <a class="confirm" href="javascript:;" onclick="window.open('https://pgweb.tosspayments.com/ms/escrow/s_escrowYn.do?mertid=Gongcampus_00', 'pop_escrow', 'width=500, height=550, top=50, left=100');return false;" class="fnt_b">���Ի�� Ȯ�� &gt;</a>
            </div>
            <!-- //2022-02-11 �߰� -->
        </div>
        <% end if %>
        <% if hcode = "ngbr"  Then %>
        <ul>
			<li class="bar"><address>06643 ���� ���ʱ� ȿ�ɷ� 321 (���ʵ�, ��������) �ް����͵���(��) ��ǥ�̻� �ռ���</address></li>
			<li  class="bar">����������ȣå���� ����� keeper@megagong.net</li>
			<!-- <li>�ް����͵��� ������������ü�</li> -->
            <li class="lastli">�ް����͵��� ������������ü�(�� ��-589ȣ)</li> <br>
            <li class="flt_no bar">����ڵ�Ϲ�ȣ : 780-87-00034</li>
			<li class="bar">����Ǹž��Ű��ȣ : 2015-���Ｍ��-0678 <a href="javascript:;" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=7808700034', 'bizCommPop', 'width=750, height=700;');return false;" title="������ȸ"><img src="https://img.megagong.net/gong/common/btn_footer_info.gif" alt="������ȸ"></a></li>
			<li class="bar">�Ű����� : ����Ư���� ���ʱ�</li>
			<li class="lastli">ȣ���������� : (��)����Ƽ</li> <br>
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
    <!-- �ҹ� Ǫ�� �ϴ� -->
    <div class="ft_wrp sobang n1223 mt">
        <strong class="ac_tit">�ް��ҹ�Ű��п�</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 702ȣ �Ϻ�</address></li>
            <li>�п����� 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 706-85-01083</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3648ȣ</li>
            <li class="lastli">�������� : ���ΰ��</li>
		</ul>
    </div>
    <div class="ft_wrp sobang n1223 line2">
        <strong class="ac_tit ">����Ŭ���� <br/>�Ű�������</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 701ȣ �Ϻ�</address></li>
            <li>�п����� 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 706-85-01083</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3659ȣ</li>
            <li class="lastli">�������� : ������</li>
		</ul>
    </div>
    <div class="ft_wrp sobang n1223">
        <strong class="ac_tit">�ް��ҹ�2���п�</strong>
        <ul>
			<li><address>����Ư���� ���۱� ��¹��� 26�� 19-5, 2��, 4��</address></li>
            <li>�п����� 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 706-85-01083</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3686ȣ</li>
            <li class="lastli">�������� : ���ΰ��</li>
		</ul>
    </div>
    <div class="ft_wrp sobang n1223">
        <strong class="ac_tit">����Ŭ���� <br/>������</strong>
        <ul>
			<li><address>����Ư���� ���۱� ��¹��� 26�� 19-5, 1�� �� 3�� �Ϻ�</address></li>
            <li>�п����� 02-6964-8119</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 706-85-01083</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3706ȣ</li>
            <li class="lastli">�������� : ������</li>
		</ul>
    </div>
    <div class="ft_wrp copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // �ҹ� Ǫ�� �ϴ� -->
    <%End If%>

    <% if hcode = "ansung" Then %>
    <!-- ���� Ǫ�� �ϴ� -->
    <div class="ft_wrp police n1223 mt">
        <strong class="ac_tit">�ް� ������, ���� <br />������ �п�</strong>
		<ul>
			<li><address>��⵵ �ȼ��� ���׸� ���������� 38</address></li>
			<li>����ڵ�Ϲ�ȣ : 116-85-33201 </li>
            <li>��ǥ�� : ��â��</li>
            <li>���� : ����п�, ���͵�ī��</li>
            <li>�п� ���� : 031-676-9112</li>
            <li class="lastli">FAX : 031-676-3112</li>
            <li class="flt_no">�п���������ȣ : �� 819-8ȣ, �� 903ȣ </li>
            <li class="lastli">�������� : ������������п�(���ΰ��) </li>
		</ul>
    </div>
    <% if 1=2 then%>
    <!--
    <div class="ft_wrp police n1223">
        <strong class="ac_tit">�����ҹ�<br />������ �п�</strong>
		<ul>
			<li><address>��⵵ �ȼ��� ���׸� ���������� 38, A�� ���� 1�� �Ϻ�</address></li>
			<li>����ڵ�Ϲ�ȣ : 112-85-42241 </li>
            <li class="lastli">��ǥ�� : ��â��</li>
            <li class="flt_no">�п� ���� : 031-676-9112</li>
            <li>FAX : 031-676-3112</li>
            <li>�п���������ȣ : ��903ȣ</li>
            <li class="lastli">�������� : ������������п�(���ΰ��)</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223">
        <strong class="ac_tit">�ް� ������<br />���͵�ī��</strong>
		<ul>
			<li><address>��⵵ �ȼ��� ���׸� ���������� 38, A�� 1�� �Ϻ�, 3~4��, C�� 1�� �Ϻ�</address></li>
			<li>����ڵ�Ϲ�ȣ : 611-85-07440</li>
            <li class="lastli">��ǥ�� : ��â��</li>
            <li class="flt_no">�п� ���� : 031-676-9112</li>
            <li class="lastli">FAX : 031-676-3112</li>
		</ul>
	</div>
    -->
    <% End if %>

    <div class="ft_wrp police copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // ���� Ǫ�� �ϴ� -->
    <% End if %>

    <% if hcode = "gongssel" Then %>
    <!-- ���� Ǫ�� �ϴ� -->
    <div class="ft_wrp police n1223 mt">
        <strong class="ac_tit">�ް�������1���п�</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 3���Ϻ�</address></li>
            <li class="lastli">�п����� 02-3280-1010</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 503-85-33496</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3741ȣ</li>
            <li class="lastli">�������� : ���ΰ��</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223">
        <strong class="ac_tit">�ް�������2���п�</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 3���Ϻ�, 4���Ϻ�</address></li>
            <li class="lastli">�п����� 02-3280-1010</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 503-85-33496</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3721ȣ</li>
            <li class="lastli">�������� : ���ΰ��</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223 line2">
        <strong class="ac_tit row_te">�ް����������ĸ�Ÿ <br />�����Ҷ� <br/>�뷮��1��������</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 402ȣ �Ϻ�</address></li>
            <li class="lastli">�п����� 02-3280-1010</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 503-85-33496</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3758ȣ</li>
            <li class="lastli">�������� : ������</li>
		</ul>
    </div>
    <div class="ft_wrp police n1223 line2">
        <strong class="ac_tit row_te">�ް����������ĸ�Ÿ <br />�����Ҷ� <br />�뷮��2��������</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 402ȣ �Ϻ�</address></li>
            <li class="lastli">�п����� 02-3280-1010</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 503-85-33496</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3726ȣ</li>
            <li class="lastli">�������� : ������</li>
		</ul>
    </div>
    <!-- <div class="ft_wrp police n1223">
        <strong class="ac_tit">�ް��������п�</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 3���Ϻ�</address></li>
            <li>�п����� 02-2162-5671</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 706-85-01083</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3720ȣ</li>
            <li class="lastli">�������� : ���ΰ��</li>
        </ul>
    </div> -->
    <div class="ft_wrp police copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // ���� Ǫ�� �ϴ� -->
    <% End if %>

    <% if hcode = "armycampus" Then %>
    <!-- �ް��������п� Ǫ�� �ϴ� -->
    <div class="ft_wrp police n1223 mt">
        <strong class="ac_tit">�ް��������п�</strong>
        <ul>
			<li><address>����Ư���� ���۱� �뷮���� 140, 701ȣ �Ϻ�, 702ȣ �Ϻ�</address></li>
            <li>�п����� 02-2162-5671</li>
            <li class="lastli">fax 02-822-8119</li>
            <li class="flt_no">����ڵ�Ϲ�ȣ : 706-85-01083</li>
            <li>��ǥ�� : ������</li>
            <li>�п���������ȣ : ��3809ȣ</li>
            <li class="lastli">�������� : ���ΰ��</li>
		</ul>
    </div>
    <div class="ft_wrp police copy">
        <p class="copyrt_first">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</p>
    </div>
    <!-- // �ް��������п� Ǫ�� �ϴ� -->
    <% End if %>


</footer>
<% End if %>

<% if hcode = "ngbr" and 1=12345 Then %>
<!-- �����Ҷ� footer -->
<footer id="footer" class="ngbr">

    <div class="ft_wrp ngbr">
        <strong class="ac_tit">�ް����͵��� �ֽ�ȸ�� (����ڵ�Ϲ�ȣ : 780-87-00034)</strong>
        <ul>
            <li>
                <address>�ּ� : 06643 ���� ���ʱ� ȿ�ɷ� 321 (���ʵ�, ��������) �ް����͵���(��) ��ǥ�̻� �ռ���</address>
            </li>
            <li>��ǥ��ȣ(�н���������) : 1644-8806</li>
            <li class="copyrt">Copyright &copy; megastudyEdu.co.,Ltd. All rights reserved.</li>
        </ul>
    </div>
</footer>
<!-- // �����Ҷ� footer -->
<% End if %>

<script type="text/javascript">

$(document).ready(function() {
    /* ---�ް����͵� �׷� �Ұ� --- */
    $('.group_view .view_btn').click(function(){
        /* --- Ŭ���� on ���--- */
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
    <% 'logger���� %>
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
    <% 'logger���� %>
<% end if%>


<% if 1=2 then '�վ��̺�Ʈ�ÿ��� ���� %>
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
        <a href="#_blank" onclick="setCookie('set_view', 'P', 1000); document.location.reload();" style="">PC ���� ���� &gt;</a>
    <% End if %>
    <% if set_view = "P" Then %>
        <a href="#_blank" onclick="setCookie('set_view', 'R', 1000); document.location.reload();" style="">������ ���� ���� &gt;</a>
    <% End if %>
</div>
<%	End If %>
<%
    End if '����Ʈ���� ���� : N
%>


