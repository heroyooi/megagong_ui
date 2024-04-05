<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"

UID    = fncRequestCookie("userid")
LEC_CD = fncRequest("LEC_CD")
%>
<div class="commentary">
    <div class="commentary--list">
	<table class="table__common table__commentary">
	<colgroup>
		<col width="30px" />
		<col width="50px" />
		<col width="50px" />
		<col />
        <col width="40px" />
	</colgroup>
	<thead>
	<tr>
		<th>번호</th>
		<th>시작시간</th>
		<th>종료시간</th>
		<th>내용</th>
        <th>삭제</th>
	</tr>
	</thead>
	<tbody>
<%
    LS_LEC_SCRIPT = ""

	'자막 정보 가져오기 
	strSql = "SELECT LS_LEC_SCRIPT FROM MS_LEC_SCRIPT with(nolock) WHERE LS_LEC_CD='"& LEC_CD &"' "
	SET RS = DBexec(strSql,"study")
	IF Not RS.EOF THEN
	    LEC_SCRIPT = trim(Rs(0))
	END IF

    arrScript  = split(LEC_SCRIPT,";")

    '순서대로 배열처리
    arrTempCnt = Ubound(arrScript,1) - 1
   
    For x = 0 To arrTempCnt - 1
        For y = (x+1) To arrTempCnt
            arrPreTime = split(arrScript(x),",")
            arrNextTime = split(arrScript(y),",")
            if clng(arrPreTime(1)) > clng(arrNextTime(1)) then
                TempRowData = arrScript(x)
                arrScript(x) = arrScript(y)
                arrScript(y) = TempRowData
            end if
        Next
    Next

    Function fncTimeView(time)
        h = Fix(time / 3600)
        m = Fix((time mod 3600) / 60)
        s = (time mod 3600) mod 60

        if m < 10 then m = "0" & m
        if s < 10 then s = "0" & s

        fncTimeView = h & ":" & m & ":" & s
    End Function

    trIdCnt = 0

    if IsArray(arrScript) then
        for i = 0 to ubound(arrScript,1) - 1
            trIdCnt = trIdCnt + 1
            arrScriptDtl = split(arrScript(i),",")
%>
            <tr id="tr<%=trIdCnt %>" style="background-color:White;" > 
                <td><%=i + 1 %></td>
                <td><%=fncTimeView(arrScriptDtl(1)) %></td>
                <td><%=fncTimeView(arrScriptDtl(2)) %></td>
                <td style="text-align:left; word-break:break-all; cursor:pointer;" onclick="fncTabSubtitlePreView('tr<%=trIdCnt %>',<%=arrScriptDtl(1) %>,<%=arrScriptDtl(2) %>,'<%=arrScriptDtl(3) %>','<%=arrScriptDtl(4) %>','<%=arrScriptDtl(5) %>','<%=arrScriptDtl(6) %>','<%=arrScriptDtl(7) %>','<%=arrScriptDtl(8) %>');" ><%=Replace(arrScriptDtl(3),"\r\n","<br>") %></td>
                <td>
                    <a href="#_blank" onclick="fncSubtitleUpdMode('tr<%=trIdCnt %>', <%=i %>,<%=arrScriptDtl(1) %>,<%=arrScriptDtl(2) %>,'<%=arrScriptDtl(3) %>','<%=arrScriptDtl(4) %>','<%=arrScriptDtl(5) %>','<%=arrScriptDtl(6) %>','<%=arrScriptDtl(7) %>','<%=arrScriptDtl(8) %>')" style="text-decoration:none; color:Blue;" >수정</a>
                    <p style="height:4px;"></p>
                    <a href="#_blank" onclick="fncDelMode('subtitle', <%=i %>)" style="text-decoration:none; color:Red;">삭제</a>
                </td>
            </tr>
<%
        Next
    end if
%>
	</tbody>
	</table>
    <p style="font-size:11px; margin-top:10px;">※ 내용 클릭시 선택 번호에 해당하는 설정값의 미리보기가 노출됩니다.<br />&nbsp;&nbsp;&nbsp;&nbsp;전체 설정은 강의보기에서 이용해주세요.</p>
    </div>
</div>
<script type="text/javascript">
<!--
    function fncFrontZero(val, len) {
        var MaxLen = len - val.length;
        for(z = 0; z < MaxLen; z++){val = "0" + val; }
        return val;
    }

    function fncSubtitleUpdMode(tr, ArrNo, stt_time, end_time, TextContent, TextColor, TextSize, TextFont, x, y) {

        fncRemoveTrColor();
        document.getElementById(tr).style.background = "#9BBDEC";

        document.getElementById("ArrNo").value = ArrNo;

        var stt_hms = stt_time.convertMSFromSec();

        var stt_h = parseInt(stt_hms.substring(0, 2));
        var stt_m = parseInt(stt_hms.substring(3, 5));
        var stt_s = parseInt(stt_hms.substring(6, 8));

        document.getElementById("sSrcHour").value = stt_h;
        document.getElementById("sSrcMinute").value = stt_m;
        document.getElementById("sSrcSecond").value = stt_s;

        var end_hms = end_time.convertMSFromSec();

        var end_h = parseInt(end_hms.substring(0, 2));
        var end_m = parseInt(end_hms.substring(3, 5));
        var end_s = parseInt(end_hms.substring(6, 8));

        document.getElementById("eSrcHour").value = end_h;
        document.getElementById("eSrcMinute").value = end_m;
        document.getElementById("eSrcSecond").value = end_s;

        document.getElementById("sTextFont").value = TextFont;
        document.getElementById("sTextSize").value = TextSize;
        document.getElementById("sTextColor").value = fncFrontZero(eval("(" + TextColor + ").toString(16)").toUpperCase().strreverse(),6);
        document.getElementById("TextContent").value = TextContent;

        document.getElementById("txtMovPointX").value = x;
        document.getElementById("txtMovPointY").value = y;

        document.getElementById("spanInsBtns").style.display = "none";
        document.getElementById("spanUpdBtns").style.display = "block";
    }

    function fncRemoveTrColor() {
        var TrCnt = <%=trIdCnt %>;

        for(i = 1; i <= TrCnt; i++){
            var Tr = "tr" + i;
            document.getElementById(Tr).style.background = "white";
        }
    }

    function fncTabSubtitlePreView(tr, stt_time, end_time, TextContent, TextColor, TextSize, TextFont, x, y) {

        stim = stt_time;
        etim = end_time;
        vTxt = TextContent;

        fncRemoveTrColor();
        document.getElementById(tr).style.background = "#9BBDEC";

        if (cPreviewChk == 0) {
            cPreviewChk = 1;
            setIntervalPreviewId = setInterval("fncSubTitleViewChk()", 500);
        }
        
        var TextColorRGB = hexToRgb(eval("(" + TextColor + ").toString(16)").toUpperCase().strreverse());
        
        AquaPlayer.SetCurrentPosition(stt_time * 1000);

        AquaPlayer.Set('SetFont_subtitle', TextFont, TextSize, TextColorRGB);
        AquaPlayer.Set('SetPrint_subtitle', TextContent, (end_time - stt_time), '');
        AquaPlayer.Set('SetPrint_xy', x, y, '');

    }
//-->
</script>