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
<%
	IMG = img_player+"/player_2016"
	
	
	
	
%>
		<!-- �ǽð� ����� -->
		<div class="commentary entinfo" >
			<div class="table__top">
				<div class="leftArea" id="Div_Subject_Info">
					<select name="" id="">
						<option value="">��ȸŽ��</option>
					</select>
					<select name="" id="">
						<option value="">�����ͻ��</option>
					</select>
				</div>
				<div class="t_rightArea">
					<a href="JavaScript:;" class="btn" onclick="fncChange_Subject();">���ΰ�ħ</a>
				</div>
			</div>

			<div class="entinfo--list" id="Div_RankCut_List">
				<!--table class="table__common">
				<thead>
				<tr>
					<th><span>���</span></th>
					<th><span>ǥ������</span></th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>27.8 (-)</td>
					<td>13.07 (-)</td>
				</tr>
				</tbody>
				</table>

				<table class="table__common">
				<colgroup>
					<col width="68">
				</colgroup>
				<thead>
				<tr>
					<th><span>���</span></th>
					<th><span>������</span></th>
					<th><span>ǥ������</span></th>
					<th><span>�����</span></th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<th>����</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>1</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>2</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>3</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>4</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>5</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>6</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>7</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				<tr>
					<th>8</th>
					<td>27.8 (-)</td>
					<td>67</td>
					<td>99</td>
				</tr>
				</tbody>
				</table-->
			</div>
		</div>
		
		
<script language="javascript">
<!--
    function fncChange_Dom() {
        var dom_cd = jQuery("#dom_cd").val();

        if (dom_cd == "") {
            alert("������ ������ �ּ���.");
            return false;
        }

        jQuery.post("/Player/kollus/tab/tab_rankcut_subject_info_ax.asp",
            {
                "seq": "<%=seq%>",
                "dom_cd": dom_cd
            },
            function(data) {
                jQuery("#Div_Subject_Info").html(data);
                if (dom_cd == "1" || dom_cd == "3" || dom_cd == "4") {
                    jQuery("#Div_RankCut_List").load("/Player/kollus/tab/tab_rankcut_List_info_ax.asp?seq=<%=seq%>&dom_cd=" + dom_cd);
                }
            }
        ); 
    }

    function fncChange_Subject() {
        var dom_cd = jQuery("#dom_cd").val();
        var sub_cd = jQuery("#sub_cd").val();

        if (dom_cd == "") {
            alert("������ ������ �ּ���.");
            return false;
        }

        if (dom_cd != "1" && dom_cd != "3" && dom_cd !== "4") {
            if (sub_cd == "") {
                alert("������ ������ �ּ���.");
                return false;
            }
        }

        jQuery("#Div_Subject_Info").load("/Player/kollus/tab/tab_rankcut_subject_info_ax.asp?seq=<%=seq%>&dom_cd=" + dom_cd + "&sub_cd=" + sub_cd);
        jQuery("#Div_RankCut_List").load("/Player/kollus/tab/tab_rankcut_List_info_ax.asp?seq=<%=seq%>&dom_cd=" + dom_cd + "&sub_cd=" + sub_cd);
    }

    jQuery(document).ready(function() {
        jQuery("#Div_Subject_Info").load("/Player/kollus/tab/tab_rankcut_subject_info_ax.asp?seq=<%=seq%>&dom_cd=1");
        jQuery("#Div_RankCut_List").load("/Player/kollus/tab/tab_rankcut_List_info_ax.asp?seq=<%=seq%>&dom_cd=1");
    });

//-->
</script>