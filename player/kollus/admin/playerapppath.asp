<%
        '1:���¸�/�ܿ��� ���, 2:�ܿ�����Ʈ ���
    strSQL = "Exec Msp_Get_Lec_Mas_04 " & CHR_CD &"," & LEC_CD & ",0,'ADMIN'"
    
    SET RS = DBexec(strSQL,"study")
    IF NOT RS.EOF THEN
	    CHR_NM = REPLACE(TRIM(RS(0)),"&","/")	'���¸�
        CHR_NM = REPLACE(TRIM(RS(0)),"'","`")	'���¸�
	    LEC_NM = REPLACE(TRIM(RS(1)),"&","")	'�ܿ���
        LEC_NM = REPLACE(TRIM(RS(1)),"'","`")	'�ܿ���
        HighPath = RS(2)	'�߽� ������PATH
        NormalPath = RS(3)	'�Ϲ� ������PATH
	    DRM_FLG = RS(5)	'DRM ����
	    TEC_CD  = TRIM(RS(6))	'�����ڵ�
	    DOM_CD  = TRIM(RS(7))	'�����ڵ�
    Else
        CALL DBClose(RS)
        response.end
    END IF

    if DNG_KBN = "10" then
        PATH = NormalPath	'�Ϲ� ������PATH
    else
        PATH = HighPath	'�߽� ������PATH
    end if

    DBPath = PATH
    DNGPATH = PATH
%>