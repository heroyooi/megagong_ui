<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<!-- ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- ���� ��Ŭ��� ������ ���� -->
<%
	uid     = Trim(fncRequestCookie("userid"))		'ȸ�����̵�
	mem_type= Trim(fncRequestCookie("mem_type"))

	APP_NO 	= TRIM(fncRequest("APP_NO"))
	
	CHR_CD 	= TRIM(fncRequest("CHR_CD"))
	CHR_NM 	= TRIM(fncRequest("CHR_NM"))
	LEC_CD 	= TRIM(fncRequest("LEC_CD"))
	LEC_SEQ	= TRIM(fncRequest("LEC_SEQ"))
	
	TEC_CD 	= TRIM(fncRequest("TEC_CD"))
	TEC_NM  = TRIM(fncRequest("TEC_NM"))

	DNG_KBN = TRIM(fncRequest("DNG_KBN"))

    htmlPlay = Trim(fncRequest("htmlPlay"))

    if DNG_KBN = "10" Then
        GoPlayer = "10"
    Else
        GoPlayer = "20"
    End if

	PlayerKbn = fncRequest("PlayerKbn")
	PlayerApp = fncRequest("PlayerApp")
    UseWidth = fncRequest("UseWidth")
    UseHeight = fncRequest("UseHeight")

    UseSite = fncRequest("UseSite")

    userBrowser = fncRequest("userBrowser")
    BrowserVersion = fncRequest("BrowserVersion")

    

    UseSize = "Y"
    if UseWidth < 1500 Then
        UseSize = "N"
    End if
    'UseSize = "N"

    if htmlPlay = "Y" Then
        UseSize = "H"
    End if

    if PlayerKbn = "T" or PlayerKbn = "M" then

        Function fncWinClose(Val)
            Response.Write ("<script language='javascript'>alert('����� �ʿ��� ������ �����մϴ�.[" & Val & "]');window.close();</script>")
        End Function

        EP1_FN = fncRequest("EP1_FN")
        EP2_PT = fncRequest("EP2_PT")
        EP5_WM = fncRequest("EP5_WM")
        EP6_PC = fncRequest("EP6_PC")
        
        '�Ķ���� ��ȣȭ �ǽ�
        Set Enc_Obj = Server.CreateObject("PMPDownCrypto.CoPMPDownCrypto")
            LEC_CD 	= Enc_Obj.Decrypt(LEC_CD)
            CHR_CD 	= Enc_Obj.Decrypt(CHR_CD)
            MGubun 	= Enc_Obj.Decrypt(EP1_FN)
            MemId   = Enc_Obj.Decrypt(EP2_PT)
            UseSite = Enc_Obj.Decrypt(EP5_WM)
            OpnSite = Enc_Obj.Decrypt(EP6_PC)
        Set Enc_Obj = Nothing

        if CHR_CD = "34827" And LEC_CD = "659961" Then
            TEST = "Y"
        Else
            if MemId <> "" and OpnSite <> "" and UseSite <> "" then 

                if inStr(OpnSite,UseSite) = 0 then
                    fncWinClose("����Ʈ����")
                end if

                Select Case MGubun
                    Case "1" : MType = "T"
                    Case "2" : MType = "E"
                    Case "3" : MType = "A"
                End Select

                strSql = ""
                strSql = strSql &"SELECT    MM_ID "
                strSql = strSql &"FROM      MS_MEM_MAS WITH(NOLOCK) "
                strSql = strSql &"WHERE     MM_MEM_TYPE = '" & MType & "'"
                strSql = strSql &"AND       MM_ID = '" & MemId & "'"
                Set RS = DBexec(strSQL,"study")
                if Rs.Eof then
                    fncWinClose("ȸ������")
	                Response.End
                END IF
            else
                fncWinClose("���̵�")
                Response.End
            end if
        End if
    end if
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="x-ua-compatible" content="IE=edge" />
<title><%=window_title %></title>
<link type="text/css" href="/Player/css/player_2011.css" rel="stylesheet" />
<script type="text/javascript" src="<%=url_common%>/js/jquery/jquery-latest_header.js"></script>
<script type="text/javascript">
    //Ŭ�����忡 �� �����ϱ�
    function urlToClip(valStr) {
        try {
            var doc = valStr;

            if (window.clipboardData.setData('Text', doc)) {
                alert(doc + "\n\n��ΰ� Ŭ�����忡 ����Ǿ����ϴ�.Ctrl+V�� ������ ����˴ϴ�.");
            }
        }
        catch (e) {
        }
    }
    var htmlPlay = "<%=htmlPlay %>";
    function fncPathSet(dk,dp,rp,np) {
        strHtml = "";

        if (dk == "10") {
            strHtml = "<li>�Ϲ��Է°�� : <span onclick=\"urlToClip('" + dp + "')\" style='cursor:copy;' >" + dp + "</span></li><li>�Ϲݽ������ : <span onclick=\"urlToClip('" + rp + "')\" style='cursor:copy;'>" + rp + "</span></li>";
            $("#ulNormPathArea").html(strHtml);
        } else {
            strHtml = "<li>��ȭ���Է°�� : <span onclick=\"urlToClip('" + dp + "')\" style='cursor:copy;'>" + dp + "</span></li><li>��ȭ��������� : <span onclick=\"urlToClip('" + rp + "')\" style='cursor:copy;'>" + rp + "</span></li>";
            $("#ulHighPathArea").html(strHtml);
            if (htmlPlay == "Y") {
                strHtml = "<li>NON-DRM��� : <span onclick=\"urlToClip('" + np + "')\" style='cursor:copy;'>" + np + "</span></li>";
                $("#ulHTML5PathArea").html(strHtml);
            }
        }
    }
