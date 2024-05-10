<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<!-- #include virtual = "/common/inc/RSexec.asp"-->
<!-- #include virtual = "/common/inc/VarDef.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<%

    pkg_cd = fncrequest("pcd") 
    mpcd = fncrequest("mpcd")    '메가픽 번호 
    area_no = fncrequest("area_no")
    mode = fncrequest("mode") 

    if mpcd = "" then
        mpcd = 0
    end if

    '패키지 확인
    ar_pkg = null
    strSql = ""
    strSql = strSql & " select DISTINCT PM_PKG_CD, PM_PKG_NM = REPLACE(REPLACE(PM_PKG_NM, '（', '('), '）', ')'), "
    strSql = strSql & " PM_PKG_PRC, PM_ORN_PRC, PM_DC_RT = round(PM_DC_RT, 0), "
    strSql = strSql & " PM_STD_DAY, PM_STD_DT, isnull(PM_STD_TYPE, 'P') as std_type, PM_OPEN_YN, isnull(PM_HOT_KEY, '&nbsp;') as hot_key, isnull(PM_SPF,'') as spf, "
    strSql = strSql & " tec_cd = isnull(PM_PKG_IMG, 'logo'), tec_nm = isnull((select DISTINCT top 1 TM_TEC_NM from MS_TEC_MAS where TM_TEC_CD = PM_PKG_IMG), '') "
    strSql = strSql & " from MS_PKG_MAS with (nolock) "
    strSql = strSql & " inner join MS_PKG_DTL with (nolock) on PM_PKG_CD = PD_PKG_CD "
    strSql = strSql & " where PM_OPEN_YN = 'Y' and PM_DEL_FLG = 'N' "
    strSql = strSql & " and PM_PKG_CD = '"&pkg_cd&"' "
	Set Rs = DBexec(strSql, "study")
	If Not Rs.Eof Then
        pkg_nm = Trim(Rs(1))
        pkg_prc = Trim(Rs(2))
        org_prc = Trim(Rs(3))
        dc_rt = Trim(Rs(4))
        std_day = Trim(Rs(5))

        'std_dt = Trim(Rs(6))

        std_type = Trim(Rs(7))
        hot_ky = re_sqlfilter(Replace(Trim(Rs(9)), Chr(13)&Chr(10), "<br>"))
        pkg_SPF = re_sqlfilter(Replace(Trim(Rs(10)), Chr(13)&Chr(10), "<br>"))
        tec_cd = Trim(Rs(11))
        tec_nm = Trim(Rs(12))

        ar_pkg = Rs.getrows
    end if
    Call DBClose(Rs)


    '강좌 확인
    ar_chr = null
    strSql = ""
    strSql = strSql & " select DISTINCT PD_PKG_CD, PD_CHR_CD, CM_CHR_NM = REPLACE(REPLACE(CM_CHR_NM, '（', '('), '）', ')'), "
    strSql = strSql & " sub_nm = (select DISTINCT SM_SUB_NM FROM MS_SUB_MAS WHERE SM_DOM_CD = CM_DOM_CD and SM_SUB_CD = SC_SUB_CD), " 
    strSql = strSql & " TM_TEC_NM, CM_OPEN_FLG, CM_CHR_PRC = FORMAT(CM_CHR_PRC, N'#,0'), isnull(PD_VIEW_ORD, 999) as ord, CD_ORG_PRC = FORMAT(CD_ORG_PRC, N'#,0') "  
    strSql = strSql & " FROM MS_PKG_DTL WITH(NOLOCK) "  
    strSql = strSql & " inner join MS_CHR_MAS with (nolock) on PD_CHR_CD = CM_CHR_CD "
    strSql = strSql & " inner join MS_CHR_DTL with (nolock) on CD_CHR_CD = CM_CHR_CD "
    strSql = strSql & " inner join MS_SUB_CHR with (nolock) on CM_CHR_CD = SC_CHR_CD "
    strSql = strSql & " inner join MS_TEC_MAS with (nolock) on CM_TEC_CD = TM_TEC_CD "
    strSql = strSql & " WHERE 1=1 "  
    strSql = strSql & " AND PD_PKG_CD in ("&pkg_cd&")"
    strSql = strSql & " order by ord, PD_CHR_CD desc"
    Set objRs = DBExec(strSql, "study")
    If Not (objRs.EoF And objRs.BoF) Then 
        ar_chr = objRs.getrows
        if isarray(ar_chr) = true then
            for n = 0 to ubound(ar_chr,2)
                if ar_chr(5,n) = "Y" or ar_chr(5,n) = "D" then
                else
                    ar_pkg = null
                    exit for
                end if
            next
        end if
    End If 
    Call DBClose(objRs)


    '교재 확인
    book_prc = 0
    ar_book = null
    if isarray(ar_chr) then
        strSql = ""
        strSql = strSql & " SELECT a2.RNO, a2.CB_BOOK_CD "
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
        strSql = strSql & " FROM (select RNO = min(a1.RNO), a1.CB_BOOK_CD from ( "
        strSql = strSql & "     select RNO = (ROW_NUMBER() OVER(ORDER BY isnull(PD_VIEW_ORD, 99), PD_CHR_CD desc, CB_VIEW_ORD)), CB_BOOK_CD "
        strSql = strSql & "     from MS_PKG_DTL WITH(NOLOCK) inner join MS_CHR_BOOK WITH(NOLOCK) on PD_CHR_CD = CB_CHR_CD where PD_PKG_CD = "&pkg_cd&") a1 "
        strSql = strSql & "     group by a1.CB_BOOK_CD) a2 "
        strSql = strSql & " inner JOIN MS_BOOK_MAS BOOK WITH(NOLOCK) ON BM_BOOK_CD = a2.CB_BOOK_CD "
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
        strSql = strSql & " order by RNO "
        Set objRs = DBexec(strSql, "study")
        If Not objRs.Eof Then
            ar_book = objRs.GetRows
        End if
        Call DBClose(objRs)
    end if


    '중복강의가 있으면 구매 불가 -- 0 이면 구매 가능
    buy_ok = 1
    strSql = ""
    strSql = strSql & " SELECT COUNT(*) AS CNT FROM MS_PKG_MAS with (nolock) "
    strSql = strSql & " inner join MS_PKG_DTL WITH(NOLOCK) on PM_PKG_CD = PD_PKG_CD " 
    strSql = strSql & " where PM_PKG_CD = "&pkg_cd&" and PD_CHR_CD in ( "  
    strSql = strSql & " SELECT DISTINCT AD_CHR_CD FROM MS_STD_APP with (nolock) "  
    strSql = strSql & " inner join MS_APP_DTL with (nolock) on sa_app_no = ad_app_no "
    strSql = strSql & " and ad_std_stat = 2 "
    strSql = strSql & " and SA_MEM_ID = '"&cook_id&"') "
    Set objRs = DBExec(strSql, "study")
    If Not (objRs.EoF And objRs.BoF) Then 
        buy_ok = Cint(objRs(0))
    End If 
    Call DBClose(objRs)

