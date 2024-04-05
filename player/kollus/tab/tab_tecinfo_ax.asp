<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<%
	IMG = img_player+"/player_2016"
%>
<%
    strSql = ""
    strSql = strSql & "SELECT	TM_TEC_CD,TM_TEC_NM "
    strSql = strSql & "FROM     MS_TECHOME_MAS WITH(NOLOCK) "
    strSql = strSql & "JOIN     MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = THM_TEC_CD "
    strSql = strSql & "WHERE	THM_DEL_YN = 'N' "
    strSql = strSql & "AND		TM_ACT_YN = 'Y' "
    strSql = strSql & "AND		THM_TEC_CD IN ( "
    strSql = strSql & "     SELECT	TECCD = CM_TEC_CD "
    strSql = strSql & "     FROM	MS_CHR_MAS WITH(NOLOCK) "
    strSql = strSql & "     JOIN	MS_TEC_MAS WITH(NOLOCK) ON TM_TEC_CD = CM_TEC_CD "
    strSql = strSql & "     WHERE	CM_CHR_CD = " & CHR_CD & " "
    strSql = strSql & "     UNION ALL "
    strSql = strSql & "     SELECT	TECCD = T.TT_TEAM_CD "
    strSql = strSql & "     FROM	MS_CHR_MAS S WITH(NOLOCK) "
    strSql = strSql & "     JOIN	MS_TEC_TEAM T WITH(NOLOCK) ON T.TT_TEC_CD = S.CM_TEC_CD "
    strSql = strSql & "     WHERE	CM_CHR_CD = " & CHR_CD & " "
    strSql = strSql & "     UNION ALL "
    strSql = strSql & "     SELECT	TECCD = GT_TEC_CD "
    strSql = strSql & "     FROM	MS_CHR_MAS WITH(NOLOCK) "
    strSql = strSql & "     JOIN	MS_GRP_TECCHR WITH(NOLOCK) ON GT_GRP_CD = CM_TEC_CD "
    strSql = strSql & "     WHERE	GT_CHR_CD = " & CHR_CD & " "
    strSql = strSql & ") "
    strSql = strSql & "GROUP BY TM_TEC_CD,TM_TEC_NM "
    strSql = strSql & "ORDER BY TM_TEC_NM "
    Set RS = DBExec(strSql, "study")
    If Not RS.EOF Then
        arrTecList = Rs.GetRows()
    End If
    Call DBClose(RS)

    strTecList = ""
    if isArray(arrTecList) Then
        For i = 0 To Ubound(arrTecList,2)
            if i > 0 Then strTecList = strTecList & "','"
            strTecList = strTecList & arrTecList(0,i)
        Next
    Else
        strTecList = TEC_CD
    End if
    
    if strTecList <> "" Then
        strTecList = "'" & strTecList & "'"
    Else
        Response.End
    End if


    strSql = ""
    strSql = strSql & "SELECT	TOP 2  "
    strSql = strSql & "         TT.TT_NUM,  "
    strSql = strSql & "         TM.TT_CLS_NM,  "
    strSql = strSql & "         TT.TT_DOM_CD,  "
    strSql = strSql & "         TT.TT_TEC_CD,  "
    strSql = strSql & "         TT.TT_TEC_NM,  "
    strSql = strSql & "         TT.TT_IMG_KBN,  "
    strSql = strSql & "         TT.TT_IMG_PATH, "
    strSql = strSql & "         TT.TT_TITLE,  "
    strSql = strSql & "         OPENDT = CONVERT(CHAR(10),TT.TT_OPEN_DT,20),  "
    strSql = strSql & "         UNTIL_CNT = 0,  "
    strSql = strSql & "         TT.TT_ALL_MAIN_TXT,  "
    strSql = strSql & "         ISNULL(TT.TT_SUB_NM,'')  "
    strSql = strSql & "FROM     MS_TCC_TEC TT WITH(NOLOCK)  "
    strSql = strSql & "JOIN     MS_TCC_MAS TM WITH(NOLOCK) ON TT.TT_CLS = TM.TT_CLS  "
    strSql = strSql & "WHERE	TT.TT_OPEN_YN = 'Y'  "
    strSql = strSql & "AND		TT.TT_CLS NOT IN ('2','7','9') "
    strSql = strSql & "AND		TT_TEC_CD IN (" & strTecList & ") "
    strSql = strSql & "ORDER BY OPENDT DESC, TT.TT_NUM DESC "
    Set Rs = DBexec(strSql, "bbs")
    If NOT Rs.Eof Then
	    arrCastList = Rs.GetRows()
    End If
    RSClose(Rs)

    strSql = ""
    strSql = strSql & "SELECT	TOP 2  "
    strSql = strSql & "         TT.TT_NUM,  "
    strSql = strSql & "         TM.TT_CLS_NM,  "
    strSql = strSql & "         TT.TT_DOM_CD,  "
    strSql = strSql & "         TT.TT_TEC_CD,  "
    strSql = strSql & "         TT.TT_TEC_NM,  "
    strSql = strSql & "         TT.TT_IMG_KBN,  "
    strSql = strSql & "         TT.TT_IMG_PATH, "
    strSql = strSql & "         TT.TT_TITLE,  "
    strSql = strSql & "         OPENDT = CONVERT(CHAR(10),TT.TT_OPEN_DT,20),  "
    strSql = strSql & "         UNTIL_CNT = 0,  "
    strSql = strSql & "         TT.TT_ALL_MAIN_TXT,  "
    strSql = strSql & "         ISNULL(TT.TT_SUB_NM,''), "
    strSql = strSql & "         ISNULL(TT.TT_INFO,''), "
    strSql = strSql & "         ISNULL(TZ.TA_EVT_YN,''), "
    strSql = strSql & "         ISNULL(TZ.TA_EVT_MSG,''), "
    strSql = strSql & "         ISNULL(TZ.TA_URL,'') "
    strSql = strSql & "FROM     MS_TCC_TEC TT WITH(NOLOCK)  "
    strSql = strSql & "JOIN     MS_TCC_MAS TM WITH(NOLOCK) ON TT.TT_CLS = TM.TT_CLS  "
    strSql = strSql & "JOIN     MS_TCC_ALZ TZ WITH(NOLOCK) ON TZ.TA_NUM = TT.TT_NUM "
    strSql = strSql & "WHERE	TT.TT_OPEN_YN = 'Y'  "
    strSql = strSql & "AND		TT.TT_CLS IN ('2') "
    strSql = strSql & "AND		TT_TEC_CD IN (" & strTecList & ") "
    strSql = strSql & "AND		1=0 "       '노출되지 않도록 조치 20170504 김영무 (컨사실 차오진 요청)
    strSql = strSql & "ORDER BY OPENDT DESC, TT.TT_NUM DESC "
    
    Set Rs = DBexec(strSql, "bbs")
    If NOT Rs.Eof Then
	    arrHotList = Rs.GetRows()
    End If
    RSClose(Rs)

    strSql = ""
    strSql = strSql & "SELECT   CM_DOM_CD "
    strSql = strSql & "FROM     MS_CHR_MAS with(nolock)  "
    strSql = strSql & "WHERE	CM_CHR_CD = " & CHR_CD
	Set Rs = DBexec(strSql,"study")
	if Not Rs.Eof Then
		DOM_CD  = Trim(Rs(0))
	End If
	Call DBClose(RS)

    strSql = ""
    strSql = strSql & "SELECT	TOP 2 ORD,IDX,SEQ,DCD,CASE WHEN DCD IN ('7','8') AND TCD ='memgacih' THEN 'nonsulcih' ELSE TCD END TCD,TNM,TIT "
    strSql = strSql & "FROM	( "
    strSql = strSql & "	    SELECT  ORD = ( "
    strSql = strSql & "	    			CASE ISNULL(BD_DOM_CD,BM_DOM_CD) "
    strSql = strSql & "	    				WHEN '1' THEN 1 "
    strSql = strSql & "	    				WHEN '2' THEN 2 "
    strSql = strSql & "	    				WHEN '3' THEN 5 "
    strSql = strSql & "	    				WHEN '4' THEN 6 "
    strSql = strSql & "	    				WHEN '5' THEN 3 "
    strSql = strSql & "	    				WHEN '9' THEN 4 "
    strSql = strSql & "	    				ELSE 7 "
    strSql = strSql & "	    			END "
    strSql = strSql & "	    		), "
    strSql = strSql & "	    		IDX = BTG_IDX, "
    strSql = strSql & "	    		SEQ = BTG_SEQ, "
    strSql = strSql & "	    		DCD = ISNULL(BD_DOM_CD,BM_DOM_CD), "
    strSql = strSql & "	    		TCD = BM_TEC_CD, "
    strSql = strSql & "	    		TNM = BM_TEC_NM, "
    strSql = strSql & "	    		TIT = BTG_TITLE "
    strSql = strSql & "	    FROM    MS_BRD_TECGON A WITH(NOLOCK) "
    strSql = strSql & "	    JOIN	MS_BRD_MAS B WITH(NOLOCK) ON BM_BRD_CD = BTG_BRD_CD "
    strSql = strSql & "	    LEFT	JOIN MS_BRD_DOMGON C WITH(NOLOCK) ON BD_BTG_IDX = A.BTG_IDX "
    strSql = strSql & "	    WHERE	BTG_DEL_YN = 'N' "
    strSql = strSql & "	    AND		BTG_ALWASVIEW_YN = 'Y' "
    strSql = strSql & "	    AND		BM_ACT_YN = 'Y' "
    strSql = strSql & "     AND     BM_TEC_CD IN (" & strTecList & ") "
    strSql = strSql & "	    UNION ALL "
    strSql = strSql & "	    SELECT  ORD = ( "
    strSql = strSql & "	    			CASE BM_DOM_CD "
    strSql = strSql & "	    				WHEN '1' THEN 1 "
    strSql = strSql & "	    				WHEN '2' THEN 2 "
    strSql = strSql & "	    				WHEN '3' THEN 5 "
    strSql = strSql & "	    				WHEN '4' THEN 6 "
    strSql = strSql & "	    				WHEN '5' THEN 3 "
    strSql = strSql & "	    				WHEN '9' THEN 4 "
    strSql = strSql & "	    				ELSE 7 "
    strSql = strSql & "	    			END "
    strSql = strSql & "	    		), "
    strSql = strSql & "	    		IDX = BTG_IDX, "
    strSql = strSql & "	    		SEQ = BTG_SEQ, "
    strSql = strSql & "	    		DCD = BM_DOM_CD, "
    strSql = strSql & "	    		TCD = BM_TEC_CD, "
    strSql = strSql & "	    		TNM = BM_TEC_NM, "
    strSql = strSql & "	    		TIT = BTG_TITLE "
    strSql = strSql & "	    FROM    MS_BRD_TECGRP_GON A WITH(NOLOCK) "
    strSql = strSql & "	    JOIN	MS_BRD_MAS B WITH(NOLOCK) ON BM_TEC_CD = BTG_GRP_CD "
    strSql = strSql & "	    WHERE	BTG_DEL_YN = 'N' "
    strSql = strSql & "	    AND		BTG_ALWASVIEW_YN = 'Y' "
    strSql = strSql & "	    AND		BM_ACT_YN = 'Y' "
    strSql = strSql & "     AND     BM_TEC_CD IN (" & strTecList & ") "
    strSql = strSql & ") X "
    if DOM_CD <> "" Then
        strSql = strSql & "WHERE DCD = '" & DOM_CD & "' "
    End if
    strSql = strSql & "ORDER BY IDX DESC "
    Set Rs = DBexec(strSql, "bbs")
    If NOT Rs.Eof Then
	    arrNewInfo = Rs.GetRows()
    End If
    RSClose(Rs)
