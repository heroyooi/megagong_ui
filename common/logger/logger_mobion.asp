
<%
    strSql = ""
    strSql = strSql & " SELECT CM_CHR_NM "
    strSql = strSql & " , CM_CHR_PRC "
    strSql = strSql & " FROM V_CHR_LIST_ON WITH(NOLOCK) "
    strSql = strSql & " WHERE 1 = 1 "
    strSql = strSql & " AND	CM_CHR_CD = " & chr_cd
    set objrs = dbexec(strsql, "study")
    if not (objrs.eof and objrs.bof) then
        cnm = Re_sqlFilter(objrs(0))
        prc = objrs(1)
    end if
    call dbclose(objrs)

%>


<!-- 모비온 스크립트 추가 -->
<script type="text/javascript">
    var chrimage =""
    <%if chr_cd ="19255" then %> // 심승아 -소방학개론
        chrimage ="sobang1"
    <%elseif chr_cd ="18659" then %> //심승아 - 소방관계법규
        chrimage ="sobang2"
    <%elseif chr_cd ="19136" then %>  //곽동진 - 소방관계법규
        chrimage ="sobang3"
    <%elseif chr_cd ="18851" then %> //유휘운 행정법총론
        chrimage ="sobang4"
    <%elseif chr_cd ="19138" then %> //임재희 - 응급처리학개론
        chrimage ="sobang5"
    <%elseif chr_cd ="18633" then %> //전한길 -무료공개
        chrimage ="sobang6"
    <%elseif chr_cd ="18935" then %> //이재훈 팀- 원킬 G-TELP
        chrimage ="sobang7"
   <%elseif chr_cd ="19273" then %> //이윤주 -초단기 완성
        chrimage ="sobang8"
    <%end if %>
if (chrimage != ""){
	var ENP_VAR = {
	collect: {},
	conversion: { product: [] }
	};
		ENP_VAR.collect.productCode = '<%=chr_cd%>';			//제품코드
		ENP_VAR.collect.productName = '<%=cnm%>';	//제품명
		ENP_VAR.collect.price = '<%=prc%>';	//제품가격
		ENP_VAR.collect.dcPrice = '<%=prc%>';	//제품할인가격
		ENP_VAR.collect.soldOut = 'N';	//품절여부
		ENP_VAR.collect.imageUrl = '<%=img_main%>/m/common/chr/'+chrimage+'.png';	//상품 이미지 URL
		ENP_VAR.collect.secondImageUrl = '';	//상품 이미지 URL(다중이미지 사용시 세팅)
		ENP_VAR.collect.thirdImageUrl = '';		//상품 이미지 URL(다중이미지 사용시 세팅)
		ENP_VAR.collect.fourthImageUrl = ''		//상품 이미지 URL(다중이미지 사용시 세팅)
		ENP_VAR.collect.topCategory = '';		//상품이 속한 카테고리의 최상위 분류
		ENP_VAR.collect.firstSubCategory  = '소방';	//대분류
		ENP_VAR.collect.secondSubCategory = '';	//중분류
		ENP_VAR.collect.thirdSubCategory = '';	//소분류

	(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
		/* 상품수집 */
	enp('create', 'collect', 'megacst4ad1', { device: 'B' });
		/* 장바구니 버튼 타겟팅 (이용하지 않는 경우 삭제) */
	enp('create', 'cart', 'megacst4ad1', { device: 'B', btnSelector: "#btn_wrap" });
}
</script>
