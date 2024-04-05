<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<% '공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '공통 인클루드 페이지 종료 %>
<%
mode = fncrequest("mode") 
ccd = fncrequest("ccd") 
max = fncrequest("max") 
mcd = fncrequest("mcd") 
area_no = fncrequest("area_no") 

' OT 영상 확인
ori_ky = ""
strSql = "SELECT CM_ORI_SPL FROM MS_CHR_MAS WITH(NOLOCK) WHERE CM_CHR_CD = "& ccd
Set Rs = DBexec(strSql, "study")
If Not Rs.Eof Then
    ori_ky = Rs(0) '  OT
End if
RSClose(Rs)

' 맛보기 강의
mnm = ""
ar_mov = null
strSql = ""
strSql = strSql & "SELECT "
if mode = "window" and max <> "" then 
    strSql = strSql & " TOP " & max & " " 
end if 
strSql = strSql & "	RNO = ROW_NUMBER() OVER (ORDER BY SL_TOP_FLG DESC, LM_LEC_SEQ), SL_LEC_CD, SL_SPL_NM, LM_CONTENT_KEY = ISNULL(LM_CONTENT_KEY,''), SL_SPL_STM, LM_LEC_SEQ "
strSql = strSql & ", LM_LEC_NM "
strSql = strSql & ", LM_ATC_FILE1 = ISNULL(LM_ATC_FILE1, '') "
strSql = strSql & ", LM_ATC_FILE2 = ISNULL(LM_ATC_FILE2, '') "
strSql = strSql & ", LM_ATC_FILE3 = ISNULL(LM_ATC_FILE3, '') "
strSql = strSql & ", LM_ATC_FILE4 = ISNULL(LM_ATC_FILE4, '') "
strSql = strSql & ", LM_ATC_FILE1_NAME = ISNULL(LM_ATC_FILE1_NAME, '') "
strSql = strSql & ", LM_ATC_FILE2_NAME = ISNULL(LM_ATC_FILE2_NAME, '') "
strSql = strSql & ", LM_ATC_FILE3_NAME = ISNULL(LM_ATC_FILE3_NAME, '') "
strSql = strSql & ", LM_ATC_FILE4_NAME = ISNULL(LM_ATC_FILE4_NAME, '') "
strSql = strSql & ", CM_ORI_SPL "
strSql = strSql & "FROM MD_SPL_LIST WITH(NOLOCK) "
strSql = strSql & "JOIN MS_CHR_MAS WITH(NOLOCK) ON SL_CHR_CD = CM_CHR_CD "
strSql = strSql & "JOIN MS_LEC_MAS WITH(NOLOCK) ON SL_CHR_CD = LM_CHR_CD AND SL_LEC_CD = LM_LEC_CD "
strSql = strSql & "WHERE SL_CHR_CD = " & ccd & " "
strSql = strSql & "AND      LM_CONTENT_KEY <> CM_ORI_SPL "
Set Rs = DBexec(strSql, "study")
If Not Rs.Eof Then
    ar_mov = Rs.GetRows()

    'ori_ky = ar_mov(15, 0) '  OT

    if mcd = "" then 
        ' 첫번째 맛보기 강의
        mcd = ar_mov(1, 0)
        mnm = ar_mov(6, 0)
    else
        For i = 0 To Ubound(ar_mov, 2)
            if cstr(mcd) = cstr(ar_mov(1, i)) then
                mnm = ar_mov(6, i)
            end if 
        next    
    end if   
End if
RSClose(Rs)

