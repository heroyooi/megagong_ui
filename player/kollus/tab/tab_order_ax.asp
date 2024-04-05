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

	'회원채점 여부
	if UID <> "" then
		strSql = "SELECT COUNT(1) FROM ME_MEM_MAS WITH(NOLOCK) WHERE MM_SEQ=" & SEQ & " AND MM_MEM_ID='" & UID & "' AND MM_SUB_COD='" & SUB_COD & "' AND MM_OPT=0  "			
		call RSExec(Rs,0,1,strSql,CUR_DB_NM)							
	
		IF RS(0) > "0" THEN
			IS_EXAM_YN="Y"   '이거 시험을 본 경우 
		END IF
		Call RSCLOSE(RS)
	end if

    'IS_EXAM_YN = "Y"

	'목차보기 데이터 추출  
    strSql = "" 

    if CUR_DB_NM<>"exam_old" then  	
        strSql = strSql & "	SELECT	DISTINCT ST_NO, ST_STIME, ST_ETIME, 100-ISNULL(AJ_JDY,0) AJ_JDY, ISNULL(MD_NO,'0') MD_NO, SEL_FLG = CASE WHEN ISNULL(MD_ANS,'0') = AJ_ANS THEN '0' ELSE 'X' END," 
        strSql = strSql & "	ISNULL((SELECT TOP 1 MC_M_CLS_NM "
        strSql = strSql & "	FROM MegaExam_Sum.DBO.ME_M_CLS WITH(NOLOCK) JOIN MegaExam_Sum.DBO.ME_S_CLS WITH(NOLOCK)   "
        strSql = strSql & "	ON MC_B_CLS_CD=SC_B_CLS_CD   "
        strSql = strSql & "	AND MC_M_CLS_CD=SC_M_CLS_CD  "
        strSql = strSql & "	AND MC_SUB_COD=SC_SUB_COD   "
        strSql = strSql & "	JOIN MegaExam_Sum.DBO.ME_QST_CLS_LNK AS A WITH(NOLOCK)  "
        strSql = strSql & "	ON QCL_SUB_COD=SC_SUB_COD  "
        strSql = strSql & "	AND QCL_CLS_COD=SC_CLS_CD  "
        strSql = strSql & "	WHERE QCL_SEQ=ST_SEQ "
        strSql = strSql & "	AND QCL_SUB_COD=ST_SUB_COD "
        strSql = strSql & "	AND QCL_NO=ST_NO "
        strSql = strSql & "	ORDER BY MC_ORD "
        strSql = strSql & "	),'') , "
        strSql = strSql & " ISNULL(SE_SNO,0),ISNULL(SE_ENO,0),ISNULL(SE_STIME,''),ISNULL(SE_ETIME,'') " '7~9
        strSql = strSql & "	FROM	ME_SOLDNG_TIME with(nolock) "
        strSql = strSql & "	INNER JOIN ME_ANAL_JUNGDABYUL with(nolock) ON ST_SEQ = AJ_SEQ AND ST_SUB_COD = AJ_SUB_COD AND ST_NO = AJ_NO AND AJ_EXAM_TYPE=" & exam_type & " "
        strSql = strSql & " LEFT OUTER JOIN ME_SOLDNG_EXP WITH(NOLOCK) ON SE_SEQ=ST_SEQ AND SE_SUB_CD=ST_SUB_COD AND SE_SNO=ST_NO AND ST_TECCODE=SE_TEC_CD "

        SELECT CASE LEFT(SUB_COD,2)
        CASE "10":
	        strSql = strSql & "	LEFT JOIN ME_MEM_D1 with(nolock) ON MD_SEQ="&SEQ&" AND MD_SUB_COD='"&SUB_COD&"' AND MD_NO=ST_NO AND MD_MEM_ID = '"& uid &"' "
        CASE "21","22","20" :
	        strSql = strSql & "	LEFT JOIN ME_MEM_D2 with(nolock) ON MD_SEQ="&SEQ&" AND MD_SUB_COD='"&SUB_COD&"' AND MD_NO=ST_NO AND MD_MEM_ID = '"& uid &"' "
        CASE "30":
	        strSql = strSql & "	LEFT JOIN ME_MEM_D3 with(nolock) ON MD_SEQ="&SEQ&" AND MD_SUB_COD='"&SUB_COD&"' AND MD_NO=ST_NO AND MD_MEM_ID = '"& uid &"' "
        CASE "40","41":
	        strSql = strSql & "	LEFT JOIN ME_MEM_D4 with(nolock) ON MD_SEQ="&SEQ&" AND MD_SUB_COD='"&SUB_COD&"' AND MD_NO=ST_NO AND MD_MEM_ID = '"& uid &"' "
        CASE "42":
	        strSql = strSql & "	LEFT JOIN ME_MEM_D5 with(nolock) ON MD_SEQ="&SEQ&" AND MD_SUB_COD='"&SUB_COD&"' AND MD_NO=ST_NO AND MD_MEM_ID = '"& uid &"' "
        CASE "50":
	        strSql = strSql & "	LEFT JOIN ME_MEM_D6 with(nolock) ON MD_SEQ="&SEQ&" AND MD_SUB_COD='"&SUB_COD&"' AND MD_NO=ST_NO AND MD_MEM_ID = '"& uid &"' "
        END SELECT

        strSql = strSql & "	WHERE	ST_SEQ="& SEQ &"  AND LEN(ST_STIME)>0 AND ST_SOLFILE LIKE '"& FILE_NM &"%' "
        strSql = strSql & " AND		ST_SUB_COD = '" & SUB_COD & "' "
        strSql = strSql & " AND ST_STIME<>'' AND ST_ETIME<>'' "
        strSql = strSql & "	ORDER BY ST_NO "	      	
        
    else  	
   
        strSql = strSql & "	SELECT	DISTINCT ST_NO, ST_STIME, ST_ETIME, 100-ISNULL(AJ_JDY,0) AJ_JDY, ISNULL(OT_NO,'0') OT_NO, SEL_FLG = CASE WHEN ISNULL(OT_NO,0) <> 0 THEN '0' ELSE 'X' END,"
        strSql = strSql & "	ISNULL((SELECT TOP 1 MC_M_CLS_NM "
        strSql = strSql & "	FROM MegaExam_Sum.DBO.ME_M_CLS WITH(NOLOCK) JOIN MegaExam_Sum.DBO.ME_S_CLS WITH(NOLOCK)   "
        strSql = strSql & "	ON MC_B_CLS_CD=SC_B_CLS_CD   "
        strSql = strSql & "	AND MC_M_CLS_CD=SC_M_CLS_CD  "
        strSql = strSql & "	AND MC_SUB_COD=SC_SUB_COD   "
        strSql = strSql & "	JOIN MegaExam_Sum.DBO.ME_QST_CLS_LNK AS A WITH(NOLOCK)  "
        strSql = strSql & "	ON QCL_SUB_COD=SC_SUB_COD  "
        strSql = strSql & "	AND QCL_CLS_COD=SC_CLS_CD  "
        strSql = strSql & "	WHERE QCL_SEQ=ST_SEQ "
        strSql = strSql & "	AND QCL_SUB_COD=ST_SUB_COD "
        strSql = strSql & "	AND QCL_NO=ST_NO "
        strSql = strSql & "	ORDER BY MC_ORD "
        strSql = strSql & "	),'') , "    
        strSql = strSql & " ISNULL(SE_SNO,0),ISNULL(SE_ENO,0),ISNULL(SE_STIME,''),ISNULL(SE_ETIME,'') "
        strSql = strSql & "	FROM	ME_SOLDNG_TIME with(nolock) "
        strSql = strSql & "	INNER JOIN ME_ANAL_JUNGDABYUL with(nolock) ON ST_SEQ = AJ_SEQ AND ST_SUB_COD = AJ_SUB_COD AND ST_NO = AJ_NO AND AJ_EXAM_TYPE='" & exam_type & "' "
        strSql = strSql & " LEFT OUTER JOIN ME_SOLDNG_EXP WITH(NOLOCK) ON SE_SEQ=ST_SEQ AND SE_SUB_CD=ST_SUB_COD AND SE_SNO=ST_NO AND ST_TECCODE=SE_TEC_CD "
        if seq>=139 then
            strSql = strSql & "AND SE_FILE_NM=ST_SOLFILE "
        end if
        strSql = strSql & " LEFT OUTER JOIN ME_OXNOTE_TBL WITH(NOLOCK) ON OT_SEQ="&SEQ&" AND OT_SUB_COD='"&SUB_COD&"' AND OT_NO=ST_NO AND OT_MEM_ID = '"& uid &"' "
        strSql = strSql & "	WHERE	ST_SEQ="& SEQ &"  AND LEN(ST_STIME)>0 AND ST_SOLFILE LIKE '"& FILE_NM &"%' "
        strSql = strSql & " AND		ST_SUB_COD = '" & SUB_COD & "' "
        strSql = strSql & " AND ST_STIME<>'' AND ST_ETIME<>'' "
        strSql = strSql & "	ORDER BY ST_NO "	      	
    End if
 
    Call RSExec(RS,0,3,strSql,CUR_DB_NM)			
    if not Rs.eof then
	    arr_sol_index=Rs.GetRows()
    end if
    RSClose(Rs)    

