<%
	playPara = fncParamAdd(playPara,"TEC_CD",TEC_CD)
	playPara = fncParamAdd(playPara,"CHR_CD",CHR_CD)
	if PlayerKbn = "H" Then
		playPara = fncParamAdd(playPara,"SUB_COD",SUB_COD)
		playPara = fncParamAdd(playPara,"FILE_NM",FILE_NM)
	End if
%>
<div id="divTabMenu" style="margin-top:30px; background-color:#45454d;" >
	<div class="rightArea<% if PlayerKbn = "H" Then  %> rightArea2<% End if %>">

		<% if PlayerKbn = "A" then '유료플레이어 %>
			<%
				'인덱스존재여부
				IndexCnt = 0
				'strSql = " select COUNT(LI_LEC_INDEX) from ms_lec_index with(nolock) join ms_lec_mas with(nolock) on lm_lec_cd = li_lec_cd where LI_LEC_CD='"& LEC_CD &"' "
				'Call RSExec(RS,0,1,strSql,"study")
				'if not rs.eof then
				'	IndexCnt = RS(0)
				'end if
				'RSclose(RS)
			%>
			<!--div class="tab__common tab__1ea"--> <!-- 1개일 경우 -->
			<!--div class="tab__common tab__2ea"--> <!-- 2개일 경우 -->
			<!--div class="tab__common tab__3ea"--> <!-- 3개일 경우 -->
			<div class="tab__common tab_1ea>"> <!-- 4개일 경우 -->
				<div class="tab__inner">
					<a style="width:100%; background-color:#0c998d;" href="#_blank" acd="stdinfo" >수강정보</a>
				</div>
			</div>
        <% Else %>
			<div class="tab__common tab_1ea>"> <!-- 4개일 경우 -->
				<div class="tab__inner">
					<a style="width:100%; background-color:#0c998d;" href="#_blank" acd="preview" >강좌정보</a>
				</div>
			</div>
		<% End if %>

		<div id="divTabContent" class="list--container "></div>

	</div>
</div>
<script type="text/javascript">
    var pno = "<%=PlayerTabNo - 1 %>";

    function fncRightTopTab(n) {
		var ax = $(".tab__inner a").eq(n).attr("acd");
		if (ax != "") {
			$(".tab__inner a").removeClass("on");
			$(".tab__inner a").eq(n).addClass("on");
			$("#divTabContent").load("/Player/kollus/tab/tab_" + ax + "_ax.asp?<%=playPara %>");
		}
	}

	var dnm = "<%=DOM_NM %>";
	var snm = "<%=SUB_NM %>";
	var rng = "<%=RANGE %>";

	function fncIpsiTop(dnm, snm, rng) {
	    $("#divIpsiSlt").load("/Player/kollus/tab/tab_ipsitop_ax.asp?<%=playPara %>", {
			"DOM_NM": escape(dnm),
			"SUB_NM": escape(snm),
			"RANGE": escape(rng)
		});
	}

	function fncIpsiPlay(idx) {
	    location.href = "/Player/kollus/player.asp?seq=<%=seq %>&stm=&idx=" + idx + "&dng_num=1&dng_free_flg=N&PlayerKbn=<%=PlayerKbn %>&PlayerApp=<%=PlayerApp %>&UseWidth=<%=UseWidth %>&UseHeight=<%=UseHeight %>&PlayerLoc=<%=PlayerLoc %>";
	}

	$(document).ready(function () {
		$(".tab__inner a").bind({
			click: function () { fncRightTopTab($(".tab__inner a").index(this)); }
		});

		if (pk == "H") {
			fncIpsiTop(dnm, snm, rng);
		}
		
		fncRightTopTab(pno);
	});
</script>