%>
    <% if mode = "popup" then %>
    <a href="javascript:void(0);" onclick="fncLayerClose();" class="close_pocket">팝업 닫기</a>
    <% end if %>
    
    <%
        if isArray(ar_mov) Or ori_ky <> "" Then
    %>
    <% if isArray(ar_mov) And mode = "popup" then %>
    <p class="video_tit"><%=mnm%></p>
    <div class="video_wrap">
        <%
            evt_no = "" 
            vod_KBN = "55"
            playerKBN = "P"
            CHR_CD = ccd
            LEC_CD = mcd
            AutoPlay = "N"  '모바일 웹에서 자동실행 되지 않도록 처리 : 2022-07-27 장홍성  
        %>
        <!-- #include virtual="/Player/kollus/play/play_inc.asp"-->
    </div>
    <% End If %>
    
    <p class="prevw_tit">이 강좌의 <strong>맛보기</strong> <span class="tiny">* 핵심 강의 전체를 미리 확인하실 수 있습니다.</span></p>
    <ol class="prevw_list">
    <% if mode = "window" and ori_ky <> "" then %>
        <li>
            <strong class="lc_tit">OT</strong>
                <a href="javascript:void(0);" onclick="GongcampusFreePlay(40, <%=ccd %>, '', '');" class="lc_go" title="플레이어 창 재생">플레이어 재생</a>
            <span class="btn">
            </span>
        </li>
    <% end if %>
    <%
        If isArray(ar_mov) Then
            For m = 0 To Ubound(ar_mov, 2)
                m_rno = ar_mov(0, m)
                m_lcd = ar_mov(1, m)
                m_tit = ar_mov(2, m) ' 첨부파일 노출 및 다운로드 가능 여부
                m_mky = ar_mov(3, m)
                m_stm = ar_mov(4, m)
                m_seq = ar_mov(5, m)
                m_lnm = ar_mov(6, m)
                m_fl1 = ar_mov(7, m)
                m_fl2 = ar_mov(8, m)
                m_fl3 = ar_mov(9, m)
                m_fl4 = ar_mov(10, m)
                m_fn1 = ar_mov(11, m)
                m_fn2 = ar_mov(12, m)
                m_fn3 = ar_mov(13, m)
                m_fn4 = ar_mov(14, m)
        %>    
        <li>
            <strong class="lc_tit"><%=m_lnm%></strong>
            <% if mode = "popup" then %>
                <a href="javascript:void(0);" onclick="GongcampusFreePlay(55, <%=ccd %>, <%=m_lcd %>, <%=m_stm %>);" class="lc_go for_pc" title="플레이어 창 재생">플레이어 재생</a>
                <a href="javascript:void(0);" onclick="fucPrevwLayer('<%=area_no %>', '<%=ccd %>', <%=m_lcd %>);" class="lc_go for_mo" title="플레이어 창 재생">플레이어 재생</a>
            <% else %>
                <a href="javascript:void(0);" onclick="GongcampusFreePlay(55, <%=ccd %>, <%=m_lcd %>, <%=m_stm %>);" class="lc_go" title="플레이어 창 재생">플레이어 재생</a>
            <% end if %>
            <span class="btn">
            <% if m_tit = "1" then %>
                <% if m_fl1 <> "" then %>
                <a href="javascript:void(0);" title="다운로드" onclick="fncMegaDownload('/mas/lec/<%=m_fl1 %>', '<%=m_fn1%>');">다운로드</a>
                <% end if %>
                <% if m_fl2 <> "" then %>
                <a href="javascript:void(0);" title="다운로드" onclick="fncMegaDownload('/mas/lec/<%=m_fl2 %>', '<%=m_fn2%>');">다운로드</a>
                <% end if %>
                <% if m_fl3 <> "" then %>
                <a href="javascript:void(0);" title="다운로드" onclick="fncMegaDownload('/mas/lec/<%=m_fl3 %>', '<%=m_fn3%>');">다운로드</a>
                <% end if %>
                <% if m_fl4 <> "" then %>
                <a href="javascript:void(0);" title="다운로드" onclick="fncMegaDownload('/mas/lec/<%=m_fl4 %>', '<%=m_fn4%>');">다운로드</a>
                <% end if %>
            </span>
        <% end if %>    
        </li>
		<%
            Next
        End If        
        %>        
    </ol>
    <% End If %>

<script>
function fucPrevwLayerReload(){
    fncLayerClose();
    $("#list1_<%=ccd %>").children(".pocket_pop.prevw").load("/common/chr/preview_ax.asp?mode=popup&ccd=<%=ccd %>");
    $("#list1_<%=ccd %>").children(".pocket_pop.prevw").show();   
}
</script>