%>
<!-- 목찹보기 -->
<div class="commentary">
	<div class="table__top">
		<div class="leftArea">
            <%if isarray(arr_sol_index) then%>
                <%if uid <> "" then%>
                    <% if IS_EXAM_YN = "Y" then '시험 봤으면 %>
					    <a href="#_blank" onclick="fncChkOX_X();" class="btn">오답선택</a>
                    <% Else %>
                        <a href="#_blank" onclick="alert('채점서비스를 먼저 이용해 주세요.');" class="btn">오답선택</a>
                    <% End if %>
                <% Else %>
                    <a href="#_blank" onclick="alert('로그인 후 사용하세요.');" class="btn">오답선택</a>
                <% End if %>
            <% Else %>
                <a href="#_blank" onclick="alert('해설강의 목차 정보가 없어 처리할 수 없습니다.');" class="btn">오답선택</a>
            <% End if %>
		</div>
		<div class="t_rightArea">
            <%if isarray(arr_sol_index) then%>
				<a href="#_blank" onclick="fncChkPlay();" class="btn bt_bookmark">선택보기</a>
                <%if SEQ<>117 and seq<>138 and seq<>151 then%>
                    <%if uid <> "" then%>
					    <a href="#_blank" onclick="fncChkOXNoteAdd()" class="btn bt_bookmark" style="width: 65px"> 오답노트등록</a>
                    <% Else %>
                        <a href="#_blank" onclick="alert('로그인 후 사용하세요.');" class="btn bt_bookmark" style="width: 65px"> 오답노트등록</a>
                    <% End if %>
                <% End if %>
            <% Else %>
				<a href="#_blank" onclick="alert('해설강의 목차 정보가 없어 처리할 수 없습니다.');" class="btn bt_bookmark">선택보기</a>
                <%if SEQ<>117 and seq<>138 and seq<>151 then%>
					<a href="#_blank" onclick="alert('해설강의 목차 정보가 없어 처리할 수 없습니다.');" class="btn bt_bookmark" style="width: 65px"> 오답노트등록</a>
                <% End if %>
            <% End if %>
		</div>
	</div>

	<div class="commentary--list">

		<table id="divQueTable" class="table__common table__commentary">
		<colgroup>
			<col width="32">
			<col>
            <col width="135">
            <col><col><col>
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox" onclick="fncChkSlt(this)" <%if not isarray(arr_sol_index) then%>disabled<%end if%> ></th>
				<th><span>번호</span></th>
                <th><span>문항분류</span></th>
				<th><span>채점</span></th>
				<th><span>오답률</span></th>
				<th><span>시간</span></th>
			</tr>
		</thead>
		<tbody>
        <%              	
                QST_CNT = 1   '문제수 
                bg_cnt=1
                exp_cnt=0
                 
                if isarray(arr_sol_index) then
        	
                    for fCnt=0 to ubound(arr_sol_index,2)
            	        lec_nm="-"
            	        if arr_sol_index(6,fCnt)<>"" then
            		        lec_nm=arr_sol_index(6,fCnt)
            		        lec_nm=replace(lec_nm,"_",chr(13)&chr(10))
            	        end if    
            	
            	        if arr_sol_index(7,fCnt)<>"0" then 	                    		            		            		
            		        exp_cnt=exp_cnt+1
        %>
					        <tr>
						        <td>-<input type="checkbox" name="iptPrintChk" id="" stm="<%=MAKE_TIME(arr_sol_index(9,fCnt))%>" etm="<%=MAKE_TIME(arr_sol_index(10,fCnt))%>" style="display:none;" ></td>
						        <td colspan="4" onclick="fncSetPlayPositon(<%=MAKE_TIME(arr_sol_index(9,fCnt))%>)" style="cursor:pointer;" >지문(<%=arr_sol_index(7,fCnt)%>번 ~ <%=arr_sol_index(8,fCnt)%>번)</td>
						        <td><%=arr_sol_index(9,fCnt)%></td>
					        </tr>
        <%            	
            	        end if
        %>
					    <tr>
						    <td><input type="checkbox" name="iptQueChk" id="" stm="<%=MAKE_TIME(arr_sol_index(1,fCnt))%>" etm="<%=MAKE_TIME(arr_sol_index(2,fCnt))%>" value="<%=arr_sol_index(0,fCnt)%>" ></td>
						    <td onclick="fncSetPlayPositon(<%=MAKE_TIME(arr_sol_index(1,fCnt))%>)" style="cursor:pointer;"><%=arr_sol_index(0,fCnt)%> 번</td>
                            <td>
                                <%if arr_sol_index(6,fCnt)="" then%>
                                    -
                                <%else%>
                                    <a title="<%=lec_nm%>"><%=replace(arr_sol_index(6,fCnt),"_"," ")%></a>
                                <%end if%>						
                            </td>
						    <td class="ch">
                                <%IF IS_EXAM_YN = "Y" THEN%>
                                    <%IF arr_sol_index(5,fCnt)="0" THEN%>
                                        <span class="OX_O">O</span>
                                    <%ELSE%>
                                        <span class="OX_X" style="color:red;">X</span>
                                    <%END IF%>
                                <%ELSE%>
                                    <span class="OX_N">-</span>
                                <%END IF%>	
						    </td>
						    <td><%IF SEQ="61" THEN%>0<%ELSE%><%=arr_sol_index(3,fCnt)%><%END IF%>%</td>
						    <td><%=arr_sol_index(1,fCnt)%></td>
					    </tr>
        <%
                        QST_CNT = QST_CNT + 1
                    next
          
                    qst_cnt = qst_cnt - 1 
                End if 	
        %>	

		</tbody>
		</table>

	</div>
