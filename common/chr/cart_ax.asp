<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<% '���� ��Ŭ��� ������ ���� %>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<% '���� ��Ŭ��� ������ ���� %>
<%
ccd = fncrequest("ccd") 
mpcd = fncrequest("mpcd")   '�ް��ȿ� ����
area_no = fncrequest("area_no")
mode = fncrequest("mode") 


' ����
strSql = ""
strSql = strSql & " SELECT CM_CHR_NM "
strSql = strSql & " , CD_ORG_PRC "
strSql = strSql & " , CM_CHR_PRC "
strSql = strSql & " FROM V_CHR_LIST_ON WITH(NOLOCK) "
strSql = strSql & " WHERE 1 = 1 "
strSql = strSql & " AND	CM_CHR_CD = " & ccd
set objrs = dbexec(strsql, "study")
if not (objrs.eof and objrs.bof) then
    cnm = Re_sqlFilter(objrs(0))
    orc = objrs(1)
    prc = objrs(2)
end if
call dbclose(objrs)

' ����
ar_book = null
strSql = ""
strSql = strSql & " SELECT RNO = (ROW_NUMBER() OVER(ORDER BY CB_VIEW_ORD, CAST(BOOK.BM_BOOK_FLG AS INT), CB_BOOK_CD DESC)) "
strSql = strSql & " , CB_BOOK_CD "
strSql = strSql & " , BOOK.BM_BOOK_NM "
strSql = strSql & " , BOOK.BM_PRC "
strSql = strSql & " , BOOK.BM_ORG_PRC "
strSql = strSql & " , BOOK.BM_BOOK_FLG "
strSql = strSql & " , FNM = CC.CC_KOR_NM "
strSql = strSql & " , BOOK.BM_EBOOK_FLG "
strSql = strSql & " , BM_SALE_DT = CONVERT(CHAR(10), BOOK.BM_SALE_DT, 20) "
strSql = strSql & " , ISNULL(BE_EBOOK_PATH,'') "
strSql = strSql & " , ISNULL(BE_EBOOK_NAME,'') "
strSql = strSql & " , EBOOK.BM_BOOK_CD "
strSql = strSql & " , EBOOK.BM_BOOK_FLG "
strSql = strSql & " , EBOOK.BM_PRC "
strSql = strSql & " , EBOOK.BM_ORG_PRC "
strSql = strSql & " , EBOOK.BM_BOOK_FLG "
strSql = strSql & " , EBOOK.CC_KOR_NM "
strSql = strSql & " , EBOOK.BM_SALE_DT "
strSql = strSql & " FROM MS_CHR_BOOK WITH(NOLOCK) "
strSql = strSql & " JOIN MS_BOOK_MAS BOOK WITH(NOLOCK) ON BM_BOOK_CD = CB_BOOK_CD "
strSql = strSql & " JOIN MS_COMM_CD CC WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BOOK.BM_BOOK_FLG "
strSql = strSql & " LEFT JOIN MS_BOOK_EBOOK WITH(NOLOCK) ON BOOK.BM_BOOK_CD = BE_BOOK_CD "
strSql = strSql & " LEFT JOIN ( "
strSql = strSql & " SELECT BM_BOOK_CD "
strSql = strSql & " , BM_OLD_BOOK_CD "
strSql = strSql & " , BM_PRC "
strSql = strSql & " , BM_ORG_PRC "
strSql = strSql & " , BM_BOOK_FLG "
strSql = strSql & " , CC_KOR_NM "
strSql = strSql & " , BM_SALE_DT = CONVERT(CHAR(10), BM_SALE_DT, 20) "
strSql = strSql & " FROM MS_BOOK_MAS WITH(NOLOCK) "
strSql = strSql & " JOIN MS_COMM_CD WITH(NOLOCK) ON CC_COMM_KIND = '13' AND CC_COMM_CD = BM_BOOK_FLG "
strSql = strSql & " WHERE 1=1 "
strSql = strSql & " AND BM_ITEM_KBN = 'E' "
strSql = strSql & " AND BM_BOOK_FLG IN ('1', '9') "
strSql = strSql & " ) EBOOK ON EBOOK.BM_OLD_BOOK_CD = BOOK.BM_BOOK_CD "
strSql = strSql & " WHERE CB_CHR_CD = " & ccd
Set Rs = DBexec(strSql, "study")
If Not Rs.Eof Then
    ar_book = Rs.GetRows()
