<%@ Language=VBScript %>
<%
'======================================================================
'�� �� �� : �ް����͵�-�ΰ�����-���÷��
'����� : ÷������
'�� �� �� : cr_update.asp
'�ۼ����� : 2004/05/12
'�� �� �� : �ֺ���
'-----------------------------------------------------------------------
'��������   ������  ��������
'=======================================================================
'2004/05/12	�ֺ���	�����ۼ�v1.0
'=======================================================================
Response.Expires = -1
%>
<!-- #include virtual = "/common/inc/FunDefNew.asp"-->
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<%


		session.CODEPAGE="949"
		Response.ChaRset = "euc-kr"

		Response.Expires = -10000
		Server.ScriptTimeOut = 3000


		SET Uploadform = Server.CreateObject("ABCUpload4.XForm")
		Uploadform.AbsolutePath = True
		Uploadform.Overwrite = True
		Uploadform.MaxUploadSize = 524288000
        Uploadform.ID = Request.QueryString("ID")        
		

        Dim UploadDir
		UploadDir = "E:\megacst\Data\DEXTDATA\cust\"   '���ε� ���

		Dim oFile, filename
		Set oFile = Uploadform("uploadInputBox")(1)

		UploadFileName = oFile.SafeFileName 'The Windows safe filename.

        file_style = mid(UploadFileName ,  instrrev(UploadFileName,".") ) 

        
        if oFile.Length <= 10240000  then '''/// ����ũ���� 10m ���� 
		
		            if UploadFileName<>"" then '���ε� ������ �ִٸ�

			            ''UploadFileName = ChkFile( UploadDir , FileRename("_01",  filename))'// �ߺ�üũ�� ���ϸ�

                        UploadFileName =  cstr(request.Cookies("userid")) + "_" + cstr( date())+ "_" + cstr(hour(now())) + cstr(minute(now())) + cstr(second(now()))  + file_style

			            oFile.Save UploadDir & "\"& UploadFileName		'// ������ �����Ѵ�.
			            uFileName_1 =  UploadFileName
			            uFileName_size_1 = oFile.Length
			            uFileName_type_1 = oFile.MIMEType

			            OLD_FILE1 = UploadFileName

                        callback_func = Uploadform.item("callback_func")        ''''Request.QueryString("callback_func")

		            Else
			            UploadFileName = ""
		            end If

		            Set UploadForm	= Nothing       

                 f_url = "http://file.megacst.com/DEXTDATA/cust/"  + UploadFileName     
     
                 response.Redirect "/script/smarteditor3/photo_uploader/popup/callback.html?callback_func=" & callback_func & "&bNewLine=true&sFileName=" & UploadFileName & "&sFileURL=" & f_url

       else
                    %>
                      <script language=javascript>
                          alert("10Mbite ������ ���ϸ� ÷�� ���� �մϴ�. ");
                          self.close();                          
                      </script>
                    <%

                    Set UploadForm	= Nothing       
       end if
    
%>