</div>
<script type="text/javascript">
    var ntm = 0;
    var chkQueCnt = $('input:checkbox[name="iptQueChk"]').length;
    var chkPrtCnt = $('input:checkbox[name="iptPrintChk"]').length;
    var chkSltCnt = 0;

    function fncQueChk() {
        clearTimeout("tout");
        ntm = pos //parseInt(getCurrentPosition() / 1000);
        if (ntm > 0) {
            if (chkPrtCnt > 0) {
                for (i = 0; i < chkPrtCnt; i++) {
                    var stm = parseInt($('input:checkbox[name="iptPrintChk"]').eq(i).attr("stm"));
                    var etm = parseInt($('input:checkbox[name="iptPrintChk"]').eq(i).attr("etm"));
                    if (ntm >= stm && ntm < etm) {
                        $("#divQueTable tr").removeClass("on");
                        $('input:checkbox[name="iptPrintChk"]').eq(i).parent().parent().addClass("on");
                        break;
                    }
                }
            }
            if (chkQueCnt > 0) {
                for (i = 0; i < chkQueCnt; i++) {
                    var stm = parseInt($('input:checkbox[name="iptQueChk"]').eq(i).attr("stm"));
                    var etm = parseInt($('input:checkbox[name="iptQueChk"]').eq(i).attr("etm"));
                    if (ntm >= stm && ntm < etm) {
                        $("#divQueTable tr").removeClass("on");
                        $('input:checkbox[name="iptQueChk"]').eq(i).parent().parent().addClass("on");
                        break;
                    }
                }
            }
        }

        tout = setTimeout("fncQueChk()", 1000);
    }

    function fncChkSlt(t) {
        $('input:checkbox[name="iptQueChk"]').prop("checked", $(t).is(":checked"));
    }

    function fncChkOX_X(){
        var xcnt = $(".ch .OX_X").length;
        if (xcnt == 0) {
            alert("틀린 문제가 없습니다.");
            return;
        }
        $(".ch span").each(function (i) {
            if ($(this).attr("class") == "OX_X") {
                $('input:checkbox[name="iptQueChk"]').eq(i).prop("checked", "checked");
            }
        });
    }

    //오답노트 추가
    function fncChkOXNoteAdd() {
        chkSltCnt = $('input:checkbox[name="iptQueChk"]:checked').length;

        if (chkSltCnt == 0) {
            alert("선택된 문항이 없습니다.\n문항을 선택해 주세요.");
            return false;
        }
        
        var qst_no = "";
        $('input:checkbox[name="iptQueChk"]:checked').each(function(){
            if(qst_no != ""){ qst_no += ","; }
            qst_no += this.value;
        });

        alert("이미 등록된 문항은 제외됩니다.");

        var url;
        url = "/Player/kollus/tab/ipsi_update_ax.asp?seq=<%=seq%>&sub_cod=<%=sub_cod%>&am_no=" + qst_no;
        $.post(url, function () {
            alert("오답노트에 등록 되었습니다.");
        });
    }

    var nextTm = 0;
    var chkCnt = 0;
    var cout;
    function fncChkPlay() {
        clearTimeout("cout");
        chkSltCnt = $('input:checkbox[name="iptQueChk"]:checked').length;
        if (ntm > 0) {
            if (chkSltCnt > 0) {
                chkCnt = 0;
                ntm = pos //parseInt(getCurrentPosition() / 1000);
                for (i = 0; i < chkSltCnt; i++) {
                    var stm = parseInt($('input:checkbox[name="iptQueChk"]:checked').eq(i).attr("stm"));
                    var etm = parseInt($('input:checkbox[name="iptQueChk"]:checked').eq(i).attr("etm"));
                    if (ntm >= stm && ntm < etm) {
                        chkCnt = 1;
                    }

                    if (ntm < stm && nextTm == 0) {
                        nextTm = stm;
                    }
                }
                if (chkCnt == 0) {
                    if (ntm >= etm && nextTm == 0) {
                        fncSetPlayPositon($('input:checkbox[name="iptQueChk"]:checked').eq(0).attr("stm"));
                    } else {
                        fncSetPlayPositon(nextTm);
                        nextTm = 0;
                    }
                }

                tout = setTimeout("fncChkPlay()", 1000);
            } else {
                return;
            }
        }
    }

    $(document).ready(function () {
        var tout = setTimeout("fncQueChk()", 1000);

    });
</script>