End if
RSClose(Rs)

isStudying = false
strSql = ""
strSql = strSql & "SELECT	AD_CHR_CD "
strSql = strSql & "FROM     MS_STD_APP WITH(NOLOCK) "
strSql = strSql & "JOIN     MS_APP_DTL WITH(NOLOCK) ON AD_APP_NO = SA_APP_NO "
strSql = strSql & "WHERE	AD_STD_STAT IN ('1', '2', '5') "
strSql = strSql & "AND		SA_MEM_ID = '" & cook_id & "' "
strSql = strSql & "AND		AD_CHR_CD = " & ccd & " "
Set Rs = DBexec(strSql, "study")
if Not Rs.EOF then
    isStudying = true ' �̹� �������� ����
end If
Call DBClose(Rs)

strSql = ""
strSql = strSql & " SELECT	TOP 1 FSH_PAY_NO, FSH_ITEM_NO, FIM_ITEM_NM, GDT = ISNULL(CAST(CONVERT(CHAR(10), FSH_GOAL_DT, 20) AS VARCHAR), '') "
strSql = strSql & " , ISNULL(CONVERT(VARCHAR, FSH_POINT_DIFF), '') "
strSql = strSql & " FROM     MS_FPSAL_HIS WITH(NOLOCK) "
strSql = strSql & " JOIN     MS_FPITM_MAS WITH(NOLOCK) ON FIM_ITEM_NO = FSH_ITEM_NO "
strSql = strSql & " JOIN     MS_FPITM_CHR WITH(NOLOCK) ON FIC_ITEM_NO = FSH_ITEM_NO "
strSql = strSql & " WHERE	FSH_STD_STAT = '2' "
strSql = strSql & " AND		GETDATE() BETWEEN FSH_STD_SDT AND CONVERT(CHAR(10), FSH_STD_EDT, 20) + ' 23:59:59' "
strSql = strSql & " AND		FSH_MEM_ID = '" & cook_id & "' "
strSql = strSql & " AND	    FIC_CHR_CD = " & ccd & " "
strSql = strSql & " ORDER BY FSH_SAL_NO DESC "
Set Rs = DBexec(strSql, "study")
if Not Rs.EOF then
    pno = Rs(0)
    ino = Rs(1)
    inm = Rs(2)
    gdt = Rs(3)
    pdf = Rs(4)
end If
Call DBClose(Rs)
%>

