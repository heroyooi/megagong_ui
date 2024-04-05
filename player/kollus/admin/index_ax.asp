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
		<col />
        <col width="40px" />
	</colgroup>
	<thead>
	<tr>
		<th>번호</th>
		<th>시작시간</th>
		<th>내용</th>
        <th>삭제</th>
	</tr>
	</thead>
	<tbody>
<%
    LS_LEC_SCRIPT = ""

	'자막 정보 가져오기 
	strSql = "SELECT LI_LEC_INDEX FROM MS_LEC_INDEX with(nolock) WHERE LI_LEC_CD='"& LEC_CD &"' "
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
            if Cint(arrPreTime(0)) > Cint(arrNextTime(0)) then
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

    if IsArray(arrScript) then
        for i = 0 to ubound(arrScript,1) - 1
            arrScriptDtl = split(arrScript(i),",")
%>
            <tr onMouseOver="this.style.backgroundColor=&quot;#F4FAFF&quot;" onMouseOut="this.style.backgroundColor=&quot;#ffffff&quot;">
                <td><%=i + 1 %></td>
                <td><%=fncTimeView(arrScriptDtl(0)) %></td>
                <td style="text-align:left; word-break:break-all; cursor:pointer;" onclick="fncTabIndexPreView(<%=arrScriptDtl(0) %>)" ><%=Replace(arrScriptDtl(1),"\r\n","<br>") %></td>
                <td>
                    <a href="#_blank" onclick="fncIndexUpdMode(<%=i %>,<%=arrScriptDtl(0) %>,'<%=arrScriptDtl(1) %>')" style="text-decoration:none; color:Blue;" >수정</a>
                    <p style="height:4px;"></p>
                    <a href="#_blank" onclick="fncDelMode('index', <%=i %>)" style="text-decoration:none; color:Red;">삭제</a>
                </td>
            </tr>
<%
        Next
    end if
%>
	</tbody>
	</table>
    </div>
</div>
<script type="text/javascript">
<!--
    function fncIndexUpdMode(ArrNo, stt_time, TextContent) {

        document.getElementById("ArrNo").value = ArrNo;

        var stt_hms = stt_time.convertMSFromSec();

        var stt_h = parseInt(stt_hms.substring(0, 2));
        var stt_m = parseInt(stt_hms.substring(3, 5));
        var stt_s = parseInt(stt_hms.substring(6, 8));

        document.getElementById("sSrcHour").value = stt_h;
        document.getElementById("sSrcMinute").value = stt_m;
        document.getElementById("sSrcSecond").value = stt_s;

        document.getElementById("TextContent").value = TextContent;

        document.getElementById("spanInsBtns").style.display = "none";
        document.getElementById("spanUpdBtns").style.display = "block";
    }

    function fncTabIndexPreView(stt_time) {
        Player.setSeek(stt_time);
    }


//-->
</script>