%>
<!-- 메가 캐스트, 메가 핫이슈, 선생님 새소식 -->
<div class="cast">
    <% if isArray(arrCastList) Then %>
	<div class="table__top">
		메가 캐스트
	</div>
    <ul class="cast--list">
        <%
                For i = 0 To Ubound(arrCastList,2)
                    ttNum   = arrCastList(0,i)
                    ClsNm   = arrCastList(1,i)
                    DomCd   = arrCastList(2,i)
                    TecCd   = arrCastList(3,i)
                    TecNm   = arrCastList(4,i)
                    ImgPath = arrCastList(6,i)
                    ConTxt  = arrCastList(7,i)
                    logConTxt = replace(ConTxt,"'","`")
                    logConTxt = replace(logConTxt,"""","`")
                    OpenDt  = arrCastList(8,i)
				    MainTxt	= arrCastList(10,i)
				    SubName	= arrCastList(11,i)
        %>
				    <li>
					    <a href="/teacher_v2/mega_tcc/main.asp?tt_num=<%=ttNum %>&tec_cd=<%=TecCd %>&domCd=A&SubMainType=A&mOne=cast&pTecCd=<%=TecCd %>&LeftMenuCd=8" target="_blank" >
						    <img class="cast--bg" src="<%=IMG%>/bg_openLecture.png" alt="">
						    <img class="cast--pic" src="<%=cdn_file_path%>/fileserver/teacher_2007/tcc/tcc_tec_pic/<%=ImgPath %>" alt="">
						    <div class="cast--txt"><span class="cast--subject">[<%=ClsNm %>]</span><%=ConTxt %><span class="cast--date"><%=OpenDt %></span></div>
					    </a>
				    </li>
        <%
                Next
        %>
	</ul>
    <% End if %>
    <% if isArray(arrHotList) Then %>
	<div class="table__top">
		메가쌤 핫이슈
	</div>
	<ul class="hotissue--list">
        <%
                For i = 0 To Ubound(arrHotList,2)
                    ttNum   = arrHotList(0,i)
                    ClsNm   = arrHotList(1,i)
                    DomCd   = arrHotList(2,i)
                    TecCd   = arrHotList(3,i)
                    TecNm   = arrHotList(4,i)
                    ImgPath = arrHotList(6,i)
                    ConTxt  = arrHotList(7,i)
                    logConTxt = replace(ConTxt,"'","`")
                    logConTxt = replace(logConTxt,"""","`")
                    OpenDt  = arrHotList(8,i)
				    MainTxt	= arrHotList(10,i)
				    SubName	= arrHotList(11,i)
                    InfoTxt = StripTags(arrHotList(12,i))

                    if Len(InfoTxt) > 100 Then
                        InfoTxt = Left(InfoTxt,80) & "..."
                    End if

                    EvtYN   = arrHotList(13,i)
                    EvtTxt  = Replace(StripTags(arrHotList(14,i)),"""","`")
                    EvtLnk  = arrHotList(15,i)

                    if TecCd <> "" Then
                        if inStr(EvtLnk,"tec_cd=" & TecCd) = 0 Then
                            if inStr(EvtLnk,"?") > 0 Then
                                EvtLnk = EvtLnk & "&tec_cd=" & TecCd
                            Else                                
                                EvtLnk = EvtLnk & "?tec_cd=" & TecCd                                
                            End if
                        End if
                    End if
        %>
				    <li>
					    <a href="<%=EvtLnk %>" target="_blank" >
						    <strong class="hostissue__title"><%=ConTxt %></strong>
						    <%=InfoTxt %><br>
						    <% if EvtYN = "Y" And EvtTxt <> "" Then %><strong><%=EvtTxt %></strong><% End if %>
					    </a>
				    </li>
        <%
                Next
        %>
	</ul>
    <% End if %>
    <% if isArray(arrNewInfo) Then %>
	<div class="table__top">
		선생님 새소식
	</div>
	<ul class="hotissue--list">
    <%
            For i = 0 To Ubound(arrNewInfo,2)
                ord = arrNewInfo(0,i)
                idx = arrNewInfo(1,i)
                seq = arrNewInfo(2,i)
                dcd = arrNewInfo(3,i)
                tcd = arrNewInfo(4,i)
                tnm = arrNewInfo(5,i)
                tit = Replace(StripTags(arrNewInfo(6,i)),"""","`")
    %>
				<li>
					<a href="/teacher_v2/notice/notice_list.asp?idx=<%=idx %>&tec_cd=<%=tcd %>" target="_blank"><%=tit %></a>
				</li>
    <%
            Next
    %>
	</ul>
    <% End if %>
</div>