<div class="pocket_pop cart <% if mode = "window" then %> detail <% end if %>">
    <% if mode = "popup" then %>
    <a href="javascript:void(0);" onclick="fncLayerClose();" class="close_pocket">�˾� �ݱ�</a>
    <% end if %>
    <ol class="cart_list" id="list_<%=ccd%>">
        <% ' ���� li�� class="on"%>
        <li class="on">
            <label>
                <span class="p_type">
                <input type="checkbox" name="chr" value="<%=ccd %>" price="<%=prc %>" checked> ����
                </span>
                <strong class="p_tit"><%=cnm%></strong>
                <span class="p_price">
                    <%
                    if orc > 0 And orc <> prc Then
                    %>
                    <del><%=FormatNumber(orc, 0) %>��</del> 
                    <% End if %>
                    <strong><%=FormatNumber(prc, 0) %>��</strong>
                </span>
            </label>
        </li>
        <% 
        if isArray(ar_book) Then 
            For b = 0 To Ubound(ar_book, 2)
                b_rno = ar_book(0, b)
                b_bcd = ar_book(1, b)
                b_bnm = re_sqlfilter(ar_book(2, b))
                b_prc = ar_book(3, b)
                b_orc = ar_book(4, b)
                b_bfg = ar_book(5, b)
                b_bfm = ar_book(6, b)
                b_ebk = ar_book(7, b)
                b_sdt = ar_book(8, b)
                b_ebook_path = ar_book(9,b)
                b_ebook_name = re_sqlfilter(ar_book(10,b))

                e_bcd = ar_book(11,b)
                e_bfg = ar_book(12,b)
                e_prc = ar_book(13,b)
                e_orc = ar_book(14,b)
                e_bfg = ar_book(15, b)
                e_bfm = ar_book(16, b)     
                e_sdt = ar_book(17, b)                

                preview_act = ""
                if b_ebk = "Y" and b_ebook_path = "" then 
                    preview_act = "fncEBookView('"&h_dcd&"', '"&b_bcd&"');"
                elseif b_ebk = "Y" and b_ebook_path <> "" then 
                    preview_act = "fncMegaDownload('"&b_ebook_path&"', '"&b_ebook_name&"');"
                end if 
            %>   
        <% if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then %>     
        <li>
            <label>
                <span class="p_type">
                <input type="checkbox" name="book" value="<%=b_bcd %>" price="<%=b_prc %>" <% if b_bfg <> "1" Then %> disabled <% else %> checked <% End if %> > ����<%=b+1%></span>
                <strong class="p_tit">
                <%=b_bnm%>
                <% if mode = "window" then %>
                <a href="javascript:void(0);" onclick="<%=preview_act%>" title="�̸�����">�̸�����</a>
                <% end if %>
                </strong>
                <span class="p_price">
                    <% if b_bfg = "1" Then %>
                        <% if b_orc > 0 And b_orc <> b_prc Then %><del><%=FormatNumber(b_orc, 0) %>��</del><% End if %>
                        <strong><%=FormatNumber(b_prc, 0) %>��</strong>
                    <% else %>
                        <%=b_bfm %><%if (b_bfg = "4" Or b_bfg = "5") And (b_sdt <> "" And CDate(b_sdt) > Date()) then%>(<% if b_bfg = "4" Then %>�԰���<% Else %>���԰���<% End if %>:<%=b_sdt %>)<%end if%>
                    <% end if %>    
                </span>
            </label>
        </li>
        <% end if %>
        <% if e_bcd <> "" then %>
        <li>
            <label>
                <span class="p_type">
                <input type="checkbox" name="book" value="<%=e_bcd %>" price="<%=e_prc %>" <% if e_bfg <> "1" Then %> disabled <% else %> checked <% End if %> > e-����<%=b+1%></span>
                <strong class="p_tit">
                <%=b_bnm%>
                <% if mode = "window" then %>
                <!--
                <a href="javascript:void(0);" onclick="<%=preview_act%>" title="�̸�����">�̸�����</a>
                -->
                <% end if %>
                </strong>
                <span class="p_price">
                    <% if e_bfg = "1" Then %>
                        <% if e_orc > 0 And e_orc <> e_prc Then %><del><%=FormatNumber(e_orc, 0) %>��</del><% End if %>
                        <strong><%=FormatNumber(e_prc, 0) %>��</strong>
                    <% else %>
                        <%=e_bfm %><%if (e_bfg = "4" Or e_bfg = "5") And (e_sdt <> "" And CDate(e_sdt) > Date()) then%>(<% if e_bfg = "4" Then %>�԰���<% Else %>���԰���<% End if %>:<%=e_sdt %>)<%end if%>
                    <% end if %>    
                </span>
            </label>
        </li>
        <% end if %>
        <% 
            next
        end if %>
        
    </ol>

    <% if mode = "window" then %>
    <div class="all_priceWrp">
        <strong>�� ���� �ݾ�</strong><span id="tot_price">0��</span>
    </div>
    <script>
        $("#list_<%=ccd %> input:checkbox").on('click', function() { 
            calcPrice();
        }); 
        calcPrice();
    </script>
    <% end if %>
           

    <ul class="btn_wrap" id="btn_wrap_<%=ccd%>">

        <% if mode = "window" then %>
        <li><a href="javascript:void(0);" onclick="fncGoPay('C', <%=ccd %>);" title="��ٱ���" class="cart">��ٱ���</a></li>
        <li><a href="javascript:void(0);" onclick="fncGoPay('P', <%=ccd %>);" title="�ٷ� ����" class="pay">�ٷ� ����</a></li>
        <% else %>
            <% if mpcd = "" then %>
            <li><a href="javascript:void(0);" onclick="fncGoPay(<%=area_no %>, 'C', <%=ccd %>);" title="��ٱ���" class="cart">��ٱ���</a></li>
            <li><a href="javascript:void(0);" onclick="fncGoPay(<%=area_no %>, 'P', <%=ccd %>);" title="�ٷ� ����" class="pay">�ٷ� ����</a></li>
            <% else %>
            <li><a href="javascript:void(0);" onclick="fncPickGoPay(<%=area_no %>, 'C', <%=ccd %>, <%=mpcd%>);" title="��ٱ���" class="cart">��ٱ���</a></li>
            <li><a href="javascript:void(0);" onclick="fncPickGoPay(<%=area_no %>, 'P', <%=ccd %>, <%=mpcd%>);" title="�ٷ� ����" class="pay">�ٷ� ����</a></li>
            <% end if %>
        <% end if %>

        <% if pno <> "" and ino <> "" then %>
            <% if isStudying then %>
                <li><a href="javascript:void(0);" onclick="alert('\'<%=cnm%>\' ���´� ���� ���� ���Դϴ�.');return false;" title="�н� ���" class="pass">�н� ���</a></li>
            <% elseif pdf = "" then %> 
                <li><a href="javascript:void(0);" onclick="open_pop('#popup_not');" title="�н� ���" class="pass">�н� ���</a></li>
            <% else %>
                <li><a href="javascript:void(0);" onclick="fncGoCartPass(<%=pno %>, <%=ino %>);" title="�н� ���" class="pass">�н� ���</a></li>
            <% end if %>
        <% end if %>
    </ul>   


    <!--�н� ���� �Ⱓ �������� ���� ȸ��-->
    <div id="popup_not" class="comfirm_popup">
        <div class="form">
            <a href="javascript:close_pop('#popup_not');" class="close_btn">�ݱ�</a>
            <div class="text">
                <p>
                    <span>[�߿� �ȳ�]</span>
                    �ް��н� ���� �� ���ϴ� ���� �Ⱓ�� �����Ͽ� ȸ������<br>�н���ȹ�� �°� ���� �� �� �ֽ��ϴ�.<br><br>
                    �⺻ ������ ���� �н� ������(�ִ� 365��)����<br>���� �߰� �� ���ϴ� ���� �Ⱓ�� ������ �� ������<br>���� �Ⱓ�� �������� ������ �� �ֽ��ϴ�.
                </p>
            </div>
            <ul class="btn_list">
                <li><a href="/mypage/study/my_pass.asp?popupYn=Y">���� �Ⱓ ����</a></li>
                <li><a href="javascript:void(0);"" onclick="fncGoCartPass(<%=pno %>, <%=ino %>);">�⺻ �����Ϸ� ����</a></li>
            </ul>
        </div>
        <div class="hidden_pop" onclick="close_pop('#popup_not');"></div>
    </div>
    <!--//�н� ���� �Ⱓ �������� ���� ȸ��-->


    <!--�н� ���� �Ⱓ ������ ȸ�� (���� ����)-->
    <div id="popup_ok" class="comfirm_popup">
        <div class="form">
            <a href="javascript:close_pop('#popup_ok');" class="close_btn">�ݱ�</a>
            <div class="text">
                <p>���� ��Ⱑ �Ϸ�Ǿ����ϴ�.<br>�� ���ǽǷ� �̵��Ͻðڽ��ϱ�?</p>
            </div>
            <ul class="btn_list">
                <li><a href="javascript:void(0);" onclick="fncMegaGoLink('/mypage/study/my_study.asp', 'funNavigateMyLecture', '');">Ȯ��</a></li>
                <li><a href="javascript:void(0);" onclick="window.location.reload();">���</a></li>
            </ul>
        </div>
        <div class="hidden_pop" onclick="close_pop('#popup_ok');"></div>
    </div>
    <!--//�н� ���� �Ⱓ ������ ȸ�� (���� ����)-->

</div>

<script>
//�˾� �ݱ�
function close_pop(id){
    $(id).hide();
}

//�˾� ����
function open_pop(id){
    $(id).show();
}

</script>