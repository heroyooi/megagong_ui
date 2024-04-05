<%
'###############################################################
'-- FILE NAME	:
'-- DESC		: 파일 및 폴더 관련
'-- WRITER		: 김은성 
'-- Validation	: 
'###############################################################	



'###################################################################################
'	테이블에 맞춰 이미지 사이즈 다시 지정하기
'###################################################################################


Function ReSizeimg(FileName,x,y)
		Dim objImg
		 Set objImg = LoadPicture(FileName)
			
		
			Dim x1, y1, x2, y2
			x1 = CLng(CDbl(objImg.Width) * 24 / 635)
			y1 = CLng(CDbl(objImg.Height) * 24 / 635)				
						
			x2 = x
			y2 = y
			
			Dim FileOrgName
			FileOrgName = Mid(FileName, InStrRev(FileName, "/")+1)				
			
			Dim Dir
			Dir = Mid(FileName,instr(FileName,"/"),Len(Replace(FileName,FileOrgName,"")) - instr(FileName,"/")+1)
			
			if x1 >= y1 then
			   y2 = cint((y1 * x2) / x1)
			else
			   x2 = cint((x1 * y2) / y1)
			end if
			
			IF x1>x2 then
				FName = "<img src='"& Dir & FileOrgName&"' width='"& x2 &"' height='" & y2 & "'>"
			else
				FName = "<img src='"& Dir & FileOrgName&"' width='"& x1 &"' height='" & y1 & "'>"
			End IF
		set objImg = nothing
		
End Function




'###################################################################################
' 이미지 사이즈 알아내기
' 
' Parameter	: 
' WRITER	: 김은성 2004-06-17
'###################################################################################

Sub GetImageSize(ByVal f, ByRef x, ByRef y) 
	
	
	IF fileexists(f) Then 
	
		Dim p
		Set p = LoadPicture(f) 
		x = CLng(CDbl(p.Width) * 24 / 635)  ' CLng 의 라운드 오프의 기능을 이용하고 있다. 
		y = CLng(CDbl(p.Height) * 24 / 635) ' CLng 의 라운드 오프의 기능을 이용하고 있다. 
		Set p = Nothing 	
		
	Else
	
		X = ""
		y = ""		
	
	end if

End Sub





'###################################################################################
'	파일 삭제(deletefile)
'	response.write "'./test1.txt' 파일 삭제: "& deletefile("./test1.txt", false) &"<hr>"
'###################################################################################
 
 
function deletefile(filename, force)
	Dim fc
	deletefile = false
	set fc = server.createobject("scripting.filesystemobject")
	if fc.fileexists(getabsolutepathname(filename)) then
		deletefile = fc.deletefile(getabsolutepathname(filename), force)
	end if
	set fc = nothing
end function



'===============================================================
'	전체경로 반환(getabsolutepathname)
'	response.write "'.' 전체경로 반환: "& getabsolutepathname(".\test\test.co.kr") &"<br>"
'	response.write "'.' 전체경로 반환: "& getabsolutepathname("c:\test\test.co.kr") &"<br>"
'	response.write "'.' 전체경로 반환: "& getabsolutepathname("test\test.co.kr") &"<hr>"
'
function getabsolutepathname(path)
	getabsolutepathname = path
	if server.createobject("scripting.filesystemobject").getdrivename(getabsolutepathname) = "" then getabsolutepathname = ".\"& getabsolutepathname end if
	if instr(getabsolutepathname, ".") = 1 then getabsolutepathname = server.mappath(getabsolutepathname) end if
	getabsolutepathname = server.createobject("scripting.filesystemobject").getabsolutepathname(getabsolutepathname)
end function





'###################################################################################
' 파일 체크(fileexists)' 
' response.write "'./default.asp' 파일 체크: "& fileexists("./default.asp") &"<
' WRITER	: 김은성 2004-06-17
'###################################################################################


function fileexists(filename)
	Dim fc
	set fc = server.createobject("scripting.filesystemobject")
	fileexists = fc.fileexists(getabsolutepathname(filename))
	set fc = nothing
end function






%>