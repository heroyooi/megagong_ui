
<%
arrExamLabList = null
if cdate(lo_now_date) >= cdate("2020-10-15") then
strSql = ""
strSql = strSql & " SELECT TOP 5 ELM_NO, ELM_SORT, ELM_TOP_SUBJECT, ELM_URL "
strSql = strSql & " FROM MS_EXAMLAB_MAS WITH(NOLOCK) "
strSql = strSql & " WHERE ELM_VIEW_YN='Y' AND ELM_DOM_CD='"&h_dcd&"' AND ELM_DEL_YN='N' ORDER BY ELM_REG_DT DESC "
Set objRs = DBExec(strSql, "study")
If Not (objRs.EoF And objRs.BoF) Then 
	arrExamLabList = objRs.getrows()
End If 
Call DBClose(objRs)
%>
<!-- 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 S -->
<div class="hd_right_bnr examinfo">
	<div>
		<div class="hd_slider examinfo">
			<%
				' 수험 뉴스 class="item news"
				' 합격 전략 class="item strt"
				' 분석 자료 class="item data"
				' HOT ISSUE class="item issu"
			%>
			<%
				if isarray(arrExamLabList) = true then
					for iii=0 to ubound(arrExamLabList,2)

						ELM_NO = arrExamLabList(0,iii)
						ELM_SORT = arrExamLabList(1,iii)
						ELM_TOP_SUBJECT = arrExamLabList(2,iii)
						ELM_URL = re_sqlfilter(arrExamLabList(3,iii))

						if ELM_SORT="1" then
							sortClass = "item news"
							sortStr = "수험<br>뉴스"
						elseif ELM_SORT="2" then
							sortClass = "item strt"
							sortStr = "합격<br>전략"
						elseif ELM_SORT="3" then
							sortClass = "item data"
							sortStr = "분석<br>자료"
						elseif ELM_SORT="4" then
							sortClass = "item issu"
							sortStr = "HOT<br>ISSUE"
						end if
			%>
			<div>
				<a href="javascript:;" onclick="goExamPage('<%=ELM_NO%>','<%=ELM_URL%>');" class="<%=sortClass%>" title="자세히보기">
					<span class="info_type"><%=sortStr%></span>
					<span class="info_txt"><%=replace(ELM_TOP_SUBJECT,vbcrlf,"<br>")%></span>
				</a>
			</div>
			<%
					next
				end if
			%>
		</div>
	</div>
</div>
<script type="text/javascript">
/* --- hd_slider 슬라이더--- */
						
var hd_right_s = $('.hd_right_bnr .hd_slider div').length;
if (hd_right_s > 1) {
	$('.hd_right_bnr .hd_slider').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		infinite: true,
		dots: false,
		arrow: true,
		speed: 0,
		autoplaySpeed: 3500,
		autoplay: true,
		//vertical: true,
	});
}


/* --- // hd_slider 슬라이더--- */

function goExamPage(idx, url){
    $.ajax({
        type : 'post',
        url : "/m_inc/main_content_examinfo_ajax.asp",
        data : {"idx" : idx}
    }).done(function(data) {
        location.href=url;
    }).fail(function(jqXHR, textStatus, errorThrown)  {
        location.href=url;
    });
}
</script>
<!-- // 수험정보 개편 공통(공무원,소방) 헤더 컨텐츠 E -->
<%end if%>