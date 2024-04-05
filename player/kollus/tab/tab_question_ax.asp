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
	IMG = img_player+"/player_2016"
%>
<%
    SUB_COD = fncRequest("SUB_COD")
    FILE_NM = fncRequest("FILE_NM")

	SELECT CASE left(SUB_COD,2)
	  CASE "10":TBNM = "1"
	  CASE "21","22","20":TBNM = "2"
	  CASE "30":TBNM = "3" 
	  CASE "41","40":TBNM = "4"
	  CASE "42":TBNM = "5"
	  CASE "50":TBNM = "6"
	END SELECT  	

    '기본 디비 연결자
	CUR_DB_NM = "exammain"	
	
	'MEGAEXAM_OLD_SUM DB에 있을 경우 연결자 변경
	Sql = "SELECT COUNT(1) FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & seq
	call RSExec(Rs,0,3,Sql,"exam_old")
	if Rs(0)>0 then
        CUR_DB_NM = "exam_old"	    
	end if
	RSClose(Rs)	

    '시험유형 추출
    exam_type=1
    if uid <> "" then
        Sql = "SELECT MT_EXAM_TYPE FROM ME_MEMEXAM_TYPE WITH(NOLOCK) "
        Sql = Sql & "WHERE MT_MEM_ID='" & uid & "' AND MT_SEQ=" & seq

	    Call RSExec(Rs,0,3,Sql,CUR_DB_NM)			
	    if not Rs.eof then
		    exam_type = Rs(0)
	    end if
	    Call RSClose(RS)
    end if

    strSql = ""
    strSql = strSql & "SELECT	AM_NO, "
    strSql = strSql & "         AM_JIMOON, "
    strSql = strSql & "         AM_QST, "
    strSql = strSql & "         ST_STIME, "
    strSql = strSql & "         ST_ETIME, "
    strSql = strSql & "         ST_EXP_STIME, "
    strSql = strSql & "         ST_EXP_ETIME, "
    strSql = strSql & "         100-AJ_JDY, "
    if CUR_DB_NM <> "exam_old" then
        strSql = strSql & "         ISNULL(( "
        strSql = strSql & "         	   SELECT	(CASE WHEN MD_ANS = (CASE WHEN QM_KBN = 0 THEN QM_ANS ELSE QM_MTFL END) THEN 'O' ELSE 'X' END) "
        strSql = strSql & "         	   FROM		ME_QST_MAS WITH(NOLOCK) "
        strSql = strSql & "         	   JOIN		ME_MEM_D" & TBNM & " WITH(NOLOCK) ON QM_SEQ = MD_SEQ AND QM_SUB_COD = MD_SUB_COD AND QM_NO = MD_NO "
        strSql = strSql & "         	   WHERE	QM_SEQ = AJ_SEQ "
        strSql = strSql & "         	   AND		QM_SUB_COD = AJ_SUB_COD "
        strSql = strSql & "         	   AND		QM_NO = AJ_NO "
        strSql = strSql & "         	   AND		QM_EXAM_TYPE = AJ_EXAM_TYPE "
        strSql = strSql & "         	   AND		MD_MEM_ID = '" & uid & "' "
        strSql = strSql & "         ),'-') "
    else
        strSql = strSql & "         ISNULL(( "
        strSql = strSql & "         	   SELECT	(CASE WHEN OT_ANS = (CASE WHEN QM_KBN = 0 THEN QM_ANS ELSE QM_MTFL END) THEN 'O' ELSE 'X' END) "
        strSql = strSql & "         	   FROM		ME_QST_MAS WITH(NOLOCK) "
        strSql = strSql & "         	   JOIN		ME_OXNOTE_TBL WITH(NOLOCK) ON QM_SEQ = OT_SEQ AND QM_SUB_COD = OT_SUB_COD AND QM_NO = OT_NO "
        strSql = strSql & "         	   WHERE	QM_SEQ = AJ_SEQ "
        strSql = strSql & "         	   AND		QM_SUB_COD = AJ_SUB_COD "
        strSql = strSql & "         	   AND		QM_NO = AJ_NO "
        strSql = strSql & "         	   AND		QM_EXAM_TYPE = AJ_EXAM_TYPE "
        strSql = strSql & "         	   AND		OT_MEM_ID = '" & uid & "' "
        strSql = strSql & "         ),'-') "        
    end if
    strSql = strSql & "FROM     ME_ANAL_JUNGDABYUL WITH(NOLOCK) "
    strSql = strSql & "JOIN     ME_ANS_MAS WITH(NOLOCK) ON AJ_SEQ = AM_SEQ AND AJ_SUB_COD = AM_SUB_COD AND AJ_NO = AM_NO AND AJ_EXAM_TYPE = AM_EXAM_TYPE "
    strSql = strSql & "JOIN     ME_SOLDNG_TIME WITH(NOLOCK) ON ST_SEQ = AM_SEQ AND ST_SUB_COD = AM_SUB_COD AND ST_NO = AM_NO "
    strSql = strSql & "WHERE	AJ_SEQ = " & seq & " "
    strSql = strSql & "AND		AJ_SUB_COD = '" & SUB_COD & "' "
    strSql = strSql & "AND		AJ_EXAM_TYPE = '" & exam_type & "' "
    strSql = strSql & "AND		ST_TECCODE = '" & TEC_CD & "' "
    strSql = strSql & "AND      ST_SOLFILE LIKE '"& FILE_NM &"%' "
    'response.write strsql
	Call RSExec(Rs,0,3,strSql,CUR_DB_NM)			
	if Not Rs.eof Then
	    arrQueList = Rs.GetRows()	
	End if
	Call RSClose(RS)

	cdn_exam_img_path=replace(img_main,"next.megastudy.net:8080","img.megastudy.net") & "/exam/exam_Test_img"

	'이미지 경로
	Sql = "SELECT CASE WHEN MONTH(EI_EXAM_DT)=11 AND EI_GRADE=3 THEN CONVERT(CHAR(4),EI_EXAM_DT,20)+'/'+RIGHT(REPLACE(CONVERT(CHAR(10),EI_EXAM_DT,20),'-',''),6)+'/A/G'+CAST(EI_GRADE AS VARCHAR(1))+'/OD/' ELSE CONVERT(CHAR(4),EI_EXAM_DT,20)+'/'+RIGHT(REPLACE(CONVERT(CHAR(10),EI_EXAM_DT,20),'-',''),6)+'/G'+CAST(EI_GRADE AS VARCHAR(1))+'/OD/' END "
	Sql = Sql & "FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & SEQ
	call RSExec(Rs,0,3,Sql,CUR_DB_NM)
	if not Rs.eof then      	
        url_neffi_exam = cdn_exam_img_path&"/" & trim(Rs(0)) 
	end if
	RSClose(Rs)  
