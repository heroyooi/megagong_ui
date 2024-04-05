<%
If Instr(cur_path_info,"splayerfree_tab1") Then top_code = "a"
If Instr(cur_path_info,"splayerfree_tab2") Then top_code = "b"
If Instr(cur_path_info,"splayerfree_tab3") Then top_code = "c"
If Instr(cur_path_info,"splayerfree_tab4") Then top_code = "d"

UseWidth = Trim(request("UseWidth"))		'스크린 크기 구하기
UseHeight = Trim(request("UseHeight"))	'스크린 크기 구하기

bIdx = false
if lec_cd <> "" then
	'맛보기강좌의 인덱스가 있는가..
	strSql = "select top 1 lm_lec_cd,lm_lec_nm,lm_lec_seq, lm_lec_tm from ms_lec_mas with(nolock) join md_lec_idx with(nolock) on lm_lec_cd=li_lec_cd and lm_chr_cd="&chr_cd&" and li_lec_cd="& lec_cd '&" order by lm_lec_cd"
	
	Set Rs = DbExec(strSql, "study")
	If not Rs.Eof Then
		bIdx = true
		lm_lec_cd = Rs(0)
		lm_lec_nm =  Rs(1)
		lm_lec_seq =  Rs(2)
		lm_lec_tm =  Rs(3)
	End If
	Call Rsclose(Rs)
end if
%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<%If bIdx = false Then%>
	<tr>
		<td><a href="sPlayerFree_Tab1.asp?chr_cd=<%=chr_cd%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>"><img src="http://img.megagong.net/player/2015_newskin/etc/tab01_<%If top_code <> "a" Then%>off<%Else%>on<%End If%>.gif"<%If top_code <> "a" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%> ></a></td>
		<td><a href="sPlayerFree_Tab2.asp?chr_cd=<%=chr_cd%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab02_<%If top_code <> "b" Then%>off<%Else%>on<%End If%>.gif" <%If top_code <> "b" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%>></a></td>
		<!--td><a href="sPlayerFree_Tab3.asp?chr_cd=<%=chr_cd%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab03_<%If top_code <> "c" Then%>off<%Else%>on<%End If%>.gif" <%If top_code <> "c" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%>></a></td-->
	</tr>
	<%Else%>
	<tr>
	    <!-- 강의인텍스  페이지 작업 안했음 확인해 보고 작업 필요시 작업 해야됨 
		<td><a href="sPlayerFree_Tab4.asp?chr_cd=<%=chr_cd%>&lec_cd=<%=lec_cd%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>" onFocus="blur()"><img src="<%=img_main%>/player/2012_newskin/etc/4_1tab01_<%If top_code <> "d" Then%>off<%Else%>on<%End If%>.gif" <%If top_code <> "d" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%>></a></td>
		-->
		<td><a href="sPlayerFree_Tab1.asp?chr_cd=<%=chr_cd%>&lec_cd=<%=lec_cd%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/tab01_<%If top_code <> "a" Then%>off<%Else%>on<%End If%>.gif" <%If top_code <> "a" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%>></a></td>
		<td><a href="sPlayerFree_Tab2.asp?chr_cd=<%=chr_cd%>&lec_cd=<%=lec_cd%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab02_<%If top_code <> "b" Then%>off<%Else%>on<%End If%>.gif" <%If top_code <> "b" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%>></a></td>
		<!--td><a href="sPlayerFree_Tab3.asp?chr_cd=<%=chr_cd%>&lec_cd=<%=lec_cd%>&SPL_STM=<%=SPL_STM%>&SPL_ETM=<%=SPL_ETM%>&UseWidth=<%=UseWidth%>&UseHeight=<%=UseHeight%>" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab03_<%If top_code <> "c" Then%>off<%Else%>on<%End If%>.gif" <%If top_code <> "c" Then%>onmouseover="this.src=this.src.replace('_off','_on');" onmouseout="this.src=this.src.replace('_on','_off');"<%End if%>></a></td-->
	</tr>
	<%End If%>
</table>

<!-- 디자인 원본 S-->
<%If 1 = 2 Then%>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td><a href="sPlayerFree_Tab1.asp?chr_cd=12198&UseWidth=1599&UseHeight=1050" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab01_on.gif" ></a></td>
		<td><a href="sPlayerFree_Tab2.asp?chr_cd=12198&UseWidth=1599&UseHeight=1050" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab02_off.gif" onMouseOver="this.src=this.src.replace('_off','_on');" onMouseOut="this.src=this.src.replace('_on','_off');"></a></td>
		<td><a href="sPlayerFree_Tab3.asp?chr_cd=12198&UseWidth=1599&UseHeight=1050" onFocus="blur()"><img src="http://img.megagong.net/player/2015_newskin/etc/3tab03_off.gif" onMouseOver="this.src=this.src.replace('_off','_on');" onMouseOut="this.src=this.src.replace('_on','_off');"></a></td>
	</tr>
</table>
<%End If%>
<!-- 디자인 원본 E -->