%>

<% if isarray(ar_pkg) then %>
    <div class="pocket_pop package <% if mode = "window" then %> detail<% end if %>">
        <% if mode = "popup" then %>
        <a href="javascript:;" onclick="fncLayerClose();" class="close_pocket">팝업 닫기</a>
        <% end if %>
        
        <ol class="cart_list" id="list_<%=pkg_cd%>">
            
            <li class="on">
                <label>
                    <span class="p_type">
                        <input type="checkbox" name="pkg" value="<%=pkg_cd%>" price="<%=pkg_prc%>" checked="">
                    </span>
                    <strong class="p_tit"><%=pkg_nm%></strong>
                <% if Cint(dc_rt) <> 0 then %>
                    <span class="p_price">
                        <del><%=FormatNumber(org_prc, 0)%>원</del> 
                        <strong><span class="dc"><%=dc_rt%>% 할인</span> <%=FormatNumber(pkg_prc, 0)%>원</strong>
                    </span>
                <% else %> 
                    <span class="p_price">
                        <%=FormatNumber(pkg_prc, 0)%>원 
                    </span>
                <% end if %>
                </label>
            </li>

            <% if isarray(ar_chr) then %>
            <li class="package">
                <% for n = 0 to ubound(ar_chr,2) %>
                <p>
                    <strong class="p_tit"><%=ar_chr(2,n)%></strong>
                    <span class="p_price">
                        <!--<del>0,000원</del>-->
                        <strong><%=ar_chr(8,n)%>원</strong>
                    </span>
                </p>
                <% next %>
            </li>
            <% end if %>

            <% 
            if isArray(ar_book) Then 
                tmpBcd = ""
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

                    if tmpBcd <> b_bcd then
                        tmpBcd = b_bcd
            %>

            <% 
                if b_bfg <> "2" and b_bfg <> "3" and b_bfg <> "6" then 
                book_prc = book_prc + b_prc
            %>

            <li>
                <label>
                    <span class="p_type">
                    <input type="checkbox" name="book" value="<%=b_bcd %>" price="<%=b_prc %>" <% if b_bfg <> "1" Then %> disabled <% else %> checked <% End if %> > 교재<%=b+1%></span>
                    <strong class="p_tit">
                    <%=b_bnm%>
                    <% if mode = "window" then %>
                    <!--<a href="javascript:;" onclick="<%=preview_act%>" title="미리보기">미리보기</a>-->
                    <% end if %>
                    </strong>
                    <span class="p_price">
                        <% if b_bfg = "1" Then %>
                            <!--<% if b_orc > 0 And b_orc <> b_prc Then %><del><%=FormatNumber(b_orc, 0) %>원</del><% End if %>-->
                            <strong><%=FormatNumber(b_prc, 0) %>원</strong>
                        <% else %>
                            <%=b_bfm %><%if (b_bfg = "4" Or b_bfg = "5") And (b_sdt <> "" And CDate(b_sdt) > Date()) then%>(<% if b_bfg = "4" Then %>입고일<% Else %>재입고일<% End if %>:<%=b_sdt %>)<%end if%>
                        <% end if %>    
                    </span>
                </label>
            </li>
            <% end if %>

            <% 
                if e_bcd <> "" then 
                book_prc = book_prc + e_prc
            %>
            <li>
                <label>
                    <span class="p_type">
                    <input type="checkbox" name="book" value="<%=e_bcd %>" price="<%=e_prc %>" <% if e_bfg <> "1" Then %> disabled <% else %> checked <% End if %> > e-교재<%=b+1%></span>
                    <strong class="p_tit">
                    <%=b_bnm%>
                    <% if mode = "window" then %>
                    <!--
                    <a href="javascript:;" onclick="<%=preview_act%>" title="미리보기">미리보기</a>
                    -->
                    <% end if %>
                    </strong>
                    <span class="p_price">
                        <% if e_bfg = "1" Then %>
                            <!--<% if e_orc > 0 And e_orc <> e_prc Then %><del><%=FormatNumber(e_orc, 0) %>원</del><% End if %>-->
                            <strong><%=FormatNumber(e_prc, 0) %>원</strong>
                        <% else %>
                            <%=e_bfm %><%if (e_bfg = "4" Or e_bfg = "5") And (e_sdt <> "" And CDate(e_sdt) > Date()) then%>(<% if e_bfg = "4" Then %>입고일<% Else %>재입고일<% End if %>:<%=e_sdt %>)<%end if%>
                        <% end if %>    
                    </span>
                </label>
            </li>
            <% end if %>

            <% 
                    end if
                next
            end if %>
        </ol>

        <% ' 총 결제금액 (상세만 노출) %>
        <% if mode = "window" then %>
        <p class="total">
            <strong class="p_tit">총 결제금액</strong>
            <span class="p_price">
                <span id="calcS"></span>
                <strong id="tot_price">0원</strong>
            </span>
        </p>

        <script>
            $("#list_<%=pkg_cd%> input:checkbox").on('click', function() { 
                calcPrice();
            }); 
            calcPrice();
        </script>
        <% end if %>

        <ul class="btn_wrap" id="btn_wrap_<%=pkg_cd%>">
        <% if mode = "window" then %>
            <li><a href="javascript:;" onclick="fncPkgPay('pkg', <%=pkg_cd%>, <%=buy_ok%>);" title="바로 결제" class="pay">바로 결제</a></li>
        <% else %>
            <li><a href="javascript:;" onclick="fncPkgPay(<%=area_no %>, 'pkg', <%=pkg_cd%>, <%=buy_ok%>, <%=mpcd%>);" title="바로 결제" class="pay">바로 결제</a></li>
        <% end if %>
        </ul>

    </div>
<% end if %>