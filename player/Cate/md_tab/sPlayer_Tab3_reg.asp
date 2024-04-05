<%
'=======================================================================
'업 무 명 :
'모듈기능 :
'파 일 명 :
'작성일자 :
'작 성 자 :
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
'    Response.Expires    = -1
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
player_type = fncRequest("player_type")
kbn = fncRequest("kbn")
chr_cd = fncRequest("chr_cd")
app_no = fncRequest("app_no")
lec_cd = fncRequest("lec_cd")
lec_seq = fncRequest("lec_seq")
wide_kbn = fncRequest("wide_kbn")

strSql = "select cm_tec_cd, cm_dom_cd from ms_chr_mas with(nolock) where cm_chr_cd = " & chr_cd

tec_cd = "" 
dom_cd = ""
Set Rs = DbExec(strSql, "study")
If Not Rs.Eof Then
	tec_cd = rs(0)
	dom_cd = rs(1)
End If
Call RsClose(Rs)

EXTRA2 = fncRequest("EXTRA2")
ttl = STR_TO_DB(fncRequest("ttl"))
cont = STR_TO_DB(fncRequest("cont"))
cont = replace(cont,Chr(13)&Chr(10),"<br>")
cont = replace(cont,"'","""")
cate = fncrequest("cate")

'Response.write cont

strSql = " Insert into MS_CAFE_BRD_DET_SL (CBDS_NUM, CBDS_BID, CBDS_CATE, CBDS_FN, CBDS_ID, CBDS_NAME, CBDS_SUBJECT, CBDS_CONTENT, CBDS_NOTICE, CBDS_CHILD_CNT, CBDS_EXTRA2, CBDS_EXTRA3, CBDS_EXTRA4,CBDS_SITE_SHOW ) "
strSql = strSql & " select isNull( max(CBDS_NUM)+1, 1), '"&tec_cd&"', '"&cate&"', isNull( MAX(CBDS_FN)+1, 1), '"&Cook_Id&"',  '"&Cook_Name&"', '"&ttl&"', '"&cont&"', '0', '0', '"&EXTRA2&"', '', '','"&h_dcd&"' "
strSql = strSql & " From MS_CAFE_BRD_DET_SL Where CBDS_BID = '"&tec_cd&"' "

strSql = strSql & " "
strSql = strSql & " INSERT INTO MS_CAFE_BRD_DOM([CBD_BRD_TABLE],[CBD_BRD_IDX],[CBD_BRD_DOM_CD] ) "
strSql = strSql & "	SELECT 'MS_CAFE_BRD_DET',@@IDENTITY," & dom_cd

'Response.write strSql
'Response.end
Call DbExec(strSql, "study")
Call DbClose(DbCon)
Call GetMsgBoxBack("등록되었습니다.")
%>