<%
'=======================================================================
'업 무 명 : 메가스터디-입시정보실 
'모듈기능 : 학력평가-오답노트-음성듣기
'파 일 명 : X_Text.asp
'작성일자 : 2004/12/22
'작 성 자 : 김염무
'-----------------------------------------------------------------------
'변경일자   변경자  변동내역
'=======================================================================
'
'=======================================================================
%>

<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- 공통 인클루드 페이지 종료 -->

<html lang="ko">
<head>
<title>합격 불변의 법칙 MegaStudy</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="shortcut icon" href="<%=img_common%>/megastudy.ICO">
<link rel="stylesheet" type="text/css" href="<%=url_common%>/css/style.css">
<script language="JavaScript" src="<%=url_common%>/js/megastudy.js"></script>
</head>

<%
    seq=fncRequest("seq")
    no=fncRequest("no")
    code=fncRequest("code")
    
	
    '기본 디비 연결자
	CUR_DB_NM = "exammain"	
	
	'MEGAEXAM_OLD_SUM DB에 있을 경우 연결자 변경
	Sql = "SELECT COUNT(1) FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & seq
	call RSExec(Rs,0,3,Sql,"exam_old")
	if Rs(0)>0 then
        CUR_DB_NM = "exam_old"	    
	end if
	RSClose(Rs)			  
        
    Sql = ""
    Sql = Sql & "SELECT EI_SEQ,EI_EXAM_DT,EI_GRADE FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & seq
    call RSExec(Rs,0,3,Sql,CUR_DB_NM)
    
    if not Rs.eof then
	    seq=trim(Rs(0))
	    exam_dt=trim(Rs(1))
	    exam_grd=trim(Rs(2))
	    exam_year=year(Rs(1))
	    RSClose(Rs)
	    
	    exam_month=month(exam_dt)
	    exam_dt=replace(exam_dt,"-","")
	    img_ox_path=mid(exam_dt,3,6)   
  	end if   
  		
    '이미지 경로//듣기파일경로
    SELECT CASE exam_grd 				            		
        CASE "3"
        	  if exam_month<>"11" then
	            img_root_folder=img_ox_path & "/G3/OD"
	            len_file_folder=img_ox_path & "/H3/"	 
	          else							
				img_root_folder=img_ox_path & "/A/G3/OD"
				len_file_folder=img_ox_path & "/H3/"															
	          end if
        CASE "2"
            img_root_folder=img_ox_path & "/G2/OD"
            len_file_folder=img_ox_path & "/H2/"
        CASE "1"
            img_root_folder=img_ox_path & "/G1/OD"
            len_file_folder=img_ox_path & "/H1/"                                                                                                        																																						
    END SELECT
	 
    SQLS = "SELECT am_jimoon FROM me_ans_mas WITH(NOLOCK) WHERE am_sub_cod='"&code&"' AND am_seq="&seq&" AND am_exam_type=1 AND am_no="&no
    Call RSExec(RS,0,3,SQLS,CUR_DB_NM)	
    
    if not Rs.eof then
	    RSS3 = replace(trim(Rs(0)),chr(13)&chr(10),"<br>")
	    
	    RSS3 = replace(RSS3,"'","`")
	    RSS3 = replace(RSS3,chr(34),"'")		   
  	end if
  	RSClose(Rs)
%>
<body leftmargin="0" marginheight="0" marginwidth="0" topmargin="0" bgcolor="#FFFFFF">
<table width="490" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><img src="<%=img_entinfo%>/exam/20031204_bb/top_text.gif" width="490" height="66"></td>
  </tr>
  <tr> 
    <td> 
      <table width="490" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td> 
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="C0D9EA" align="center">
              <tr> 
                <td bgcolor="E8F6FF" style="padding:10 10 10 10;"> 
                  <table width="410" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="13"><img src="<%=img_entinfo%>/exam/20031204_bb/icon_box4.gif" width="8" height="6"></td>
                      <td width="387"><font color="13789E"><b><%=no%>번문제 지문</b></font></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td>
      <table width="470" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td>
					<%if trim(RSS3) <>"" then %>
					<img src="<%=replace(img_main,"next.megastudy.net:8080","img.megastudy.net")%>/exam/exam_Test_img/<%=exam_year%>/<%=img_root_folder%>/img_<%=lcase(trim(code))%>/<%=lcase(trim(RSS3))%>"><br>
					<%end if%>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td align="center"><a style="cursor:hand" onclick="self.close();"><img src="<%=img_entinfo%>/exam/20031204_bb/bn_ok.gif" width="56" height="20"></a></td>
  </tr>
  <tr> 
    <td>&nbsp; </td>
  </tr>
</table>
</body>
</html>
