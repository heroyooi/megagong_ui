<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
<%
	IMG = img_player+"/player_2016"
	
    seq=fncRequest("seq")
    dom_cd=fncRequest("dom_cd")	
    sub_cd=fncRequest("sub_cd")	
    
    
    select case dom_cd
        case "1" : sub_cd="1003"
        case "3" : sub_cd="3003"
        case "4" : sub_cd="4113"
    end select 
    
    edit_flg="N"
    exam_flg="1"
    
    if sub_cd<>"4113" then    
        Sql= "SELECT EI_EDIT_FLG,EI_EXAM_FLG FROM ME_EXAM_INFO WITH(NOLOCK) WHERE EI_SEQ=" & seq 
        call RSExec(Rs,0,3,Sql,"exammain")

        if not Rs.eof then
            edit_flg=Rs(0)
            exam_flg=Rs(1)
        end if
        RSClose(Rs)	  
            
        '편차 추출
        Sql = "SELECT SMS_SUB_COD,ROUND(SMS_AVG,2),SMS_AVG_INFO,ROUND(SMS_SIG,2),SMS_SIG_INFO  "
        Sql = Sql & "FROM RME_SUBMEAN_SAT WITH(NOLOCK) JOIN ME_SUB_MAS WITH(NOLOCK) "
        Sql = Sql & "ON SMS_SUB_COD=SM_SUB_COD "
        Sql = Sql & "WHERE SMS_SEQ=" & seq & " "
        Sql = Sql & "AND SMS_SUB_COD='" & sub_cd & "' "	
        Sql = Sql & "ORDER BY SMS_SUB_COD "
        call RSExec(Rs,0,3,Sql,"exammain")
    	
        if not Rs.eof then
            arr_sig_score_info_a=Rs.GetRows()
        end if
        RSClose(Rs)	 
        
        
        Sql = "SELECT GHD_SCORE,GHD_GRADE,ROUND(GHD_SIG_SCORE,0),GHD_100RATE,ROUND(GHD_PER,1),GHD_SCORE_INFO "
        if edit_flg="N" then
            Sql = Sql & "FROM H_RME_GRDHIS_DSP WITH(NOLOCK) JOIN ME_SUB_MAS WITH(NOLOCK) "
        else
            Sql = Sql & "FROM RME_GRDHIS_DSP WITH(NOLOCK) JOIN ME_SUB_MAS WITH(NOLOCK) "
        end if
        Sql = Sql & "ON GHD_SUB_COD=SM_SUB_COD "
        Sql = Sql & "WHERE GHD_GRADE<9 "
        Sql = Sql & "AND GHD_SEQ=" & SEQ & " "
        Sql = Sql & "AND GHD_SUB_COD='" & sub_cd & "' "
        Sql = Sql & "AND GHD_SCORE>0 "
        Sql = Sql & "ORDER BY GHD_SUB_COD,GHD_GRADE"
        call RSExec(Rs,0,3,Sql,"exammain")

        if not Rs.eof then
            arr_score_info_a=Rs.GetRows()
        end if
        RSClose(Rs)	    
    end if   
 
