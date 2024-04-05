<%
    '이부분은상단에있는지확인후처리해주세요////////////////////////////////////////
    uId         = LCase(fncRequestCookie("userid"))     '회원아이디취득
    mem_type    = LCase(fncRequestCookie("mem_type"))     '회원타입

    MegaAdminChk = fncCheckAdmin()

    if PlayerKbn = "" Then PlayerKbn = "F"
    if DNG_KBN = "" Then DNG_KBN = "23"
    if P_WIDTH = "" then P_WIDTH = "435" '영상가로크기(고화질 구동시에는 비율 조정필요(1.7:1))
    if P_HEIGHT = "" then P_HEIGHT = "300" '영상세로크기

    pcd = "player" & DNG_KBN
    if DNG_NO <> "" Then pcd = pcd & DNG_NO
    if CHR_CD <> "" Then pcd = pcd & CHR_CD
    if LEC_CD <> "" Then pcd = pcd & LEC_CD

    if DNG_IDX = "" Then
        DNG_IDX = idx
    End if

    ppr = ""
    ppr = ppr & "pcd=" & pcd
    ppr = ppr & "&PlayerKbn=" & PlayerKbn
    ppr = ppr & "&PlayerApp=" & PlayerApp
    ppr = ppr & "&DNG_KBN=" & DNG_KBN
    ppr = ppr & "&DNG_NO=" & DNG_NO
    ppr = ppr & "&DNG_IDX=" & DNG_IDX
    ppr = ppr & "&SEQ=" & SEQ
    ppr = ppr & "&intStartSec=" & intStartSec
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

    ppr = ppr & "&PlayerLoc=P"
    ppr = ppr & "&StrongMode=" & StrongMode
    ppr = ppr & "&intStrongCnt=" & intStrongCnt

    ppr = ppr & "&HDPlus=" & HDPlus
    ppr = ppr & "&htmlPlay=" & htmlPlay

    '모바일체크........................................................
    strMobileType = fncMobileType()
%>
<% If strMobileType = "PC" Then 'video_hd %>
    <style type="text/css">
        .pframe{border:none;}
    </style>
    <iframe class="pframe" id="<%=pcd %>" src="/Player/anp/player.asp?<%=ppr %>" frameborder="0" bordercolor="" marginwidth="0" marginheight="0" scrolling="no" width="<%=P_WIDTH %>" allowfullscreen ></iframe>
<% Else %>
    <div class="player_mobile">
        <% if PlayerKbn = "I" Or PlayerKbn = "C" Then %>
            <% if DNG_KBN = "10" Or DNG_KBN = "20" Then %>
                <a href="#_blank" onclick="player_index(20,'<%=DNG_IDX %>&PagePlay=Y');" >
            <% Else %>
                <a href="#_blank" onclick="player_index(23,'<%=DNG_IDX %>&PagePlay=Y');" >
            <% End if %>
        <% Else %>
            <% if DNG_KBN = "10" Or DNG_KBN = "20" Then %>
                <a href="#_blank" onclick="player_free(20,'<%=CHR_CD %>&PagePlay=Y');" >
            <% Else %>
                <a href="#_blank" onclick="player_free(23,'&NO=<%=DNG_NO %>&PagePlay=Y');" >
            <% End if %>
        <% End if %>
        <img src="<%=IMG_URL %>" /></a>
    </div>
<% End if %>
<%IF DNG_NO <>"22855" AND DNG_NO <>"22856"   AND DNG_NO <>"22857"  AND DNG_NO <>"22854" And DNG_NO <> "" THEN %>
    <% If strMobileType = "PC" Then %>
        <% If MegaAdminChk = True Then %>
            <div id="divCntView" style="width:100%;"><!-- #include virtual = "/common/inc/EventDng_PlayView.asp" --></div>
        <% End If %>
    <% end if %>
<% end if %>
<script type="text/javascript">
    jQuery(document).ready(function () {
        var mtype = "<%=strMobileType %>";
        if(mtype == "PC"){
        } else {
            try{
                //              jQuery(".btn_wrap").css("display", "none");
                for (i=0; i<5; i++) {
                    if (jQuery(".btn_wrap img").eq(i).attr("alt") == "일반" || jQuery(".btn_wrap img").eq(i).attr("alt") == "고화질" || jQuery(".btn_wrap img").eq(i).attr("alt") == "PMP 다운로드" || jQuery(".btn_wrap img").eq(i).attr("alt") == "PC 다운로드") {
                        jQuery(".btn_wrap img").eq(i).css("display", "none");
                    }
                }
            } catch (e) {}
        }
    });
//-->
</script>

