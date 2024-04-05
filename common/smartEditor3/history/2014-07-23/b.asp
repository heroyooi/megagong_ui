

<%  Set objUP = Server.CreateObject("SiteGalaxyUpload.Form")  

iImage1=objUP("iImage1")   '첨부할 파일 
iImagesize = objUP("iImage1").Size
 
 
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
 
    UpDir = "d:\megacst_web_2013\megacst\common\smartEditor3\file\" 

    strFile1 = Mid(iImage1, InstrRev(iImage1,"\") + 1)     '경로를 제외한 순수파일 이름만 추출 (xxx.확장자)

    fName1 = Mid(strFile1, 1, Instr(strFile1,".") - 1)     ' 확장자를 제외한 순수파일명

     LastFile1 = UpDir & strFile1  

    iImage1.SaveAs(LastFile1)     '디렉토리에 파일 저장


    response.write  LastFile1

end if
%>
