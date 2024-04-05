<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
    'POST 방식 -----------------------------------------
    str = ""
    For Each item In REQUEST.FORM
        For i=1 To REQUEST.FORM(item).Count
            str =  str & "" & item & "=" & REQUEST.FORM(item)(i) & "&"
        Next
    Next

    strSql = ""
    strSql = strSql & "INSERT INTO MT_KOLLUS_TEMP(KT_DEVICE, KT_STR) "
    strSql = strSql & "SELECT 'P', '" & str & "' "
    call DBExec(strSql,"tran")
    call DBClose(DBCon)    

    status = fncRequest("status")
    PlayerKbn = fncRequest("uservalue0")
    PlayerApp = fncRequest("uservalue1")
    PlayerLoc = fncRequest("uservalue2")
    APP_NO = fncRequest("uservalue3")
    CHR_CD = fncRequest("uservalue4")
    LEC_CD = fncRequest("uservalue5")

    if PlayerKbn = "A" Then
        if status = "stop" Then

            ID = fncRequest("client_user_id")	'회원아이디
            HN = fncRequest("host_name")	'호스트명

            LRN = APP_NO
            LCD = CHR_CD
            UCD = LEC_CD

            ST = fncRequest("start_at")	'시작날짜
            TM = fncRequest("playtime")	'기동시간
            ET = fncRequest("last_play_at")	'마지막 청취 위치(초)

            B1 = fncRequest("b0")	'블록 통과 여부(0,1)
            B2 = fncRequest("b1")	'블록 통과 여부(0,1)
            B3 = fncRequest("b2")	'블록 통과 여부(0,1)
            B4 = fncRequest("b3")	'블록 통과 여부(0,1)
            B5 = fncRequest("b4")	'블록 통과 여부(0,1)
            B6 = fncRequest("b5")	'블록 통과 여부(0,1)
            B7 = fncRequest("b6")	'블록 통과 여부(0,1)
            B8 = fncRequest("b7")	'블록 통과 여부(0,1)
            B9 = fncRequest("b8")	'블록 통과 여부(0,1)
            B10 = fncRequest("b9")	'블록 통과 여부(0,1)
            T1 = fncRequest("t0")	'블록 통과 시간 체크(초)
            T2 = fncRequest("t1")	'블록 통과 시간 체크(초)
            T3 = fncRequest("t2")	'블록 통과 시간 체크(초)
            T4 = fncRequest("t3")	'블록 통과 시간 체크(초)
            T5 = fncRequest("t4")	'블록 통과 시간 체크(초)
            T6 = fncRequest("t5")	'블록 통과 시간 체크(초)
            T7 = fncRequest("t6")	'블록 통과 시간 체크(초)
            T8 = fncRequest("t7")	'블록 통과 시간 체크(초)
            T9 = fncRequest("t8")	'블록 통과 시간 체크(초)
            T10 = fncRequest("t9")	'블록 통과 시간 체크(초)

            If ID = "" Then
	            Response.End
            End If

            Function fncMakeNumeric(e)
	            s = e
	            If Not IsNumeric(s) Then
		            s = 0
	            Else
		            s = Int(e)
	            End If
	            fncMakeNumeric = s
            End Function

            TT = 0

            T1 = fncMakeNumeric(T1) : T2 = fncMakeNumeric(T2) : T3 = fncMakeNumeric(T3) : T4 = fncMakeNumeric(T4) : T5 = fncMakeNumeric(T5)
            T6 = fncMakeNumeric(T6) : T7 = fncMakeNumeric(T7) : T8 = fncMakeNumeric(T8) : T9 = fncMakeNumeric(T9) : T10 = fncMakeNumeric(T10)

            If T1 > 0 And TT < T1 Then TT = T1 : If T2 > 0 And TT < T2 Then TT = T2 : If T3 > 0 And TT < T3 Then TT = T3 : If T4 > 0 And TT < T4 Then TT = T4 : If T5 > 0 And TT < T5 Then TT = T5
            If T6 > 0 And TT < T6 Then TT = T6 : If T7 > 0 And TT < T7 Then TT = T7 : If T8 > 0 And TT < T8 Then TT = T8 : If T9 > 0 And TT < T9 Then TT = T9 : If T10 > 0 And TT < T10 Then TT = T10

            PointChkString = B1&","&B2&","&B3&","&B4&","&B5&","&B6&","&B7&","&B8&","&B9&","&B10&""
            PointSecString = T1&","&T2&","&T3&","&T4&","&T5&","&T6&","&T7&","&T8&","&T9&","&T10&""

            '성적향상 수강이력 쌓기(2014-02, 2015-06-08 재오픈)////////////////////////////////////////////////////////////////////////////////////
            strSql = "EXEC MegaSp.dbo.Msp_Set_Lec_Std_Ins 'PC','S','" & ID & "','" & LRN & "','" & LCD & "','" & UCD & "','" & (Cint(TT) * -1) & "','" & CLng(ET) & "'," & PointChkString & "," & PointSecString
            Call DBExec(strSql,"study")
            Call DBclose(DBcon)
            '성적향상 수강이력 쌓기(2014-02)////////////////////////////////////////////////////////////////////////////////////


            '' 주간 이력넣기 시작 =======================
            ' 이번주 로그 여부 체크
            WeekCnt = 0

            '이번주 일요일, 토요일
            toWeekStDt = FormatDateTime(DateAdd("d", 0 - (Weekday(Now()) - 1), Now()), 2)
            toWeekEdDt = FormatDateTime(DateAdd("d", 7 - Weekday(Now()), Now()), 2)

            strSql = "SELECT COUNT(1) FROM MS_CHR_HIS_WEEK_SUM WITH(NOLOCK) "
            strSql = strSql &"WHERE CHW_MEM_ID = '"& ID &"' "
            strSql = strSql &"AND CHW_ST_DT = '"& toWeekStDt &"' "
            strSql = strSql &"AND CHW_ED_DT = '"& toWeekEdDt &"' "
            strSql = strSql &"AND CHW_APP_NO = "& LRN &" "
            strSql = strSql &"AND CHW_CHR_CD = "& LCD &" "
            SET RS = DBexec(strSQL,"study")
            WeekCnt = Rs(0)
            CALL DBclose(RS)

            ' 이번주 들은 강좌 강의수
            WeekLecCnt = 0
            strSql = "SELECT COUNT(DISTINCT LH_LEC_CD) FROM MS_LEC_HIS WITH(NOLOCK) "
            strSql = strSql &"INNER JOIN MS_LEC_MAS WITH(NOLOCK) ON LH_LEC_CD = LM_LEC_CD "
            strSql = strSql &"WHERE LH_MEM_ID = '"& ID &"' "
            strSql = strSql &"AND LH_APP_NO = "& LRN &" "
            strSql = strSql &"AND LM_CHR_CD = "& LCD &" "
            strSql = strSql &"AND CONVERT(VARCHAR(10), LH_ETM, 21) BETWEEN '"& toWeekStDt &"' AND '"& toWeekEdDt &"'  "
            SET RS = DBexec(strSQL,"study")
            WeekLecCnt = Rs(0)
            CALL DBclose(RS)

            If WeekCnt = 0 Then
	            strSql = "INSERT INTO MS_CHR_HIS_WEEK_SUM (CHW_MEM_ID, CHW_ST_DT, CHW_ED_DT, CHW_APP_NO, CHW_CHR_CD, CHW_LEC_CNT, CHW_TOTAL_TM) VALUES "
	            strSql = strSql &"('"& ID &"', '"& toWeekStDt &"', '"& toWeekEdDt &"', "& LRN &", "& LCD &", "& WeekLecCnt &", DATEDIFF(S, DATEADD(S, -"&TT&", GETDATE()), GETDATE()))"
            Else
	            strSql = "UPDATE MS_CHR_HIS_WEEK_SUM SET CHW_LEC_CNT = "& WeekLecCnt &", CHW_TOTAL_TM = CHW_TOTAL_TM + DATEDIFF(S, DATEADD(S, -"&TT&", GETDATE()), GETDATE()) "
	            strSql = strSql &"WHERE CHW_MEM_ID = '"& ID &"' "
	            strSql = strSql &"AND CHW_ST_DT = '"& toWeekStDt &"' "
	            strSql = strSql &"AND CHW_ED_DT = '"& toWeekEdDt &"' "
	            strSql = strSql &"AND CHW_APP_NO = "& LRN &" "
	            strSql = strSql &"AND CHW_CHR_CD = "& LCD &" "
            End If
            call DBExec(strSql,"study")
            call DBclose(DBcon)
            '' 주간 이력넣기 끝 =======================

            '구간이력저장------------------------------------------------------------------------------------------------------------------------------------------------------------------------


        End if
    End if

    Response.write "{""error"":0}"
%>