<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/inc/common_inc.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
    PlayerKbn = fncRequest("PlayerKbn")
    amky = fncRequest("amky")

    if PlayerKbn = "M" Or PlayerKbn = "T" Or PlayerKbn = "S" then

        if PlayerKbn = "M" Then MegaAdmin = "Y"

        CHR_CD = fncRequest("CHR_CD")
        LEC_CD = fncRequest("LEC_CD")
        EP1_FN = fncRequest("EP1_FN")
        EP2_PT = fncRequest("EP2_PT")
        EP5_WM = fncRequest("EP5_WM")
        EP6_PC = fncRequest("EP6_PC")
        
        '파라메터 암호화 실시
        Set Enc_Obj = Server.CreateObject("PMPDownCrypto.CoPMPDownCrypto")
            LEC_CD 	= Enc_Obj.Decrypt(LEC_CD)
            CHR_CD 	= Enc_Obj.Decrypt(CHR_CD)
            MGubun 	= Enc_Obj.Decrypt(EP1_FN)
            MemId   = Enc_Obj.Decrypt(EP2_PT)
            UseSite = Enc_Obj.Decrypt(EP5_WM)
            OpnSite = Enc_Obj.Decrypt(EP6_PC)
        Set Enc_Obj = Nothing

        if MemId <> "" and OpnSite <> "" and UseSite <> "" then 

            if inStr(OpnSite,UseSite) = 0 then
                fncWinClose("사이트정보")
            end if

            Select Case MGubun
                Case "1" : MType = "T"
                Case "2" : MType = "E"
                Case "3" : MType = "A"
            End Select

            strSql = ""
            strSql = strSql &"SELECT    MM_ID "
            strSql = strSql &"FROM      MS_MEM_MAS WITH(NOLOCK) "
            strSql = strSql &"WHERE     MM_MEM_TYPE = '" & MType & "'"
            strSql = strSql &"AND       MM_ID = '" & MemId & "'"
            Set RS = DBexec(strSQL,"study")
            if Rs.Eof then
                fncWinClose("회원정보")
	            Response.End
            END IF
        else
            fncWinClose("아이디")
            Response.End
        end if

    end if
%>
<!-- #include virtual = "/Player/kollus/admin/edit_pop.asp"-->