</script>
<% if UseSize = "N" Then %>
<script type="text/javascript">
    $(document).ready(function () {
        window.resizeTo(785,930);
    })
</script>
<% Elseif UseSize = "H" Then %>
<script type="text/javascript">
    $(document).ready(function () {
        window.resizeTo(785, 555);
    })
</script>
<% Else %>
    <script type="text/javascript">
        $(document).ready(function () {
            window.resizeTo(1552,555);
        })
    </script>
<% End if %>
</head>
<body>
	<div id="container" style="overflow:hidden; padding-left:2px;">
        <div <% if UseSize = "Y" Then %>style="float:left;"<% Elseif UseSize = "H" Then %>style="display:none;"<% End if %> >
        <%
            DNG_KBN = 10
            if GoPlayer = "10" Then
                AutoPlay = "Y"
            Else
                AutoPlay = "N"
            End if

            if TEST = "Y" Then
                DNG_KBN = 10
                AutoPlay = "Y"
            End if

            P_WIDTH = "765"
            P_HEIGHT = "384"

            if UseSize <> "H" Then
        %>
        <!--#include virtual="/Player/anp/admin/anpframe_inc.asp"-->
        <%
            End if    
        %>
        </div>
        <div style="height:390px;">
        <%
            HDPlus = fncRequest("HDPlus")

            DNG_KBN = 20
            if GoPlayer = "20" Then
                AutoPlay = "Y"
            Else
                AutoPlay = "N"
            End if

            if TEST = "Y" Then
                DNG_KBN = 20
                AutoPlay = "Y"
            End if

            P_WIDTH = "765"
            P_HEIGHT = "384"
        %>
        <!--#include virtual="/Player/anp/admin/anpframe_inc.asp"-->
        </div>
        <div style="padding:10px 7px 50px 3px;">
            <div style="background-color:lightgray; <% if UseSize = "Y" Then %>font-size:14px;<% Else %>font-size:11px;<% End if %>">
                <ul id="ulNormPathArea"></ul>
                <ul id="ulHighPathArea"></ul>
                <ul id="ulHTML5PathArea"></ul>
            </div>
        </div>
	</div>


</body>
</html>