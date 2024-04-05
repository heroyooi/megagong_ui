<%
    strSql = ""
    strSql = strSql & "SELECT	TOP 1 CI_MEDIA_KEY "
    strSql = strSql & "FROM     MS_CONTENT_INFO WITH(NOLOCK) "
    strSql = strSql & "WHERE	CI_DEL_YN = 'N' "
    strSql = strSql & "AND      CI_CATE1 = 'H' "
    strSql = strSql & "AND		CI_CATE2 = 'M' "
    strSql = strSql & "AND		CI_REST_NM = 'H3170309ENG_01.MP3' "
    strSql = strSql & "ORDER BY CI_IDX DESC "
    Set rs = DBExec(strSql,"study")
    If Not rs.EOF Then
        mckey = Rs(0)
    End If
    Call DBClose(rs)
%>