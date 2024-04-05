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
'20100319	김정권	#001	강좌(강의)인덱스 대응
'20120917	S.HAN	#002 프리패스계열 상품인 경우 동일 거래번호에 동일 강좌 여러번 신청시 수강중인 강좌만 표시
'=======================================================================
	Response.AddHeader "Pragma","no-cache"
	Response.AddHeader "cache-control", "no-store"
    Response.Expires    = -1
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%
player_type = request("player_type")
kbn = request("kbn")
chr_cd = request("chr_cd")
app_no = request("app_no")
lec_cd = request("lec_cd")
lec_seq = request("lec_seq")
wide_kbn = request("wide_kbn")
sel_lec_cd = request("sel_lec_cd")

Idx_flg = request("Idx_flg")

UseWidth = Trim(request("UseWidth"))		'스크린 크기 구하기
UseHeight = Trim(request("UseHeight"))	'스크린 크기 구하기
'Response.write UseWidth & "<br>"
'Response.write UseHeight & "<br>"
'Response.end

'// 선생님카페 존재여부 확인
cafe_yn = "Y"
strSql = "select tm_cafe_yn from ms_chr_mas with(nolock) join ms_tec_mas with(nolock) on cm_tec_cd = tm_tec_cd where cm_chr_cd = " & chr_cd
'Response.write strSql
'Response.end
Set RsCafe = DbExec(strSql, "study")
If Not RsCafe.Eof Then
	cafe_yn = RsCafe(0)
End If
Call RsClose(RsCafe)

'response.write bIdx
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" style="height:100%;">


<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>메가CST - 강의목차</title>
<link href="/common/css/201504/2013_style.css" rel="stylesheet" type="text/css">
<script  language=javascript >
window.onbeforeunload = function() {};
// IE9 팝업창이 먼저 닫히는 버그수정
</script>
</head>
<body style="height:100%;">

