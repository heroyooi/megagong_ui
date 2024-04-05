<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- 플레이어 공통 인클루드 페이지 시작 -->
<!-- #include virtual = "/Player/kollus/common/set/play_func.asp"-->
<!-- #include virtual = "/Player/kollus/common/set/play_para.asp"-->
<!-- 플레이어 공통 인클루드 페이지 종료 -->
<%
    strSql = ""
    strSql = strSql & "SELECT	TOP 1 CM_CHR_NM, CHRNEW = (CASE WHEN DATEDIFF(D, CM_CHR_SDT, GETDATE()) < 180 THEN 'Y' ELSE 'N' END), CM_MAKE_FLG, CM_BETTER_FLG, CD_EVENT_FLG, "
    strSql = strSql & "         CM_TEC_CD, TM_TEC_NM, SC_SUB_CD, SM_SUB_NM, CD_HOT_KEY, CM_ORI_SPL, CM_CHR_FLG = CAST(CM_CHR_FLG AS INT), CM_CHR_FNM = CC_KOR_NM, CM_STD_DAY, CD_CHR_OGZ, CM_CHR_SDT, "
    strSql = strSql & "         CD_CHR_SPF, CD_CHR_TARGET, CD_CHR_CHAIN_VW, CD_CHR_CHAIN, CM_CHR_PRC, CD_ORG_PRC, CM_BOOK_FLG, CM_FILE_PAID_YN, CM_CHR_CLS_CD, CD_CHR_SCOPE "
    strSql = strSql & "FROM     V_CHR_LIST_ON WITH(NOLOCK) "
    strSql = strSql & "WHERE    CM_CHR_CD = " & chr_cd
	Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        chr_nm = Trim(Rs(0))
        new_ic = Trim(Rs(1))
        mke_fg = Trim(Rs(2))
        ber_ic = Trim(Rs(3))
        evt_ic = Trim(Rs(4))
        tec_cd = Trim(Rs(5))
        tec_nm = Trim(Rs(6))
        sub_cd = Trim(Rs(7))
        sub_nm = Trim(Rs(8))
        hot_ky = Trim(Rs(9))
        ori_ky = Trim(Rs(10))
        chr_fg = Trim(Rs(11))
        chr_fm = Trim(Rs(12))
        std_dy = Trim(Rs(13))
        chr_oz = Trim(Rs(14))
        chr_dt = Trim(Rs(15))
        chr_sf = Replace(Trim(Rs(16)), Chr(13)&Chr(10), "<br>")
        chr_tg = Replace(Trim(Rs(17)), Chr(13)&Chr(10), "<br>")
        chr_vw = Trim(Rs(18))
        chr_cm = Replace(Trim(Rs(19)), Chr(13)&Chr(10), "<br>")
        prc_va = Trim(Rs(20))
        orc_va = Trim(Rs(21))
        buk_fg = Trim(Rs(22))
        fpd_yn = Trim(Rs(23))
        cls_cd = Trim(Rs(24))
        scp_nm = Trim(Rs(25))
    Else
        Response.Redirect("/gongcampus.asp")
        Response.End
	End if
    RSClose(Rs)
%>
<div class="lecture">
	<div class="lecView">
		<div class="lecDetail">
			<div class="tit clearfix">

				<div class="f_right">
					<div class="tech_txt">
                        <img src="http://img.megagong.net/profphoto/gong/<%=tec_cd %>/pro_my.png" class="lec_img"/>
						<a href="/teacher/home.asp?bcode=<%=tec_cd %>" target="_blank" class="lec_home"><% if tec_cd <> "megamoon" And tec_cd <> "gongcampus" Then %><img alt="선생님홈 바로가기" src="<%=img_main %>/new/mypage/btn_home.png"><% End if %></a>
						<p><%=sub_nm %><strong><span><%=tec_nm %></span> 선생님</strong></p>
					</div>
				</div>

				<div class="lec_info">
					<div class="f_left">
						<p class="icon">
                            <% if new_ic = "Y" Then %><span class="icon1">NEW</span> <% End if %>
                            <% if mke_fg = "1" Then %><span class="icon2">완강</span> <% End if %>
                            <% if mke_fg = "2" Then %><span class="icon5">진행중</span> <% End if %>
                            <% if mke_fg = "3" Then %><span class="icon6">예정</span> <% End if %>
                            <% if ber_ic = "1" Then %><span class="icon3">다다익선</span> <% End if %>
                            <% if evt_ic = "Y" Then %><span class="icon4">이벤트</span><% End if %>
						</p>
						<p class="class_tit"><%=chr_nm %></p>
						<p class="class_more">
							<%=hot_ky %>
						</p>
					</div>
					<table width="100%" class="vodTbl2 class_info" border="0" cellspacing="0" cellpadding="0">
						<colgroup>
					        <col width="35%">
							<col width="65%">
					    </colgroup>
						<tbody>
							<tr>
								<th>학습단계</th>
								<td><%=chr_fm %></td>
							</tr>
							<tr>
								<th>수강기간</th>
								<td><%=std_dy %>일</td>
							</tr>
							<tr>
								<th>강좌속성</th>
								<td><%=fncChrClsNm(cls_cd) %></td>
							</tr>
							<tr>
								<th>강좌구성</th>
								<td class="aL"><%=chr_oz %></td>
							</tr>
							<tr>
								<th>강좌 개강일</th>
								<td class="aL"><%=chr_dt %></td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div class="lecbtnWrap clearfix">
                <div class="btn_list">
					<a class="cmn_btn" href="/vod/vod_chr_view.asp?chr_cd=<%=chr_cd %>" target="_blank" >자세히 보기</a>
    			</div>
			</div>
		</div>

	</div>
</div>
