<!-- #include file = "./inc.asp"-->
<!-- #include file = "jsonObject.class.asp"-->
<%
mode = fncRequest("mode")
'S: ���̵�� �ٿ�ε�
If mode = "down" Then

    if cook_id = "" then
        response.write " { ""result"":""fail"" , ""msg"":""�α��� �� �ٿ�ε� �����մϴ�."" } "
        response.end
    end if

    ' �ߺ� �ٿ�ε� ���� üũ (Y or ����)
    dup_yn = "Y"
    strSql = ""
    strSql = strSql & " SELECT 1 FROM MG_EVT_DTL WITH(NOLOCK) WHERE ED_MAS_CD = "&down_evt_cd&" AND ED_MEM_ID = '"&cook_id&"' AND ED_DEL_YN = 'N' "
    set objrs = dbexec(strsql, "study")
    if not (objrs.eof and objrs.bof) then
        dup_yn = "N"
    end if
    call dbclose(objrs)

    strSql = ""
    strSql = strSql & " INSERT INTO MG_EVT_DTL(ED_MAS_CD, ED_MEM_ID, ED_MEM_NM, ED_REG_DT, ED_MEM_INFO, ED_MEM_INFO2, ED_UPD_DT, ED_OPT_DT) "
    strSql = strSql & " SELECT "&down_evt_cd&", MM_ID, MM_MEM_NM, GETDATE(),'"&fncRequestVariables("REMOTE_ADDR")&"', '"&dup_yn&"', GETDATE(), GETDATE() "
    strSql = strSql & " FROM MS_MEM_MAS WITH(NOLOCK) "
    strSql = strSql & " WHERE MM_ID = '"&cook_id&"' "
    call dbexec(strSql , "study")

    file_name = "2022 ������ ���̵��"
    'If cdate(lo_now_date) >= cdate("2022-07-15") Then        
        file_name = "(�ް�������) 2023 ������ �հݰ��̵��"
    'End If 

    response.write " { ""result"":""succ"" , ""msg"":"""", ""file_name"":"""&file_name&""" } "
    response.end
'E: ���̵�� �ٿ�ε�


'S: ��� ��� ����
ElseIf mode = "reply" Then

    if isEnd = true then
        response.write " { ""result"":""fail"" , ""msg"":""�̺�Ʈ�� ����Ǿ����ϴ�."" } "
        response.end
    end if

    if cook_id = "" then
        response.write " { ""result"":""fail"" , ""msg"":""�α��� �� �̿����ּ���."" } "
        response.end
    end if

    word = unescape(fncRequest("word"))
    noti = fncRequest("noti")

    if word = "" then
        response.write " { ""result"":""fail"" , ""msg"":""����� �Է����ּ���."" } "
        response.end
    end if

    if len(word) < 10 or len(word) > 1000 then
        response.write " { ""result"":""fail"" , ""msg"":""����� 10�� �̻� 1,000�� ���Ϸ� �Է� �����մϴ�."" } "
        response.end
    end if

    if (noti = "Y" and ucase(mem_type) <> "E") or noti <> "Y" then
        noti = ""
    end if

    firstName = ""
    if ucase(mem_type) = "E" then
        num = 13
        Randomize()
        first_num = Int((num*Rnd)+1)
        rnd_firstName = "��/��/��/��/��/��/��/Ȳ/��/��/��/��/��/��"
        num = 32
		rnd_firstName = "��/��/��/��/��/��/��/��/Ȳ/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��"
        firstName = Split(rnd_firstName,"/")(first_num)

        IF firstName = "" then
            firstName = "��"
        end if
    end if

    strSql = ""
    strSql = strSql & " INSERT INTO MG_EVT_DTL "
    strSql = strSql & " (ED_MAS_CD, ED_MEM_ID, ED_MEM_NM, ED_MEM_INFO, ED_ETC, ED_CONTENT, ED_OPT_DT, ED_REG_DT, ED_UPD_DT) "
    strSql = strSql & " SELECT '"&rep_evt_cd&"', '"&cook_id&"', CASE WHEN MM_MEM_TYPE='E' THEN '"&firstName&"'+REPLICATE('*',2) ELSE MM_MEM_NM END, '"&fncRequestVariables("REMOTE_ADDR")&"', '"&noti&"', '"&word&"', getdate(), getdate(), getdate() "
    strSql = strSql & " FROM MS_MEM_MAS WITH(NOLOCK) "
    strSql = strSql & " INNER JOIN MS_MEM_DTL WITH(NOLOCK) ON MM_ID = MD_MEM_ID "
    strSql = strSql & " WHERE MM_ID = '"&cook_id&"' "
    Call DBExec(strSQL, "study")

    Response.write " { ""result"":""succ"" , ""msg"":""����� �Ϸ�Ǿ����ϴ�."" } "
    Response.End

ElseIf mode = "replyDel" then

    idx = fncRequest("idx")

    if idx = "" then
        response.write " { ""result"":""fail"" , ""msg"":""���� ����� ���õ��� �ʾҽ��ϴ�."" } "
        response.end
    end if

    del_auth = false
    strSql = ""
    strSql = strSql & " SELECT * "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ED_MAS_CD="&rep_evt_cd&" AND ED_DTL_CD = " & idx
    strSql = strSql & " 	AND ( "  ' ����� �ۼ��� �����̰ų� ������ �ƴ����� �������� ���
    strSql = strSql & " 		ED_MEM_ID = '"&cook_id&"'  "
    strSql = strSql & " 		OR  "
    strSql = strSql & " 		EXISTS ( SELECT * FROM MS_MEM_MAS WITH(NOLOCK) WHERE MM_ID = '"&cook_id&"' AND UPPER(MM_MEM_TYPE)='E') "
    strSql = strSql & " 	) "
    set rs = dbexec(strsql, "study")
    if not (rs.eof and rs.bof) then
        del_auth = true
    end if
    call dbclose(rs)

    if del_auth = false then
        response.write " { ""result"":""fail"" , ""msg"":""���������� �����ϴ�."" } "
        response.end
    else
        strSql = ""
        strSql = strSql & " UPDATE MG_EVT_DTL SET ED_DEL_YN='Y' WHERE ED_MAS_CD="&rep_evt_cd&" AND ED_DTL_CD = " & idx
        call dbexec(strsql, "study")

        response.write " { ""result"":""succ"" , ""msg"":""���� �Ǿ����ϴ�."" } "
        response.end
    end if
'E: ��� ��� ����


'S: �����ϱ� �̺�Ʈ ����
Elseif mode = "sns" Then

    if isEnd then
        response.write " { ""result"":""fail"" , ""msg"":""�̺�Ʈ�� ����Ǿ����ϴ�."" } "
        response.end
    end if

    if cook_id = "" then
        response.write " { ""result"":""fail"" , ""msg"":""�α��� �� �̿��� �ּ���."" } "
        response.end
    end if

    url = unescape(fncRequest("url"))
    
    if url = "" or len(url) < 10 or len(url) > 200 then
        response.write " { ""result"":""fail"" , ""msg"":""�ҹ� �� URL�� 10�� �̻� 200�� ���Ϸ� �ۼ� �����մϴ�."" } "
        response.end
    end if
    
    bApplied = false
    strSql = ""
    strSql = strSql & " SELECT * FROM MG_EVT_DTL WITH(NOLOCK) WHERE ED_MAS_CD = " &url_evt_cd& " AND ED_CONTENT = '"&url&"' AND ED_DEL_YN = 'N' "
    set objrs = dbexec(strSql, "study")
        if not (objrs.eof and objrs.bof) then
            bApplied = true
        end if
    call dbclose(objrs)

    if bApplied = true then
        response.write " { ""result"":""fail"" , ""msg"":""�̹� ������ URL�Դϴ�."" } "
        response.end
    end if

    strSql = ""
    strSql = strSql & " INSERT INTO MG_EVT_DTL(ED_MAS_CD,ED_MEM_ID,ED_MEM_NM,ED_MEM_INFO2,ED_CONTENT,ED_ETC,ED_REG_DT,ED_MEM_INFO,ED_UPD_DT,ED_OPT_DT, ED_ORD_NO) "
    strSql = strSql & " SELECT "&url_evt_cd&", MM_ID, MM_MEM_NM, MD_HP_NO,'"&url&"', 'N', GETDATE(),'"&Request.ServerVariables("REMOTE_ADDR")&"',GETDATE(),GETDATE(),0 "
    strSql = strSql & " FROM MS_MEM_MAS WITH(NOLOCK) "
    strSql = strSql & " INNER JOIN MS_MEM_DTL WITH(NOLOCK) ON MM_ID = MD_MEM_ID "
    strSql = strSql & " WHERE MM_ID = '"&cook_id&"' "
    CALL dbexec(strSql , "study")
        
    response.write " { ""result"":""succ"" , ""msg"":""��ϵǾ����ϴ�."" } "
    response.end

Elseif mode = "my_sns" Then
    if cook_id = "" then
        response.write " { ""result"":""fail"" , ""msg"":""�α��� �� �̿��� �ּ���."" } "
        response.end
    end if

    set arrMySns = nothing
    strSql = ""
    strSql = strSql & " SELECT ROW_NUMBER() OVER(ORDER BY ed_reg_dt) ROW_, ed_content2 sns_kind, ed_content sns_url, CONVERT(VARCHAR(10), ed_reg_dt, 23) REG_DT, RIGHT(CONVERT(VARCHAR(20), ed_reg_dt, 120), 8) REG_TM "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ed_mas_cd="&url_evt_cd&" AND ed_mem_id='"&cook_id&"' AND ed_del_yn='N' "
    strSql = strSql & " ORDER BY ROW_ DESC "
            
    Set objRs = DBExec(strSql, "study")
    'If Not (objRs.EoF And objRs.BoF) Then arrMySns = objrs.getRows()
    'Call DBClose(objRs)
    If Not (objRs.EoF And objRs.BoF) Then
        Response.LCID = 1042 ' REQUIRED! Set your LCID here (1046 = Brazilian). Could also be the LCID property of the page declaration or the Session.LCID property
        ' instantiate the class
        set JSON = New JSONobject
        JSON.LoadRecordset objRs
        JSON.Write()
        set JSON = nothing
    Else
        response.write " { ""data"":"""" } "
    End if
    Call DBClose(objRs)
    Response.end