<!--플레이어 우측 시작 S-->
<div class="player_r_wrap" style="min-height:460px;">
    <table border="0" cellpadding="0" cellspacing="0" style="width:100%; height:100%; vertical-align:top;">
        <tr>
            <td style="vertical-align:top; height:100%;">
             
             <!--우측 컨텐츠 시작 S-->
             <table border="0" cellpadding="0" cellspacing="0"  class="column_play_r">
                 <tr><td class="playcont_r_top"></td></tr>
                 
                 <tr>
                     <td style="height:32px;">
                        <!--탭영역 S-->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
								<%If Idx_flg = "1" Then%>
                                <td><a href="#"><img src="http://img.megagong.net/player/2015_newskin/etc/tab01_on.gif" alt="강의목차"></a></td>
                                <td><a href="#" onFocus="this.blur();" ><img src="http://img.megagong.net/player/2015_newskin/etc/tab02_off.gif" alt="학습Q&A" onMouseOver="this.src=this.src.replace('_off','_on');" onMouseOut="this.src=this.src.replace('_on','_off');"></a></td>
								<%Else%>
								<td><img src="http://img.megagong.net/player/2015_newskin/etc/tab01_on.gif" alt="강의목차"></td>
								 <%If cafe_yn = "Y" Then %>
								<td><a href="/player/cate/md_tab/sPlayer_Tab3.asp?player_type=<%=player_type%>&kbn=<%=kbn%>&tec_nm=<%=tec_nm%>&chr_cd=<%=chr_cd%>&app_no=<%=app_no%>&lec_cd=<%=lec_cd%>&lec_seq=<%=lec_seq%>&wide_kbn=<%=wide_kbn%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&sel_lec_cd=<%=sel_lec_cd%>" onFocus="this.blur();" ><img src="http://img.megagong.net/player/2015_newskin/etc/tab02_off.gif" alt="학습Q&A" onMouseOver="this.src=this.src.replace('_off','_on');" onMouseOut="this.src=this.src.replace('_on','_off');"></a><%Else%><td width="79" background="<%=img_main%>/player/2012_newskin/etc/bg.gif"><%End If%></td>
								<%End If%>
                            </tr>
                       </table>
                      <!--탭영역 end-->
                     </td>
                 </tr>
                 
                 <tr>
                     <td style="vertical-align:top;">
                        <!-- 내용 S -->
                        <div class="column_playcont">
						<%
						userid = request.cookies("userid")
						if chr_cd = "" then chr_cd = 10241
						strSql = "select cm_std_mlt, tm_tec_nm from ms_chr_mas with(nolock) join ms_tec_mas with(nolock) on tm_tec_cd = cm_tec_cd where cm_chr_cd = " & chr_cd
						call RSExec(rs, 0, 3, strSql, "study")
						if not rs.EOF then
							beisu = rs(0)
							tec_nm = rs(1)
						end if
						RSClose(rs)

						'	strSql = "select lm_lec_cd, lm_lec_nm,  lm_lec_tm, "
						'	strSql = strSql & " isnull((select top 1 lhs_last_tm from ms_lec_his_sum with(nolock) where lhs_mem_id = '"&userid&"' and lhs_lec_cd = lm_lec_cd and lhs_app_no = '"& app_no &"'), 0), lm_lec_seq "
						'
						'	strSql = strSql & " ,(SELECT TOP 1 PDH_AUTOCNT FROM MS_PTDDOWN_HIS with(nolock) WHERE PDH_APP_NO = AD_APP_NO AND PDH_APP_SEQ = AD_APP_SEQ AND PDH_CHR_CD=" & chr_cd & " AND PDH_LEC_CD=LM_LEC_CD AND PDH_MEM_ID='"&userid&"') "
						'	strSql = strSql & ", isnull(CHARINDEX(','+CONVERT(VARCHAR,LM_LEC_SEQ)+',',(SELECT ','+SOA_LEC_SEQS+',' FROM MS_STD_OFF_ADD with(nolock) WHERE SOA_APP_NO = AD_APP_NO AND SOA_CHR_CD = AD_CHR_CD)),1) "
						'	strSql = strSql & " from ms_lec_mas with(nolock) "
						'	strSql = strSql & " INNER JOIN MS_APP_DTL with(nolock) ON LM_CHR_CD=AD_CHR_CD "
						'
						'	strSql = strSql & " where lm_chr_cd = " & chr_cd & " and lm_open_yn = 'Y' "
						'	strSql = strSql & " and ad_app_no = '"& app_no &"' "
						'	strSql = strSql & " AND AD_STD_STAT = 2 "			'#002 INS
						'	strSql = strSql & " order by lm_lec_seq "
						strSql = "exec USP_GET_CHR_LEC_ING '" & userid & "', " & chr_cd & "," & app_no & " "
						'rw strsql 
						call RSExec(rs, 0, 3, strSql, "study")
						lec_cnt  = rs.recordcount
						%>
                            <!-- 타이틀 S -->
                            <p class="txt_title pb10">
                                <span style="padding-right:5px"><img style="vertical-align:2px;" src="http://img.megagong.net/player/2015_newskin/etc/dot_img.gif"></span>현재 <strong class="ut_12p_o1"><%=lec_cnt%></strong> 회차의 강의가 있습니다.
                            </p>
                            <!-- //타이틀 E -->
                            
                            <!--강의 목차 리스트 S -->
                            <div id="chr_list" style="height:300px; width:218px; background-color:transparent; overflow-x:hidden; overflow-y:auto;">
                                <form name="lecform" method="post" target="top">
                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="player_basicboard">
                                        <colgroup><col width="55px" /><col width="*" /></colgroup>
                                        <tr>
                                          <th>강수</th>
                                          <th>강의명</th>
                                        </tr>
                                       <%
										iLoop = 1
										cnt = 0
										do while not rs.EOF
											rest_tm = round(CDbl(beisu) * CDbl(rs(2))) * 60 - rs(3)
											if (iLoop mod 2) = 0 then
												bg = "#f5f5f5"
											else
												bg = ""
											end if
										%>
                                        <tr>
                                          <td align="left">
										  <%
										  If cLng(rs(0))=cLng(lec_cd) then%>→ <%else
                        					If (NULLCHECK(rs(5)) = true and rs(6) > 0) Or (NULLCHECK(rs(5)) = true and rs(7) = ",1상담툴,") Then%><input type="checkbox" name="sel_lec_cd" <%If instr(sel_lec_cd,rs(0)) > 0 then%>checked<%end if%> value="<%=rs(0)%>"><%else%><%end If
										  end If
										  %><%=rs(4)%>강
										  </td>
                                          <td class="ut_11p_g3"><%If rest_tm > 0 then%><a href="javascript:play_lec(<%=rs(0)%>);"><%=rs(1)%></a><%else%><%=rs(1)%><%end if%></td>
                                        </tr>
										<%
											iLoop = iLoop + 1
											cnt = cnt + 1
											rs.MoveNext
										loop
										RSClose(rs)
										%>
                                    </table>
                                </form>
                            </div>
                            <!--강의 목차 리스트 E -->
                            
                            <!-- 버튼 S -->
                            <div style="text-align:right; padding-top:10px;">
                                <a href="#"><img src="http://img.megagong.net/player/2015_newskin/etc/btn_selectplay.gif" onClick="SetSelectPlay();" style="cursor:pointer;" alt="선택재생"></a>
                            </div>
                             <!-- //버튼 E -->
                             
                        </div>
                        <!-- //내용 E -->
                     </td>
                 </tr>
                 <tr>
                     <td style="vertical-align:top;" >
                          <!--다음사전검색 S-->
							<!-- #include file = "./sPlayer_DaumDic.asp"-->
                          <!--//다음사전검색E-->
                     </td>
                 </tr> 
                 
                 <tr><td class="playcont_r_bottom"></td> </tr>
             </table>
             <!--//우측 컨텐츠 끝 E-->

              
            </td>
        </tr>
    </table>
