

<%  Set objUP = Server.CreateObject("SiteGalaxyUpload.Form")  

iImage1=objUP("iImage1")   '÷���� ���� 
iImagesize = objUP("iImage1").Size
 
 
IF   iImagesize > 0  Then                               'Upload�� ������ ������
   IF  iImagesize > 4096000  Then
%>
       <Script  Language=javascript>
           alert(" 4M �̻��� ������ ���ε� �Ұ�! ");
           history.back();
       </Script>
<%  
   End IF
 
    set objFSO = server.CreateObject("Scripting.FileSystemObject") 
 
    UpDir = "d:\megacst_web_2013\megacst\common\smartEditor3\file\" 

    strFile1 = Mid(iImage1, InstrRev(iImage1,"\") + 1)     '��θ� ������ �������� �̸��� ���� (xxx.Ȯ����)

    fName1 = Mid(strFile1, 1, Instr(strFile1,".") - 1)     ' Ȯ���ڸ� ������ �������ϸ�

     LastFile1 = UpDir & strFile1  

    iImage1.SaveAs(LastFile1)     '���丮�� ���� ����


    response.write  LastFile1

end if
%>