'E: �����ϱ� �̺�Ʈ ����

' S: Ÿ�� ���� �����ϱ� ���� (/s/gong/event/2022/06200080/index.asp?now=2022-07-11)
Elseif mode ="crt" then
    attfile_ori_name = fncRequestUnescape("attfile_ori_name")   
    attfile_name = fncRequestUnescape("attfile_name")
    attfile_url = fncRequestUnescape("attfile_url") 

    If isCrtEnd Then
        Response.write " { ""result"":""fail"" , ""msg"":""��û�� �����Ǿ����ϴ�."" } "
        Response.end
    End If

    if isComplete then
        response.write " { ""result"":""fail"" , ""msg"":""�̹� �����ϼ̽��ϴ�."" } "
        response.end
    end if 

    If attfile_url = "" Then
        response.write " { ""result"":""fail"" , ""msg"":""���� �̹����� ÷�����ּ���."" } "
        response.end
    End if

    strSql = "" 
    strSql = strSql & "     INSERT INTO MG_EVT_DTL (ED_MAS_CD, ED_MEM_ID, ED_MEM_NM,  ED_CONTENT, ED_CONTENT2, ED_CONTENT3, ED_REG_DT, ED_MEM_INFO, ED_UPD_DT, ED_OPT_DT, ED_ORD_NO) "
    strSql = strSql & "     SELECT '"&crt_evt_cd&"', '"&cook_id&"', MM_MEM_NM,'"&attfile_ori_name&"','"&attfile_url&"','"&attfile_name&"' "
    strSql = strSql & "     ,GETDATE(), '"&Request.ServerVariables("REMOTE_ADDR")&"',GETDATE(),GETDATE(),0 "
    strSql = strSql & "     FROM MS_MEM_MAS WITH(NOLOCK) "
    strSql = strSql & "     INNER JOIN MS_MEM_DTL WITH(NOLOCK) ON MM_ID = MD_MEM_ID "
    strSql = strSql & "     WHERE MM_ID = '"&cook_id&"' " 

    call dbexec(strSql,"study")
	DBClose(DBCon)

    coupon_no1 = 1448
    coupon_no2 = 1449

    strSql = "" 
    strSql = strSql & " INSERT INTO MS_EVTCPN_DTL ( ECD_EVT_NO,ECD_MEM_ID,ECD_SALE_RATE ,ECD_MAKE_DT,ECD_STD_DT,ECD_END_DT,ECD_RESULT_FLG,ECD_USE_FLG,ECD_BIGO) "
	strSql = strSql & " SELECT ECM_EVT_NO, '" & cook_id & "', ECM_SALE_RATE, GETDATE(), GETDATE(), '2022-07-15 23:59:59' , 'Y', 'N','��â��T ��Ī ���� Ƽ�н�40% ���� �̺�Ʈ' "
	strSql = strSql & " FROM MS_EVTCPN_MAS WITH(NOLOCK) "
	strSql = strSql & " WHERE ECM_EVT_NO= "&coupon_no1
	strSql = strSql & " AND ECM_EVT_NO NOT IN ( "
	strSql = strSql & " 	SELECT ECD_EVT_NO "
	strSql = strSql & " 	FROM MS_EVTCPN_DTL WITH(NOLOCK) "
	strSql = strSql & " 	WHERE ECD_EVT_NO = "&coupon_no1&" AND ECD_MEM_ID='"&cook_id&"' AND ECD_BIGO = '��â��T ��Ī ���� Ƽ�н�40% ���� �̺�Ʈ') "
    
	call dbexec(strSql,"study")
	DBClose(DBCon)

    strSql = "" 
    strSql = strSql & " INSERT INTO MS_EVTCPN_DTL ( ECD_EVT_NO,ECD_MEM_ID,ECD_SALE_RATE ,ECD_MAKE_DT,ECD_STD_DT,ECD_END_DT,ECD_RESULT_FLG,ECD_USE_FLG,ECD_BIGO) "
	strSql = strSql & " SELECT ECM_EVT_NO, '" & cook_id & "', ECM_SALE_RATE, GETDATE(), GETDATE(), '2022-08-31 23:59:59' , 'Y', 'N','��â��T ��Ī ���� �ܰ�50% ���� �̺�Ʈ' "
	strSql = strSql & " FROM MS_EVTCPN_MAS WITH(NOLOCK) "
	strSql = strSql & " WHERE ECM_EVT_NO="&coupon_no2
	strSql = strSql & " AND ECM_EVT_NO NOT IN ( "
	strSql = strSql & " 	SELECT ECD_EVT_NO "
	strSql = strSql & " 	FROM MS_EVTCPN_DTL WITH(NOLOCK) "
	strSql = strSql & " 	WHERE ECD_EVT_NO = "&coupon_no2&" AND ECD_MEM_ID='"&cook_id&"' AND ECD_BIGO = '��â��T ��Ī ���� �ܰ�50% ���� �̺�Ʈ') "

	call dbexec(strSql,"study")
	DBClose(DBCon)

	response.write " { ""result"":""succ"", ""msg"":""������ ���޵Ǿ����ϴ�.\n���������� > �������� Ȯ���� �ּ���.!"" } " 
	response.end