</div>
<!--//플레이어 우측 끝 E-->
<%
FUNCTION SET_BOOK_MARK_TM (V)
	DIM TMP, H,M,S

	IF V > (60*60*24) THEN
		V = V MOD 24
	END IF

	H = INT(V / 3600)
	TEMP = V MOD 3600
	M = INT(TEMP / 60)
	S = TEMP MOD 60

	IF LEN(H) < 2 THEN
		H = "0"&H
	END IF

	IF LEN(M) < 2 THEN
		M = "0"&M
	END IF

	IF LEN(S) < 2 THEN
		S = "0"&S
	END IF

	If H <= 0 Then
		H = "00"
	End If

	If M <= 0 Then
		M = "00"
	End If

	If S <= 0 Then
		S = "00"
	End If

	SET_BOOK_MARK_TM = H & ":" & M & ":" & S

END FUNCTION
%>
</body>
<script language="javascript">
	document.onkeydown=KeypadCon;
	function KeypadCon() {
//		var shiftPressed = (window.Event) ? e.modifiers & Event.SHIFT_MASK : event.shiftKey;

		if(event.keyCode==116 || event.keyCode==122) {	//f11 & f5 금지
			event.keyCode = 505;
		}
		if(event.keyCode==505) {		// 금지키
			return false;
		}
	}

function play_lec(lec_cd)
{
	top.location.href="/player/cate/splayer/Player_Load.asp?PLAYER_TYPE=<%=PLAYER_TYPE%>&KBN=<%=KBN%>&TEC_NM=<%=TEC_NM%>&CHR_CD=<%=CHR_CD%>&APP_NO=<%=APP_NO%>&LEC_CD="+lec_cd+"&LEC_SEQ=<%=LEC_SEQ%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&WIDE_KBN=<%=WIDE_KBN%>";
}

function SetSelectPlay() {
	var len = lecform.sel_lec_cd.length;
	var s_lec_cd = "";
	var chkCnt = 0;

	if (len != undefined) {

		for (var i = 0; i < len; ++i) {
			if (lecform.sel_lec_cd[i].checked) {
				if ( chkCnt == 0) {
					s_lec_cd = s_lec_cd + lecform.sel_lec_cd[i].value;
				} else {
					s_lec_cd = s_lec_cd + ","+lecform.sel_lec_cd[i].value;
				}
				chkCnt += 1;
			}
		}
	} else {
		if (lecform.sel_lec_cd.checked) {
			s_lec_cd = s_lec_cd + lecform.sel_lec_cd.value;
		}
	}

	if (s_lec_cd != "") {
		top.location.href="/player/Cate/splayer/Player_Load.asp?KBN=<%=KBN%>&LEC_CD=<%=lec_cd%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>&sel_lec_cd="+s_lec_cd;
	}
}
</script>
</html>