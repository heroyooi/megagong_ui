<%
'     '이부분은상단에있는지확인후처리해주세요////////////////////////////////////////
    ' uId         = LCase(fncRequestCookie("userid"))     '회원아이디취득
    ' mem_type    = LCase(fncRequestCookie("mem_type"))     '회원타입

'     MegaAdminChk = fncCheckAdmin()

    if PlayerKbn = "" Then PlayerKbn = "F"
    if PlayerApp = "" Then PlayerApp = "N"
    if DNG_KBN = "" Then DNG_KBN = ""
    if P_WIDTH = "" then P_WIDTH = "800" '영상가로크기(고화질 구동시에는 비율 조정필요(1.7:1))
    if P_HEIGHT = "" then P_HEIGHT = "450" '영상세로크기
    PlayerLoc = "P"

    p_val = PlayerKbn & PlayerApp & "P"
    if DNG_NO <> "" Then p_val = p_val & DNG_NO
    if CHR_CD <> "" Then p_val = p_val & CHR_CD
    if LEC_CD <> "" Then p_val = p_val & LEC_CD
    if DNG_IDX <> "" Then p_val = p_val & DNG_IDX


    pcd = "play_" & p_val
    acd = "area_" & p_val


    if DNG_IDX = "" Then
        DNG_IDX = idx
    End if

    ppr = ""
    ppr = ppr & "p_area=" & p_area
    ppr = ppr & "PlayerKbn=" & PlayerKbn
    ppr = ppr & "&PlayerApp=" & PlayerApp
    ppr = ppr & "&DNG_KBN=" & DNG_KBN
    ppr = ppr & "&DNG_NO=" & DNG_NO
    ppr = ppr & "&DNG_IDX=" & DNG_IDX
    ppr = ppr & "&SEQ=" & SEQ
    ppr = ppr & "&STM=" & STM
    ppr = ppr & "&ST_FILENAME=" & ST_FILENAME

    ppr = ppr & "&TEC_CD=" & TEC_CD
    ppr = ppr & "&TEC_NM=" & TEC_NM
    ppr = ppr & "&CHR_CD=" & CHR_CD
    ppr = ppr & "&LEC_CD=" & LEC_CD
    ppr = ppr & "&APP_NO=" & APP_NO
    ppr = ppr & "&CHR_NM=" & Escape(CHR_NM)

    ppr = ppr & "&AutoPlay=" & AutoPlay
    ppr = ppr & "&IMG_URL=" & IMG_URL

    ppr = ppr & "&P_WIDTH=" & P_WIDTH
    ppr = ppr & "&P_HEIGHT=" & P_HEIGHT

    ppr = ppr & "&UseWidth=" & UseWidth
    ppr = ppr & "&UseHeight=" & UseHeight

    ppr = ppr & "&PlayerTabCtrl=" & PlayerTabCtrl

    ppr = ppr & "&PlayerLoc=" & PlayerLoc
    ppr = ppr & "&StrongMode=" & StrongMode
    ppr = ppr & "&intStrongCnt=" & intStrongCnt
       

'     '모바일체크........................................................
'     strMobileType = fncMobileType()
' %>
<script type="text/javascript" src="<%=url_main%>/common/js/jquery/jquery-latest.js"></script>
<script type="text/javascript" src="<%=url_main%>/Common/js/megastudy.js"></script>
<div class="play_area" id="<%=acd %>" style="width:<%=P_WIDTH %>px; height:<%=P_HEIGHT %>px; cursor:pointer;" inm="<%=IMG_URL %>" onclick="fncPlayerPageAx('<%=acd %>', '<%=ppr %>');"><% if IMG_URL <> "" And AutoPlay <> "Y" Then %><img src="<%=IMG_URL %>" /><% End if %></div>
<% if IMG_URL = "" Then %>
<script type="text/javascript">
    fncPlayerPageAx('<%=acd %>', '<%=ppr %>');
</script>
<% End if %>