%>
				<table class="table__common">
				<thead>
				<tr>
					<th><span>평균</span></th>
					<th><span>표준편차</span></th>
				</tr>
				</thead>
				<tbody>
				<tr>
					<td>
						<%if isarray(arr_sig_score_info_a) then%>
							<%=arr_sig_score_info_a(1,0)%> 
							<%if arr_sig_score_info_a(2,0)="0" then%>
							(-)
							<%elseif arr_sig_score_info_a(2,0)="2" then%>
							(<img src="<%=img_entinfo%>/2007_jungsi/full/icon_up.gif" >)
							<%else%>
							(<img src="<%=img_entinfo%>/2007_jungsi/full/icon_down.gif" >)
							<%end if%>
						<%else%>
						-
						<%end if%>					    
					</td>
					<td>
						<%if isarray(arr_sig_score_info_a) then%>
							<%=arr_sig_score_info_a(3,0)%>
							<%if arr_sig_score_info_a(4,0)="0" then%>
							(-)
							<%elseif arr_sig_score_info_a(4,0)="2" then%>
							(<img src="<%=img_entinfo%>/2007_jungsi/full/icon_up.gif" >)
							<%else%>
							(<img src="<%=img_entinfo%>/2007_jungsi/full/icon_down.gif" >)
							<%end if%>
						<%else%>
						-																	
						<%end if%>					
					</td>
				</tr>
				</tbody>
				</table>

				<table class="table__common">
				<colgroup>
					<col width="68">
				</colgroup>
				<thead>
				<tr>
					<th><span>등급</span></th>
					<th><span>원점수</span></th>
					<th><span>표준점수</span></th>
					<th><span>백분위</span></th>
				</tr>
				</thead>
				<tbody>
                <%
                    if sub_cd<>"4113" then    
                        if isarray(arr_score_info_a) then
                            for fCnt=0 to ubound(arr_score_info_a,2)
                %>					
				<tr>
					<th><%if arr_score_info_a(1,fCnt)=0 then%>만점<%else%><%=arr_score_info_a(1,fCnt)%>등급<%end if%></th>
					<td>
						<%=arr_score_info_a(0,fCnt)%>
						<%if exam_flg="1" then%>
						    <%if arr_score_info_a(5,fCnt)="0" then%>
						    (-)
						    <%elseif arr_score_info_a(5,fCnt)="2" then%>
						    (<img src="<%=img_entinfo%>/2007_jungsi/full/icon_up.gif">)
						    <%else%>
						    (<img src="<%=img_entinfo%>/2007_jungsi/full/icon_down.gif">)
						    <%end if%>			
						<%end if%>		
					</td>
					<td>
					    <%if exam_flg="1" then%>
					        <%=arr_score_info_a(2,fCnt)%>
					    <%else%>
					        <%if edit_flg="Y" then%>
					    <%=arr_score_info_a(2,fCnt)%>    
					        <%else%>
					        -
					        <%end if%>
					    <%end if%>
					</td>
					<td>
					    <%if exam_flg="1" then%>
					        <%=arr_score_info_a(3,fCnt)%>
					    <%else%>
					        <%if edit_flg="Y" then%>
					            <%=arr_score_info_a(3,fCnt)%> 
					        <%else%>
					        -
					        <%end if%>					    
					    <%end if %>
					</td>
				</tr>
                <%
                            next
                        else
                %>				
				<tr>
					<th colspan="4">등록된 정보가 없습니다.</th>					
				</tr>
                <%
                        end if
                    else
			            for fCnt=0 to 8
                            kor_story_grd=9
            			    
                            if my_his_score="50" then
                                kor_story_grd=0                                                                        			    			
                            elseif my_his_score>="40" then
                                kor_story_grd=1
                            elseif my_his_score>="35" and my_his_score<"40" then
                                kor_story_grd=2
                            elseif my_his_score>="30" and my_his_score<"35" then
                                kor_story_grd=3
                            elseif my_his_score>="25" and my_his_score<"30" then
                                kor_story_grd=4
                            elseif my_his_score>="20" and my_his_score<"25" then
                                kor_story_grd=5
                            elseif my_his_score>="15" and my_his_score<"20" then
                                kor_story_grd=6
                            elseif my_his_score>="10" and my_his_score<"15" then
                                kor_story_grd=7
                            elseif my_his_score>="5" and my_his_score<"10" then
                                kor_story_grd=8
                            end if	
                            
                            select case fCnt
                                case 0 : his_grade_score="50"			                                                
                                case 1 : his_grade_score="40"
                                case 2 : his_grade_score="35"
                                case 3 : his_grade_score="30"
                                case 4 : his_grade_score="25"
                                case 5 : his_grade_score="20"
                                case 6 : his_grade_score="15"
                                case 7 : his_grade_score="10"
                                case 8 : his_grade_score="5"
                            end select                     
                %>
				<tr>
					<th><%if fCnt=0 then%>만점<%else%><%=fCnt%>등급<%end if%></th>
					<td><%=his_grade_score %></td>
					<td>-</td>
					<td>-</td>
				</tr>                
                <%    
                        next
                    end if                        
                %>					
				
				</tbody>
				</table>