' E: Ÿ�� ���� �����ϱ� ����


' S: ��Ŭ �̺�Ʈ ���� (/s/gong/event/2022/04290048/index.asp?now=2022-01-18)
Elseif mode = "confirm_result" then

    set arrResult = nothing
    get_result = "fail"
    strSql = ""
    strSql = strSql & " SELECT CG_GIFT_NM,MEM_NM = (SELECT MM_MEM_NM FROM MS_MEM_MAS WITH(NOLOCK) WHERE MM_ID = CW_MEM_ID) , CONVERT(VARCHAR(10), CW_REG_DT,101) REG_DT,CG_ALLOW_DT, CG_IDX "
    strSql = strSql & " FROM MS_CLICKEVT_WINNER WITH(NOLOCK) "
    strSql = strSql & " JOIN MS_CLICKEVT_GIFT WITH(NOLOCK) ON CW_MAS_IDX=CG_MAS_IDX AND CW_GIFT_IDX=CG_IDX "
    strSql = strSql & " WHERE CW_MEM_ID = '"&cook_id&"'  AND CW_MAS_IDX= "&clickevt_mas_idx
    strSql = strSql & " ORDER BY CW_REG_DT "
    Set objRs = DBExec(strSql, "study")
    If Not (objRs.EoF And objRs.BoF) Then 
        arrResult = objrs.getRows()
        get_result = "succ"
    End if
    Call DBClose(objRs)
    winner_yn = "N"
    html = ""
    if isarray(arrResult) Then
        cnt = ubound(arrResult, 2)
        strdt = "" : strbook = ""

        for i=0 to cnt
            gift_nm = arrResult(0,i)
            mem_nm = arrResult(1,i)
            my_gift_dt = Cdate(arrResult(2,i))
            my_allow_dt = replace(arrResult(3,i), "-", ".")

        next

        winner_yn = "Y"     '��÷��

        '<p class="tit">���ϵ帳�ϴ�!</p>
        '<div class="dimPop">
        '    <img src="img_main/m/2022/0712_plower3362/img_pop.png" alt="">
        '    <dl>
        '        <dt>2022. 07. 13.</dt>
        '            <dd>2023 Ȳö�� ������ �⺻����<br>�Բ� ������ ��������� �հ��ϼ���.</dd>
        '    </dl>
        '</div>
        '<ul class="text">
        '    <li>��÷�� �̺�Ʈ ����� [��ٱ���]���� Ȯ���� �����մϴ�!</li>
        '    <li>���ǻ����� �� �������ּ���!</li>
        '</ul>
        '<div class="btnConfirm">
        '    <a href="#;"><img src="img_main/m/2021/0716_megaggoarimy/pop_btn.png" alt="Ȯ��"></a>
        '</div>
        '<div class="btnClose">
        '    <a href="#;"><img src="img_main/m/2021/0716_megaggoarimy/pop_close.png" alt="�ݱ�"></a>
        '</div>

        html = html & "<p class='tit'>���ϵ帳�ϴ�!</p>"
        html = html & "<div class='dimPop'>"
        html = html & "    <img src='"&img_main&"/m/2022/0712_plower3362/img_pop.png' alt=''>"
        html = html & "    <dl>"
        html = html & "        <dt>"&my_allow_dt&"</dt>"
        html = html & "            <dd>2023 Ȳö�� ������ �⺻����<br>�Բ� ������ ��������� �հ��ϼ���.</dd>"
        html = html & "    </dl>"
        html = html & "</div>"
        html = html & "<ul class='text'>"
        html = html & "    <li>��÷�� ����� 7/20(��) ��ٱ��Ͽ� �ϰ� ���޵˴ϴ�.</li>"
        html = html & "    <li>���ǻ����� �� �������ּ���!</li>"
        html = html & "</ul>"
        html = html & "<div class='btnConfirm'>"
        html = html & "    <a href='#;'><img src='"&img_main&"/m/2021/0716_megaggoarimy/pop_btn.png' alt='Ȯ��'></a>"
        html = html & "</div>"
        html = html & "<div class='btnClose'>"
        html = html & "    <a href='#;'><img src='"&img_main&"/m/2021/0716_megaggoarimy/pop_close.png' alt='�ݱ�'></a>"
        html = html & "</div>"

    else

        '<p class="tit">��÷�� ������ �����ϴ�.</p>
        '<p class="gift">
        '    <img src="img_main/m/2021/0716_megaggoarimy/pop_no_icon.png" alt="��÷�� ������ �����ϴ�.">
        '</p>
        '<div class="btnConfirm">
        '    <a href="#;"><img src="img_main/m/2021/0716_megaggoarimy/pop_btn.png" alt="Ȯ��"></a>
        '</div>
        '<div class="btnClose">
        '    <a href="#;"><img src="img_main/m/2021/0716_megaggoarimy/pop_close.png" alt="�ݱ�"></a>
        '</div>

        html = html & "<p class='tit'>��÷�� ������ �����ϴ�.</p>"
        html = html & "<p class='gift'>"
        html = html & "    <img src='"&img_main&"/m/2021/0716_megaggoarimy/pop_no_icon.png' alt='��÷�� ������ �����ϴ�.'>"
        html = html & "</p>"
        html = html & "<div class='btnConfirm'>"
        html = html & "    <a href='#;'><img src='"&img_main&"/m/2021/0716_megaggoarimy/pop_btn.png' alt='Ȯ��'></a>"
        html = html & "</div>"
        html = html & "<div class='btnClose'>"
        html = html & "    <a href='#;'><img src='"&img_main&"/m/2021/0716_megaggoarimy/pop_close.png' alt='�ݱ�'></a>"
        html = html & "</div>"

    End if    

    'response.write " { ""result"":"""&html&""", ""msg"": """", ""class"": """&get_result&"""} "
    response.write " { ""result"":"""&html&""", ""msg"": """", ""class"": """&get_result&""", ""winner"": """&winner_yn&"""} "
    response.end

Elseif mode = "confirm_stock" then
    today_dt = "" : today_stock = "0" : today_gift_tot = 0
    strSql = ""
    strSql = strSql & " SELECT CG_ALLOW_DT, CG_SOLDOUT_YN, CG_GIFT_TOT, CUR_CNT = (SELECT COUNT(*) FROM MS_CLICKEVT_WINNER WITH(NOLOCK) WHERE CW_GIFT_IDX=CG_IDX), LEFT(CG_GIFT_NM,3) TEC_NM "
    strSql = strSql & " FROM MS_CLICKEVT_GIFT WITH(NOLOCK) "
    strSql = strSql & " WHERE CG_MAS_IDX = "&clickevt_mas_idx&" AND CG_IDX = " & gift_idx
    Set objRs = DBExec(strSql, "study")
    If Not (objRs.EoF And objRs.BoF) Then
        today_dt = objrs("CG_ALLOW_DT")
        CG_GIFT_TOT = objrs("CG_GIFT_TOT")
        CUR_CNT = objrs("CUR_CNT")
        TEC_NM = objRs("TEC_NM")

        today_dt = right("0"&month(today_dt),2)&"."&right("0"&day(today_dt),2)&"("&fncWeekDay(today_dt)&")"
        today_stock = CG_GIFT_TOT - CUR_CNT

        if objrs("CG_SOLDOUT_YN") = "Y" then
            today_stock = 0
        end if
    End If
    Call DBClose(objRs)

    if today_stock="50" Then today_stock="100"

    response.write " { ""dt"":"""&today_dt&""" , ""stock"":"&today_stock&" } "
    response.end

Elseif mode = "set_soldout" then
    if ucase(fncRequestCookie("mem_type")) <> "E" then
        response.write " { ""result"":""fail"" , ""msg"":""�����ڰ� �ƴմϴ�."" } "
        response.end
    end if

    gift_idx = fncrequest("gift_idx")

    if gift_idx = "" or isnumeric(gift_idx) = false then
        response.write " { ""result"":""fail"" , ""msg"":""���� ����� ���޵��� �ʾҽ��ϴ�."" } "
        response.end
    end if

    strSql = ""
    strSql = strSql & " UPDATE MS_CLICKEVT_GIFT SET CG_SOLDOUT_YN='Y' WHERE CG_IDX = " & gift_idx
    call dbexec(strsql, "study")
    response.write "{ ""result"":""succ"" , ""msg"":""��ϵǾ����ϴ�."" }"
    response.end

Elseif mode = "admin_apply" then
    if ucase(fncRequestCookie("mem_type")) <> "E" then
        response.write " { ""result"":""fail"" , ""msg"":""�����ڰ� �ƴմϴ�."" } "
        response.end
    end if

    add_winner_cnt = fncrequest("add_winner_cnt")
    gift_idx = fncrequest("gift_idx")
    proc_result = "" : proc_msg = ""

    if isnumeric(add_winner_cnt) Then
        strSql = " EXEC MSP_CLICKEVT_APPLY_ADMIN_2 @MAS_IDX="&clickevt_mas_idx&", @GIFT_IDX = "&gift_idx&",@MEM_ID = '"&cook_id&"', @IP_ADDRESS = '"&COMM_USER_IP&"', @ADD_WINNER_CNT = "&add_winner_cnt
       ' response.write strSql
      ' response.end  
        Set objRs = DBExec(strSql, "study")
        If Not (objRs.EoF And objRs.BoF) Then
            proc_result = objrs(0)
            proc_msg = objrs(1)
        End If
        Call DBClose(objRs)
    Else
        proc_result = "fail"
        proc_msg = "���ڸ� �Է��� �ּ���."
    End if

    response.write " { ""result"":"""&proc_result&""" , ""msg"":"""&proc_msg&""" } "
    response.end    
Elseif mode = "send_sms" Then

    if ucase(fncRequestCookie("mem_type")) <> "E" then
        response.write " { ""result"":""fail"" , ""msg"":""�����ڰ� �ƴմϴ�."" } "
        response.end
    end if

    gift_idx = fncrequest("gift_idx")

    if gift_idx = "" or isnumeric(gift_idx) = false then
        response.write " { ""result"":""fail"" , ""msg"":""SMS �߼� ����� ���޵��� �ʾҽ��ϴ�."" } "
        response.end
    end if


    if isRealServer() = true Then '�Ǽ���
        HP_NO_GROUP = "('010-2508-3740'),('010-2009-8878'),('010-9545-3959'),('010-5375-4021'),('010-6876-2156'),('010-3999-6964'),('010-5717-1697'),('010-6260-8312'),('010-4615-3021'),('010-2634-7263'),('010-8861-8456'),('010-4744-3210'),('010-4916-2748'),('010-5524-3813'),('010-9165-1352'),('010-5335-6258'),('010-9905-3248'),('010-2728-2306'),('010-9109-0737'),('010-8567-1205'),('010-3637-9581'),('010-3834-0209'),('010-4262-3023'),('010-5444-0005'),('010-6556-8926')"
        'HP_NO_GROUP = "('010-2508-3740'),('010-9165-1352'),('010-3834-0209')"
        LINKED_SVR = ""    
    Else
        HP_NO_GROUP = "('010-2508-3740'),('010-9165-1352'),('010-3834-0209')"
        LINKED_SVR = "Real_megagong."
    End if

    bSMS = false
    strsql = ""
    strSql = strSql & " SELECT CG_ALLOW_DT, CG_GIFT_NM, CG_GIFT_TOT, datediff(ms,min(cw_reg_dt),max(cw_reg_dt))*0.001 "
    strSql = strSql & " FROM MS_CLICKEVT_GIFT WITH(NOLOCK)  "
    strSql = strSql & " 	INNER JOIN MS_CLICKEVT_WINNER WITH(NOLOCK) ON CG_IDX = CW_GIFT_IDX  "
    strSql = strSql & " WHERE CG_MAS_IDX="&clickevt_mas_idx&" AND CW_GIFT_IDX="&gift_idx&" AND CG_SOLDOUT_YN='Y' "
    strSql = strSql & " GROUP BY CW_GIFT_IDX, CG_ALLOW_DT, CG_GIFT_NM, CG_GIFT_TOT, CG_SOLDOUT_YN "
    ' response.write strSql
    ' response.end  
    Set objRs = DBExec(strSql, "study")
    If Not (objRs.EoF And objRs.BoF) Then
        bSMS = true
        CG_ALLOW_DT = cdate(objrs(0))
        CG_GIFT_NM = objrs(1)
        CG_GIFT_TOT = objrs(2)
        DIFF_SEC = formatnumber(objrs(3),3)
    End if
    Call DBClose(objRs)

    if bSMS = true then

        weekDate = weekDay(CG_ALLOW_DT)
        select case weekDate
        case "1" weekDate = "��"
        case "2" weekDate = "��"
        case "3" weekDate = "ȭ"
        case "4" weekDate = "��"
        case "5" weekDate = "��"
        case "6" weekDate = "��"
        case "7" weekDate = "��"
        end select

        sms_title = month(CG_ALLOW_DT) & "/" & day(CG_ALLOW_DT) & "("&weekDate&")" & "(9/7��) 2023 Ȳö�� ������ �⺻�� ��Ŭ �̺�Ʈ"

        strsql = ""
        strsql = strsql & " INSERT INTO "&LINKED_SVR&"[MegaGong_BIZ].dbo.[BIZ_MSG_DAN] ( MSG_TYPE, REQUEST_TIME, SEND_TIME, DEST_PHONE, SEND_PHONE, SUBJECT, MSG_BODY, CINFO ) "
        strsql = strsql & " SELECT 5, getdate(), getdate(), REPLACE(REPLACE(HP_NO,' ',''),'-',''), '16448806', '"&sms_title&"' "
        strsql = strsql & " , '"&sms_title&" "& vbCrLf  '���⼭���� LMS ����
        strsql = strsql & " ��ǰ��: " & CG_GIFT_NM & vbCrLf
        strsql = strsql & " �����ð�: "&DIFF_SEC&"��' "
        strsql = strsql & " , '�����������_��������ȹ��' "
        strsql = strsql & " FROM (VALUES "&HP_NO_GROUP&") AS t(hp_no) "
        strsql = strsql & " GROUP BY REPLACE(REPLACE(HP_NO,' ',''),'-','') "
        ' response.write strsql
        ' response.end
        call dbexec(strsql, "study")

        response.write " { ""result"":""succ"" , ""msg"":""SMS �߼��� �Ϸ�Ǿ����ϴ�."" } "
        Response.end
    else
        response.write " { ""result"":""fail"" , ""msg"":""SMS �߼� ������ �����ϴ�."" } "
        Response.end
    end if
    
Elseif mode = "clear_temp" then

    if isRealServer() = false Then
        strSql = "TRUNCATE TABLE MS_CLICKEVT_TEMP_2 "
        call dbexec(strsql, "study")
        response.write " { ""result"":""succ"" , ""msg"":""���� �Ϸ�"" } "
        response.end
    End if
' E: ��Ŭ �̺�Ʈ ����


' S: ������ or ���縮�� ������ ���� (event/2022/08110020/index.asp?now=2022-12-01)
Elseif mode = "reviewIns" Then

    if certEventEnd then
        Response.write " { ""result"":""fail"" , ""msg"":""�̺�Ʈ�� ����Ǿ����ϴ�."" } "
        Response.end
    end if

    If cook_id = "" Then
        Response.write " { ""result"":""fail"" , ""msg"":""�α��� �� ���� �����մϴ�."" } "
        Response.end
    End If

    attfile_name_ori = fncRequestUnescape("attfile_name_ori")
    attfile_name = fncRequestUnescape("attfile_name")
    attfile_url = fncRequestUnescape("attfile_url")
    edTitle = unescape(fncrequest("edTitle"))
    edContent = unescape(fncrequest("edContent"))
    chk_agree = fncRequest("chk_agree")

    if len(edContent) < 10 or len(edContent) > 300 then
        Response.write " { ""result"":""fail"" , ""msg"":""������ 10�� �̻� 300�� ���Ϸ� �Է��Ͽ� �ּ���."" } "
		Response.end
    end if

    if chk_agree <> "Y" then
        Response.write " { ""result"":""fail"" , ""msg"":""�������� ������ �����ϼž� ������ �����մϴ�."" } "
        Response.end
    end if

    if attfile_name = "" then
        Response.write " { ""result"":""fail"" , ""msg"":""÷�� ������ ������ּ���"" } "
		Response.end
    end if 

    firstName = ""
    if ucase(mem_type) = "E" then
        num = 13
        Randomize()
        first_num = Int((num*Rnd)+1)
        rnd_firstName = "��/��/��/��/��/��/��/Ȳ/��/��/��/��/��/��"
        num = 32
		rnd_firstName = "��/��/��/��/��/��/��/��/Ȳ/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��/��"
        firstName = Split(rnd_firstName,"/")(first_num)
    end if    

    strSql = ""
    strSql = strSql & " INSERT INTO MG_EVT_DTL(ED_MAS_CD, ED_MEM_ID, ED_MEM_NM, ED_TITLE, ED_CONTENT, ED_CONTENT2, ED_CONTENT3, ED_CONTENT4, ED_ETC, ED_REG_DT, ED_MEM_INFO,ED_UPD_DT ) "
    strSql = strSql & " SELECT "&certEventCode&", MM_ID, CASE WHEN MM_MEM_TYPE='E' THEN '"&firstName&"'+REPLICATE('*', 2) ELSE MM_MEM_NM END, '"&edTitle&"', '"&attfile_name_ori&"','"&attfile_name&"', '"&attfile_url&"', '"&edContent&"', '"&chk_agree&"', GETDATE(), '"&Request.ServerVariables("REMOTE_ADDR")&"', GETDATE() "    
    strSql = strSql & " FROM MS_MEM_MAS WITH(NOLOCK) "
    strSql = strSql & " INNER JOIN MS_MEM_DTL WITH(NOLOCK) ON MM_ID = MD_MEM_ID "
    strSql = strSql & " WHERE MM_ID = '"&cook_id&"' "
    call dbexec(strsql, "study")

    strSql = ""
    strSql = strSql & " IF NOT EXISTS ( SELECT 1 FROM MS_EVTCPN_DTL WITH(NOLOCK) WHERE ECD_MEM_ID = '"&cook_id&"' AND ECD_EVT_NO IN ("&certCpnNo&") ) "
    strSql = strSql & " BEGIN "
	strSql = strSql & "     EXEC MSP_SET_CPN_EVT_202111 "&certEventCode&", '"&cook_id&"', "&certCpnNo&" "
    strsql = strsql & "     SELECT 'succ' result, '�ſ��� ������ �ܰ� ���� 30% ���������� ���޵Ǿ����ϴ�.' msg "    
    strSql = strSql & " END "
    strSql = strSql & " ELSE "
    strSql = strSql & " BEGIN "
    strSql = strSql & " 	SELECT 'succ' result, '������ �Ϸ�Ǿ����ϴ�.' msg "
    strSql = strSql & " END "
    set objrs = dbexec(strSql, "study")
    if not (objrs.eof and objrs.bof) then 
        result = objrs(0)
        msg = objrs(1)   
    end if 
    call dbclose(objrs)  

    response.write " { ""result"":"""&result&""" , ""msg"":"""&msg&""" } "
    response.end

Elseif mode = "reviewDel" then '��������

    idx = fncRequest("idx")

    if certEventEnd then
        Response.write " { ""result"":""fail"" , ""msg"":""�̺�Ʈ�� ����Ǿ����ϴ�."" } "
        Response.end
    end if

    If cook_id = "" Then
        Response.write " { ""result"":""fail"" , ""msg"":""�α����� �ʿ��մϴ�."" } "
        Response.end
    End If

    if idx = "" then
        response.write " { ""result"":""fail"" , ""msg"":""���� ����� ���õ��� �ʾҽ��ϴ�."" } "
        response.end
    end if

    del_auth = false
    strSql = ""
    strSql = strSql & " SELECT * "
    strSql = strSql & " FROM MG_EVT_DTL WITH(NOLOCK) "
    strSql = strSql & " WHERE ED_MAS_CD="&certEventCode&" AND ED_DTL_CD = " & idx
    strSql = strSql & " 	AND ( "  ' ����� �ۼ��� �����̰ų� ������ �ƴ����� �������� ���
    strSql = strSql & " 		ED_MEM_ID = '"&cook_id&"'  "
    strSql = strSql & " 		OR  "
    strSql = strSql & " 		EXISTS ( SELECT * FROM MS_MEM_MAS WITH(NOLOCK) WHERE MM_ID = '"&cook_id&"' AND UPPER(MM_MEM_TYPE)='E') "
    strSql = strSql & " 	) "
    set rs = dbexec(strsql, "study")
    if not (rs.eof and rs.bof) then
        del_auth = true
    end if
    call dbclose(rs)

    if del_auth = false then
        response.write " { ""result"":""fail"" , ""msg"":""���� ������ �����ϴ�."" } "
        response.end
    else
        strSql = ""
        strSql = strSql & " UPDATE MG_EVT_DTL SET ED_DEL_YN='Y' WHERE ED_MAS_CD="&certEventCode&" AND ED_DTL_CD = " & idx
        call dbexec(strsql, "study")

        response.write " { ""result"":""succ"" , ""msg"":""���� �Ǿ����ϴ�."" } "
        response.end
    end if
' E: ������ or ���縮�� ������ ����

End if
%>
