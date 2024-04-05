<% 
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<%
'=======================================================================
'업 무 명 	: 메가CST-고객센터
'모듈기능 	: 고객센터 - 1:1친절상담 글쓰기 sql
'파 일 명 	: /cust/cust_sub20_write_exe.asp
'작성일자 	: 2013/01/08
'작 성 자 	: 이영태
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'Response.Expires = -1
%>

<% '공통 인클루드 페이지 시작 %>
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '공통 인클루드 페이지 종료 %>

<%
     cook_id = request("cook_id")
     username = request("username")

     idx = request("idx")
     menu_gubun = request("menu_gubun")


	'에디터본문을 받는다
	gcontent = request("hid_data")
	gubun =  request("menu_gubun")
	'전송시 치환한 것을 복원한다
	'gcontent = replace(gcontent,"#_DEXT#","&")

	'DB 입력시 오류 발생할 수 있는 문자를 치환한다
	'gcontent = replace(gcontent,"'","&#039")

	Dim subject, content
	subject	= STR_TO_DB(Request("subject"))
	content	=  STR_TO_DB(gcontent)

    re_hp1 = request("re_hp1") 
    re_hp2 = request("re_hp2") 
    re_hp3 = request("re_hp3") 


    if re_hp2 <> "" and re_hp3 <> "" then
       re_hp = re_hp1 + "-" + re_hp2 + "-" + re_hp3    
    end if
    re_hp_yn = request("re_hp_yn") 
    
    if re_hp_yn="" then
       re_hp_yn = "N"
    end if

    re_email = request("re_email") 
    re_email_yn = request("re_email_yn") 

    if re_email_yn="" then
       re_email_yn = "N"
    end if
    

	board_type		    = 0
	content_encp		= ""



	cate = request("cate")

	Dim iSQL, iDentity

    if idx = "" then 

	    iSQL = "Insert into MS_BRD_ON_SL (BOS_BID, BOS_NUM                   , BOS_FN                   , BOS_RN , BOS_CATE    , BOS_ID         , BOS_NAME, BOS_SUBJECT, BOS_BOARD_TYPE, BOS_CONTENT, BOS_CONTENT_ENCP, BOS_IP                                                               , BOS_RE_HP   ,BOS_RE_HP_YN    , BOS_RE_EMAIL   ,BOS_RE_EMAIL_YN    , BOS_RE_SEND_YN , BOS_RE_SEND_DT ) "
	    iSQL = iSQL & " SELECT          'tecmqna', ISNULL( MAX(BOS_NUM)+1, 1), ISNULL( MAX(BOS_FN)+1, 1), '0'    , '"& cate &"', '"& cook_id &"', '"& username &"', '"& subject &"', "&  board_type &", '"&  content &"', '"&  content_encp &"', '"&  fncRequestVariables("REMOTE_ADDR") &"' ,'"& RE_HP &"','"& re_hp_yn &"','"& RE_EMAIL &"','"& RE_EMAIL_YN &"','N'             ,NULL              FROM MS_BRD_ON_SL WHERE BOS_BID = 'tecmqna' "

    else

        iSQL = " UPDATE MS_BRD_ON_SL SET "		
        iSQL = iSQL & " BOS_CATE = '"& cate &"', "		
		iSQL = iSQL & " BOS_SUBJECT = '"& subject &"', "		
		iSQL = iSQL & " BOS_CONTENT = '"& content &"', "
        iSQL = iSQL & " BOS_RE_HP = '"& RE_HP &"', "
        iSQL = iSQL & " BOS_RE_HP_YN = '"& re_hp_yn &"', "
        iSQL = iSQL & " BOS_RE_EMAIL = '"& RE_EMAIL &"', "
        iSQL = iSQL & " BOS_RE_EMAIL_YN = '"& RE_EMAIL_YN &"' "


		iSQL = iSQL & " WHERE BOS_IDX = "& IDX
    end if

    call dbexec(iSQL, "study") 
    
    
    %>
     <script language=javascript>
        
            alert("저장 되었습니다. ") ; 
            window.parent.location.href="http://www.megacst.com/cust/qna/cust_sub20_end.asp?menu_gubun=<%=gubun%>" ; 

        </script>
    