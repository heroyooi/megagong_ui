<%
'	If Request.ServerVariables("REMOTE_ADDR") = "172.15.13.220" or Request.ServerVariables("REMOTE_ADDR") = "211.58.239.150" or left(Request.ServerVariables("REMOTE_ADDR"),7) = "10.9.0." Then
'	If cook_id = "yesmj1" Or cook_id = "lakemind9" Or cook_id = "lakemind" Or cook_id = "san123p"  Then
'		catenoid_yn = "Y"
'	Else
'		catenoid_yn = "N"
'	End If
	catenoid_yn = "N"

security_key = "megagong"	'서비스 계정 키(CMS 설정 페이지에서 확인 가능)
awt_code = ""								'오디오 워터마크 코드(API로 가져오는 값)
expire_time = 12000							'토큰 유효기간(생성한 시간부터 초단위) 200분
playlist_flag = FALSE						'현재 사용하지 않음

media_profile_key1 = security_key&"-pc1-high"				'인코딩 프로파일 키(화질 지정) - 슈퍼와이드 고화질
media_profile_key2 = security_key&"-mobile1-normal"				'인코딩 프로파일 키(화질 지정) - 모바일 일반화질


SERVICE_ACCOUNT_KEY = "megagong"
CUSTOM_USER_KEY = "2e5f115eaab9d622d6414b83a6140e6ed3b81ed31f602cb1f2accba6529ca3c0"

Const sBASE_64_CHARACTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/" 

Function Base64encode_cate(ByVal asContents)
	Dim lnPosition
	Dim lsResult
	Dim Char1
	Dim Char2
	Dim Char3
	Dim Char4
	Dim Byte1
	Dim Byte2
	Dim Byte3
	Dim SaveBits1
	Dim SaveBits2
	Dim lsGroupBinary
	Dim lsGroup64

	if Len(asContents) Mod 3 > 0 Then _
	asContents = asContents & String(3 - (Len(asContents) Mod 3), " ")
	lsResult = ""

	For lnPosition = 1 To Len(asContents) Step 3
		   lsGroup64 = ""
		   lsGroupBinary = Mid(asContents, lnPosition, 3)

		   Byte1 = Asc(Mid(lsGroupBinary, 1, 1)): SaveBits1 = Byte1 And 3
		   Byte2 = Asc(Mid(lsGroupBinary, 2, 1)): SaveBits2 = Byte2 And 15
		   Byte3 = Asc(Mid(lsGroupBinary, 3, 1))

		   Char1 = Mid(sBASE_64_CHARACTERS, ((Byte1 And 252) \ 4) + 1, 1)
		   Char2 = Mid(sBASE_64_CHARACTERS, (((Byte2 And 240) \ 16) Or _
		   (SaveBits1 * 16) And &HFF) + 1, 1)
		   Char3 = Mid(sBASE_64_CHARACTERS, (((Byte3 And 192) \ 64) Or _
		   (SaveBits2 * 4) And &HFF) + 1, 1)
		   Char4 = Mid(sBASE_64_CHARACTERS, (Byte3 And 63) + 1, 1)
		   lsGroup64 = Char1 & Char2 & Char3 & Char4

		   lsResult = lsResult + lsGroup64
	 Next

	 Base64encode_cate = lsResult
End Function

%>