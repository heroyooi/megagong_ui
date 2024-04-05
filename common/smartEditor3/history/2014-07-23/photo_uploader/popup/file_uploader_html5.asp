<%
Server.ScriptTimeOut = 30 * 60 '30분

Response.ContentType = "text/html;charset=EUC-KR"
Response.Expires = 0
Response.AddHeader "Pragma", "no-cache"
Response.AddHeader "Cache-Control", "no-store"

''중복파일명 처리
Function GetFileNameCheck(ByVal filedir, ByVal filename)
    Dim oFSO : set oFSO = Server.CreateObject ("Scripting.FilesystemObject")
    Dim File, FileExt, SaveFileName, i, cNum

    File = filename
    cNum = instrRev(File, ".")
    FileName = Mid(File, 1, cNum - 1)
    FileExt = Mid(File, cNum + 1)
    SaveFileName = File

    filedir = Replace(filedir,"/","\")
    If StrComp(Right(filedir,1),"\") <> 0 Then
        filedir = filedir & "\"
    End IF

    i = 1
    Do While True
        If (oFSO.FileExists(filedir & SaveFileName)) Then
            SaveFileName = FileName & "[" & i & "]" & "." & FileExt
            i  =  i + 1
        Else
            Exit Do
        End if
    Loop

    GetFileNameCheck = SaveFileName '파일명 리턴
    Set oFSO =  Nothing
End Function

Dim FileUrl : FileUrl = "/file/"
Dim FilePath : FilePath = "D:\web_root\megacst\file\"
Dim FileName : FileName= Request.ServerVariables("HTTP_FILE_NAME")
Dim FileNameExt : FileNameExt = LCase(Mid(FileName, InstrRev(FileName, ".") + 1))

''' 이미지 파일 검사 (bmp|gif|jpg|jpeg|png)
If Not (StrComp(FileNameExt,"bmp") = 0 Or StrComp(FileNameExt,"gif") = 0 Or
StrComp(FileNameExt,"jpg") = 0  Or StrComp(FileNameExt,"jpeg") = 0  Or StrComp(FileNameExt,"png") =
0) Then
    Response.End
End IF

'중복파일명 처리
FileName = GetFileNameCheck(FilePath, FileName)

Dim temp : temp = Request.TotalBytes
Dim BytesRead : BytesRead=0
Dim PartSize : PartSize=0

Dim myStream : Set myStream = CreateObject("ADODB.Stream")
myStream.Type = 1 ' binary
myStream.Mode = 3
myStream.Open

Do While BytesRead < temp
    PartSize = 64*1024   '64KB

    If PartSize + BytesRead > temp Then
        PartSize = temp - BytesRead
    End if

    DataPart = Request.BinaryRead(PartSize)
    BytesRead = BytesRead + PartSize
    myStream.Write(DataPart)
Loop

GetFileNameCheck(asPath, asFile)
myStream.SaveToFile(FilePath & FileName)
myStream.Close : Set myStream = Nothing

Dim sFileInfo : sFileInfo = "&bNewLine=true"
sFileInfo = sFileInfo & "&sFileName=" & FileName
sFileInfo = sFileInfo & "&sFileURL=" & FileUrl & FileName
Response.Write sFileInfo
Response.End
%>