<%@ Language=VBScript %>
<%
'======================================================================
'�� �� �� : �ް�����-������
'����� : �Խ��� ����Ʈ
'�� �� �� : list.asp
'�ۼ����� : 2008-09-17
'�� �� �� :
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'2009-04-10 ������ ���/PEET �����䰭 + ��ġ������ �Խÿ䰭 , ���γ�������, ���� �߰�
'=======================================================================
'Response.Expires = -1

%>
<!-- ���� ��Ŭ��� ������ ���� -->

<!-- #include virtual = "/common/inc/FunDefNew.asp"-->
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/upinfo.asp"-->
<!-- ���� ��� �⺻ HTML END -->

<%
     refererURL= request.servervariables("HTTP_REFERER")

	session.CODEPAGE="949"
	Response.ChaRset = "euc-kr"

	Response.Expires = -10000
	Server.ScriptTimeOut = 3000
   

	SET Uploadform = Server.CreateObject("ABCUpload4.XForm")
	Uploadform.AbsolutePath = True
	Uploadform.Overwrite = True
'	Uploadform.MaxUploadSize = 524288000
	Uploadform.MaxUploadSize = 102400000
	Uploadform.ID = Request.QueryString("ID")

   


    cook_id =  Uploadform("cook_id")

    username =  Uploadform("username")
    idx =  Uploadform("idx")
    menu_gubun =  Uploadform("menu_gubun")
    

	'�����ͺ����� �޴´�
	gcontent = Uploadform("hid_data")
	gubun =  Uploadform("menu_gubun")
	'���۽� ġȯ�� ���� �����Ѵ�
	'gcontent = replace(gcontent,"#_DEXT#","&")

	'DB �Է½� ���� �߻��� �� �ִ� ���ڸ� ġȯ�Ѵ�
	'gcontent = replace(gcontent,"'","&#039")

	Dim subject, content
	subject	= sqlFilter(Uploadform("subject"))
	content	=  sqlFilter(gcontent)

    

    Dim UploadDir
	UploadDir = "E:\megacst\Data\DEXTDATA\cust\"   '���ε� ���

	Dim oFile, filename
	Set oFile = Uploadform("uploadInputBox")(1)



    re_hp1 = Uploadform("re_hp1")
    re_hp2 = Uploadform("re_hp2") 
    re_hp3 = Uploadform("re_hp3")


    if re_hp2 <> "" and re_hp3 <> "" then
       re_hp = re_hp1 + "-" + re_hp2 + "-" + re_hp3    
    end if
    re_hp_yn = Uploadform("re_hp_yn") 
    
    if re_hp_yn="" then
       re_hp_yn = "N"
    end if

    re_email = Uploadform("re_email") 
    re_email_yn = Uploadform("re_email_yn") 

    if re_email_yn="" then
       re_email_yn = "N"
    end if
    

	board_type		    = 0
	content_encp		= ""

	cate = Uploadform("cate")

    REMOTE_ADDR = Uploadform("REMOTE_ADDR")


    
    '////////////////////////////////////////////////////////////////////////////////////����ũ�� 
    if oFile.length>15240000  then '''/// ����ũ���� 10m ����  15240000
    %>
       <script >
           alert("10M ���� ���� ÷�θ� ���� �մϴ�. ");
           window.history.back(); 
       </script>
    <%      
          Set UploadForm	= Nothing       
        response.end 
    else       
        UploadFileName = oFile.SafeFileName
    end if
    '////////////////////////////////////////////////////////////////////////////////////����ũ�� 

    isql = " set nocount on "
	
    if idx = "" then 
        
        
	    iSQL = iSQL & " Insert into MS_BRD_ON_SL (BOS_BID, BOS_NUM                   , BOS_FN                   , BOS_RN , BOS_CATE    , BOS_ID         , BOS_NAME, BOS_SUBJECT, BOS_BOARD_TYPE, BOS_CONTENT, BOS_CONTENT_ENCP, BOS_IP                                                               , BOS_RE_HP   ,BOS_RE_HP_YN    , BOS_RE_EMAIL   ,BOS_RE_EMAIL_YN    , BOS_RE_SEND_YN , BOS_RE_SEND_DT ) "
	    iSQL = iSQL & " SELECT          'tecmqna', ISNULL( MAX(BOS_NUM)+1, 1), ISNULL( MAX(BOS_FN)+1, 1), '0'    , '"& cate &"', '"& cook_id &"', '"& username &"', '"& subject &"', "&  board_type &", '"&  content &"', '"&  content_encp &"', '"& REMOTE_ADDR &"' ,'"& RE_HP &"','"& re_hp_yn &"','"& RE_EMAIL &"','"& RE_EMAIL_YN &"','N'             ,NULL              FROM MS_BRD_ON_SL WHERE BOS_BID = 'tecmqna' "

        iSql = iSQL & " select @@identity "
    else

        iSQL = iSQL &" UPDATE MS_BRD_ON_SL SET "		
        iSQL = iSQL & " BOS_CATE = '"& cate &"', "		
		iSQL = iSQL & " BOS_SUBJECT = '"& subject &"', "		
		iSQL = iSQL & " BOS_CONTENT = '"& content &"', "
        iSQL = iSQL & " BOS_RE_HP = '"& RE_HP &"', "
        iSQL = iSQL & " BOS_RE_HP_YN = '"& re_hp_yn &"', "
        iSQL = iSQL & " BOS_RE_EMAIL = '"& RE_EMAIL &"', "
        iSQL = iSQL & " BOS_RE_EMAIL_YN = '"& RE_EMAIL_YN &"' "

		iSQL = iSQL & " WHERE BOS_IDX = "& IDX

        iSql = iSQL & " select '"& IDX &"' "
    end if

    call rsexec(rs,0,0,isql, "study") 
    if not rs.eof then
       cur_idx =  rs(0)
    end if
    call rsclose(rs) 


    '''//////////////////
      

   if UploadFileName<>"" then '���ε� ������ �ִٸ�

			            ''UploadFileName = ChkFile( UploadDir , FileRename("_01",  filename))'// �ߺ�üũ�� ���ϸ�

                UploadFileName =  cstr(request.Cookies("userid")) + "_" + cstr( date())+ "_" + cstr(hour(now())) + cstr(minute(now())) + cstr(second(now())) + "_" + UploadFileName

			    oFile.Save UploadDir & "\"& UploadFileName		'// ������ �����Ѵ�.
			    uFileName_1 =  UploadFileName
			    uFileName_size_1 = oFile.Length
			    uFileName_type_1 = oFile.MIMEType

                ssql = " insert ms_brd_on_fi (BOS_IDX,BOF_NUM,BOF_BID,BOF_FILE_NAME,BOF_FILE_SIZE,BOF_FILE_TYPE,BOF_FILE_CNT,BOF_UPLOAD_DATE )          "
                ssql = ssql + " select        bos_idx,bos_num,bos_bid,'"& UploadFileName &"','"&uFileName_size_1 &"','"&uFileName_type_1&"','1',getdate() from MS_BRD_ON_SL with(nolock) where bos_idx = " & cur_idx

                call dbexec(ssql, "study") 

               ''response.Write ssql

    end if
       
       			            
    Set UploadForm	= Nothing      
    
  '  response.end  
    
    %>

  <script language=javascript>

        alert("���� �Ǿ����ϴ�. ");
        window.parent.location.href = "http://www.megacst.com/cust/qna/cust_sub20_end.asp?menu_gubun=<%=gubun%>"; 

  </script>
    