%>
<!-- 문제보기 -->
<div class="commentary commentary_view" >
    <%
        if isArray(arrQueList) Then
            For i = 0 To Ubound(arrQueList, 2)
                queno   = arrQueList(0,i)
                ji_img  = arrQueList(1,i)
                queimg  = arrQueList(2,i)
                stm     = arrQueList(3,i)
                etm     = arrQueList(4,i)
                ji_stm  = arrQueList(5,i)
                ji_etm  = arrQueList(6,i)
                perox   = arrQueList(7,i)
                myox    = arrQueList(8,i)

                queimg  = url_neffi_exam & Left(queimg,8) & "/" & queimg     
        
    %>
            <div class="divQueArea" qno="<%=i %>" stm="<%=MAKE_TIME(stm)%>" etm="<%=MAKE_TIME(etm)%>" style="display:none;" >
	            <div class="table__top">
		            <div class="leftArea">
                        <% if ji_img <> "" Then %>
						<a href="#_blank" onclick="window.open('/Player/kollus/tab/ipsi_text.asp?seq=<%=seq%>&code=<%=SUB_COD %>&no=<%=queno %>','open','width=510,height=600,scrollbars=yes');" class="btn">지문보기</a>
						<% End if %> 
						<%If arrQueList(5,i)<>"" then%>
						<a href="#_blank" onclick="fncSetPlayPositon(<%=MAKE_TIME(arrQueList(5,i))%>);" class="btn">지문해설영상</a>
						<%End if%>
			            <% if myox <> "-" Then %> <a href="#_balnk" onclick="fncOXNoteAdd(<%=queno %>)" class="btn" style="width: 67px">오답노트등록</a><% End if %>
		            </div>
		            <div class="t_rightArea">
			            <table>
			            <tr>
				            <th>채점</th>
				            <td><%=myox %></td>
				            <th>오답률</th>
				            <td><%=perox %>%</td>
			            </tr>
			            </table>
		            </div>
	            </div>

	            <div class="commentary--txt"><img src="<%=queimg %>" alt=""></div>

	            <div class="commentary__btn">
                    <% if i > 0 Then %><a href="#_blank" onclick="fncSetPlayPositon(<%=MAKE_TIME(arrQueList(3,i-1))%>);"><img src="<%=IMG%>/bt_prev.gif" alt="이전"></a><% End if %>
		            <% if i < Ubound(arrQueList,2) Then %><a href="#_blank" onclick="fncSetPlayPositon(<%=MAKE_TIME(arrQueList(3,i+1))%>);"><img src="<%=IMG%>/bt_next.gif" alt="다음"></a><% End if %>
	            </div>
            </div>
    <%
            Next
        End if
    %>
</div>
<script type="text/javascript">
    var ntm = 0;
    var chkQueCnt = $('.divQueArea').length;
    var chkQueOrd = 0;
    var startTm = 0;

    function fncQueChk() {
        clearTimeout("qout");
        ntm = pos //parseInt(getCurrentPosition() / 1000);
        if (ntm > 0) {
            if (chkQueCnt > 0) {
                chkQueOrd = 0;
                for (i = 0; i < chkQueCnt; i++) {
                    var stm = parseInt($('.divQueArea').eq(i).attr("stm"));
                    var etm = parseInt($('.divQueArea').eq(i).attr("etm"));
                    var qno = parseInt($('.divQueArea').eq(i).attr("qno"));
                    if (i == 0) { startTm = stm; }
                    if (ntm >= stm && ntm < etm) {
                        $(".divQueArea").hide();
                        $(".divQueArea").eq(i).show();
                        chkQueOrd = qno;
                        break;
                    }
                }

                if (chkQueOrd == 0) {
                    if (ntm < startTm) {
                        $(".divQueArea").hide();
                        $(".divQueArea").eq(0).show();
                    } else if (ntm > etm) {
                        $(".divQueArea").hide();
                        $(".divQueArea").eq(chkQueCnt - 1).show();
                    }
                }
            }
        }

        qout = setTimeout("fncQueChk()", 1000);
    }

    //오답노트 추가
    function fncOXNoteAdd(qno) {
        alert("이미 등록된 문항은 제외됩니다.");

        var url;
        url = "/Player/kollus/tab/ipsi_update_ax.asp?seq=<%=seq%>&sub_cod=<%=sub_cod%>&am_no=" + qno;
        $.post(url, function () {
            alert("오답노트에 등록 되었습니다.");
        });
    }

    $(document).ready(function () {
        var qout = setTimeout("fncQueChk()", 1000);
    });
</script>