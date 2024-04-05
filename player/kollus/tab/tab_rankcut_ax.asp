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
<%
	IMG = img_player+"/player_2016"
	
	
	
	
%>
		<!-- 실시간 등급컷 -->
		<div class="commentary entinfo" >
			<div class="table__top">
				<div class="leftArea" id="Div_Subject_Info">
					<select name="" id="">
						<option value="">사회탐구</option>
					</select>
					<select name="" id="">
						<option value="">윤리와사상</option>
					</select>
				</div>
				<div class="t_rightArea">
					<a href="JavaScript:;" class="btn" onclick="fncChange_Subject();">새로고침</a>
				</div>
			</div>

			<div class="entinfo--list" id="Div_RankCut_List">
				<!--table class="table__common">
				<thead>
				<tr>
					<th><span>평균</span></th>
					<th><span>표준편차</span></th>
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
					<th><span>등급</span></th>
					<th><span>원점수</span></th>
					<th><span>표준점수</span></th>
					<th><span>백분위</span></th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<th>만점</th>
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
            alert("영역을 선택해 주세요.");
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
            alert("영역을 선택해 주세요.");
            return false;
        }

        if (dom_cd != "1" && dom_cd != "3" && dom_cd !== "4") {
            if (sub_cd == "") {
                alert("과목을 선택해 주세요.");
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