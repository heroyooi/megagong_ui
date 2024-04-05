<%@ Language=VBScript %>
<%
'======================================================================
'업 무 명 : 메가스터디-부가서비스-논술첨삭
'모듈기능 : 첨삭저장
'파 일 명 : cr_update.asp
'작성일자 : 2004/05/12
'작 성 자 : 최병권
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'2004/05/12	최병권	최초작성v1.0
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
		UploadDir = "E:\megacst\Data\DEXTDATA\cust\"   '업로드 경로

		Dim oFile, filename
		Set oFile = Uploadform("uploadInputBox")(1)

		UploadFileName = oFile.SafeFileName 'The Windows safe filename.

        file_style = mid(UploadFileName ,  instrrev(UploadFileName,".") ) 

        
        if oFile.Length <= 10240000  then '''/// 파일크가는 10m 이하 
		
		            if UploadFileName<>"" then '업로드 파일이 있다면

			            ''UploadFileName = ChkFile( UploadDir , FileRename("_01",  filename))'// 중복체크된 파일명

                        UploadFileName =  cstr(request.Cookies("userid")) + "_" + cstr( date())+ "_" + cstr(hour(now())) + cstr(minute(now())) + cstr(second(now()))  + file_style

			            oFile.Save UploadDir & "\"& UploadFileName		'// 파일을 저장한다.
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
                          alert("10Mbite 이하의 파일만 첨부 가능 합니다. ");
                          self.close();                          
                      </script>
                    <%

                    Set UploadForm	= Nothing       
       end if
    
%>
