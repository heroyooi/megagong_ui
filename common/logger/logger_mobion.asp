
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


<!-- ���� ��ũ��Ʈ �߰� -->
<script type="text/javascript">
    var chrimage =""
    <%if chr_cd ="19255" then %> // �ɽ¾� -�ҹ��а���
        chrimage ="sobang1"
    <%elseif chr_cd ="18659" then %> //�ɽ¾� - �ҹ�������
        chrimage ="sobang2"
    <%elseif chr_cd ="19136" then %>  //������ - �ҹ�������
        chrimage ="sobang3"
    <%elseif chr_cd ="18851" then %> //���ֿ� �������ѷ�
        chrimage ="sobang4"
    <%elseif chr_cd ="19138" then %> //������ - ����ó���а���
        chrimage ="sobang5"
    <%elseif chr_cd ="18633" then %> //���ѱ� -�������
        chrimage ="sobang6"
    <%elseif chr_cd ="18935" then %> //������ ��- ��ų G-TELP
        chrimage ="sobang7"
   <%elseif chr_cd ="19273" then %> //������ -�ʴܱ� �ϼ�
        chrimage ="sobang8"
    <%end if %>
if (chrimage != ""){
	var ENP_VAR = {
	collect: {},
	conversion: { product: [] }
	};
		ENP_VAR.collect.productCode = '<%=chr_cd%>';			//��ǰ�ڵ�
		ENP_VAR.collect.productName = '<%=cnm%>';	//��ǰ��
		ENP_VAR.collect.price = '<%=prc%>';	//��ǰ����
		ENP_VAR.collect.dcPrice = '<%=prc%>';	//��ǰ���ΰ���
		ENP_VAR.collect.soldOut = 'N';	//ǰ������
		ENP_VAR.collect.imageUrl = '<%=img_main%>/m/common/chr/'+chrimage+'.png';	//��ǰ �̹��� URL
		ENP_VAR.collect.secondImageUrl = '';	//��ǰ �̹��� URL(�����̹��� ���� ����)
		ENP_VAR.collect.thirdImageUrl = '';		//��ǰ �̹��� URL(�����̹��� ���� ����)
		ENP_VAR.collect.fourthImageUrl = ''		//��ǰ �̹��� URL(�����̹��� ���� ����)
		ENP_VAR.collect.topCategory = '';		//��ǰ�� ���� ī�װ��� �ֻ��� �з�
		ENP_VAR.collect.firstSubCategory  = '�ҹ�';	//��з�
		ENP_VAR.collect.secondSubCategory = '';	//�ߺз�
		ENP_VAR.collect.thirdSubCategory = '';	//�Һз�

	(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
		/* ��ǰ���� */
	enp('create', 'collect', 'megacst4ad1', { device: 'B' });
		/* ��ٱ��� ��ư Ÿ���� (�̿����� �ʴ� ��� ����) */
	enp('create', 'cart', 'megacst4ad1', { device: 'B', btnSelector: "#btn_wrap" });
}
</script>
