
<% 
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=utf-8"
%>
<%  

Set objUP = Server.CreateObject("SiteGalaxyUpload.Form")  

uploadInputBox=objUP("uploadInputBox")   '첨부할 파일 
iImagesize = objUP("uploadInputBox").Size
 
 
IF   iImagesize > 0  Then                               'Upload할 파일이 있으면

   IF  iImagesize > 4096000  Then
%>
       <Script  Language=javascript>
           alert(" 4M 이상의 파일은 업로드 불가! ");
           history.back();
       </Script>
<%  
   End IF
 
    set objFSO = server.CreateObject("Scripting.FileSystemObject") 
 
    UpDir = "E:\megacst\Data\DEXTDATA\cust\"

    strFile1 = Mid(uploadInputBox, InstrRev(uploadInputBox,"\") + 1)     '경로를 제외한 순수파일 이름만 추출 (xxx.확장자)

    strFile1 = cstr(request.Cookies("userid")) + "_" + cstr( date())+ "_" + cstr(hour(now())) + cstr(minute(now())) + cstr(second(now())) + "_" + strFile1

    ''''fName1 = Mid(strFile1, 1, Instr(strFile1,".") - 1)     ' 확장자를 제외한 순수파일명

    LastFile1 = UpDir & strFile1  

    uploadInputBox.SaveAs(LastFile1)     '디렉토리에 파일 저장

    ''f_url = "/file/" & strFile1

     f_url = "http://file.megacst.com/DEXTDATA/cust/"  + strFile1


    callback_func = objUP("callback_func")


    response.Redirect "/script/smarteditor3/photo_uploader/popup/callback.html?callback_func=" & callback_func & "&bNewLine=true&sFileName=" & uploadInputBox & "&sFileURL=" & f_url

    
end if

%>