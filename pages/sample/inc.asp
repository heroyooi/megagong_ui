<% 
Response.charset = "euc-kr"
Response.CacheControl = "no-cache"
Response.Expires = -1
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->

<%'S: �����ϱ� �̺�Ʈ ����%>
<%
    now_date = cdate(left(lo_now_date,10))
    url_evt_cd =  2889	'[9/7��] ��â�� �ű��Լ� �ҹ����� �̺�Ʈ (22.06.20.)
    crt_evt_cd =  2890	'[9/7��] ��â�� �ű��Լ� Ÿ����� ���� �̺�Ʈ (22.06.20.)

    isEnd= false 
    if cdate(lo_now_date) >= cdate("2032-07-05") then 
        isEnd = true
    end if 

    isCrtEnd= false 
    if cdate(lo_now_date) >= cdate("2032-07-12") then 
        isCrtEnd = true
    end if 
    'Ÿ�� ���� Ȯ��
    isComplete = false

    if cook_id <> "" then
        strSql = ""
        strSql = strSql&" SELECT MM_MEM_TYPE "
        strSql = strSql&" FROM MS_MEM_MAS WITH(NOLOCK) "
        strSql = strSql&" WHERE MM_ID = '"&cook_id&"' "
        Set objrs = dbexec(strsql, "study")
        If Not (objrs.eof And objrs.bof) Then
            mem_type = objrs(0)
        End If
        Call dbclose(objrs)

        strSql = "" 
        strSql = strSql & " SELECT 1 FROM MG_EVT_DTL WITH(NOLOCK) "
        strSql = strSql & " WHERE ED_MAS_CD = '"&crt_evt_cd&"' AND ED_MEM_ID = '"&cook_id&"' AND ED_DEL_YN='N'  "
        strSql = strSql & " ORDER BY ED_REG_DT DESC "
        Set objRs = DBExec(strSql, "study")
        If Not (objRs.EoF And objRs.BoF) Then 
            isComplete = true
        End If 
        Call DBClose(objRs)  

    end if
%>
<%'E: �����ϱ� �̺�Ʈ ����%>

<%'S: ��� ��� ����%>
<%
    rep_evt_cd = 2705   '[������] �����Ȱ ��� �ذ� �̺�Ʈ ��2022.01.18��
    down_evt_cd = 2706  '[������] ���̵�� ���� �ٿ�ε� �̺�Ʈ ��2022.01.18��

    'isEnd = not(cdate(lo_now_date) < cdate("2022-07-31"))
%>
<%'E: ��� ��� ����%>

<%'S: ��Ŭ �̺�Ʈ ����%>
<%
    now_date = cdate(left(lo_now_date,10))
    clickevt_mas_idx = "76" ' (������) 2023 Ȳö�� ������ �⺻�� ��Ŭ (2022.07.12)

    isClickEvent = cdate(lo_now_date) < cdate("2022-07-20")
    
    gift_idx = "658"
    if left(lo_now_date,10)="2022-07-13" then
        gift_idx = "658"
    elseif left(lo_now_date,10)="2022-07-14" then
        gift_idx = "659"
    elseif left(lo_now_date,10)="2022-07-15" then
        gift_idx = "660"
    elseif left(lo_now_date,10)="2022-07-16" then
        gift_idx = ""
    elseif left(lo_now_date,10)="2022-07-17" then
        gift_idx = ""        
    elseif left(lo_now_date,10)="2022-07-18" then
        gift_idx = "661"
    elseif left(lo_now_date,10)="2022-07-19" then
        gift_idx = "662"
    end if       


    begin_yn = "N"
    if cdate(lo_now_date) >= cdate(left(lo_now_date,10) & " 17:00:00") then 
        begin_yn = "Y"
    end if

    isComingSoon = false
    if cdate(lo_now_date) < cdate("2022-07-13 00:00:00") then
        isComingSoon = true
    end if

    shutdown_yn="N"

    function GetClickEvtResult() 
        rv = null    
        strSql = ""
        strSql = strSql & " SELECT CW_GIFT_IDX, CG_ALLOW_DT, CG_GIFT_NM "
        strSql = strSql & " 	, convert(varchar,max(cw_reg_dt),114),convert(varchar,min(cw_reg_dt),114), datediff(ms,max(cw_reg_dt),min(cw_reg_dt))*0.001 "
        strSql = strSql & " 	, CG_SOLDOUT_YN "
        strSql = strSql & " FROM MS_CLICKEVT_GIFT WITH(NOLOCK) "
        strSql = strSql & " 	INNER JOIN MS_CLICKEVT_WINNER WITH(NOLOCK) ON CG_IDX = CW_GIFT_IDX "
        strSql = strSql & " WHERE CG_MAS_IDX= " & clickevt_mas_idx
        strSql = strSql & " GROUP BY CW_GIFT_IDX, CG_ALLOW_DT, CG_GIFT_NM, CG_SOLDOUT_YN "
        strSql = strSql & " ORDER BY CG_ALLOW_DT " 

        Set objRs = DBExec(strSql, "study")
        If Not (objRs.EoF And objRs.BoF) Then 
            rv = objRs.getrows
        End If 
        Call DBClose(objRs)

        GetClickEvtResult = rv
    end function 

    winnerYn = "N"
    if cook_id <> "" then 
        strsql = ""
        strSql = strSql & " SELECT CW_MEM_ID "
        strSql = strSql & " FROM MS_CLICKEVT_WINNER WITH(NOLOCK) "
        strSql = strSql & " WHERE CW_MEM_ID = '"&cook_id&"'  AND CW_MAS_IDX= "&clickevt_mas_idx
        Set objRs = DBExec(strSql, "study")
        if not (objRs.eof and objrs.bof) then
            winnerYn = "Y"
        end if
        Call DBClose(objRs)
    end if
%>
<%'E: ��Ŭ �̺�Ʈ ����%>


<%'S: ������ or ���縮�� ������ %>
<%
    '[9/7��] ������ �ſ��� ���ϸ����� ���� �̺�Ʈ (2022.11.30.)
    certEventCode = 3123
    certEventEnd = cdate(lo_now_date) >= cdate("2032-01-01")
    certCpnNo = 1593
%>
<%'E: ������ or ���縮�� ������ %>


<%'S: �����ı� %>
<%
    '���� ID
    evtTecCd = "zzangyoo"

    '���� ���� ����Ʈ
    reviewChrList = "19180, 19181, 19182, 19271"

    '�����ڵ�
    scode = 61

    '���� �̺�Ʈ ��� ���� ���� ����
    '�ش� ���¸� ���� ���̰ų� ���� ���� 30�� �̳�
    isStudying = false
    if cook_id <> "" then
        strSql = ""
        strSql = strSql & " SELECT 1 FROM MS_STD_APP WITH(NOLOCK) "
        strSql = strSql & "     INNER JOIN MS_APP_DTL WITH(NOLOCK) ON AD_APP_NO = SA_APP_NO "
        strSql = strSql & " WHERE SA_MEM_ID = '"&cook_id&"' "
        strSql = strSql & " AND AD_CHR_CD IN ("&reviewChrList&") AND AD_STD_STAT <> '4' "
        Set Rs = DBexec(strSql, "study")
        if Not Rs.EOF then
            isStudying = true
        end If
        Call DBClose(Rs)
    end if
%>
<%'E: �����ı� %>