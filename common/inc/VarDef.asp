<%
	' �۾��� ������ ǥ��
	'If left(Request.ServerVariables("REMOTE_ADDR"),10) = "172.15.11." or Request.ServerVariables("REMOTE_ADDR") = "210.181.48.60" Or Request.ServerVariables("REMOTE_ADDR") = "112.216.111.58" Then
	'Else
	'	Response.redirect "/parking.asp"
	'	Response.End
	'End If

   ' if inStr(fncRequestVariables("PATH_INFO"), "/mypage/order/my_order.asp") > 0 Then
   '    'if Now() < CDate("2020-07-23 03:00:00") Then
   '	    Response.redirect "/error.asp"
   '	    Response.End
   '    'Else
   '	   ' Response.redirect "/megagong.asp"
   '	   ' Response.End
   '    'End if
   'End if
    'response.write Request.ServerVariables("REMOTE_ADDR")

'response.redirect "/"
	g_site_domain = "megagong.net"

    https   =  fncRequestVariables("https")
    hostnm  =  fncRequestVariables("HTTP_HOST")

    if inStr(hostnm, "dev") > 0 Then
		httpsnm = "https://" & hostnm
        if inStr(hostnm, "dev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/gong/") > 0 Then
            Response.Redirect "https://dev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobangdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/sobang/") > 0 Then
            Response.Redirect "https://sobangdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "gongsseldev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/gong/") > 0 Then
            Response.Redirect "https://gongsseldev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ansungdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/ansung/") > 0 Then
            Response.Redirect "https://ansungdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobangcampusdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/sobang/") > 0 Then
            Response.Redirect "https://sobangcampusdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ngbrdev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/r/ngbr/") > 0 Then
            Response.Redirect "https://ngbrdev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "armydev.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/army/") > 0 Then
            Response.Redirect "https://armydev.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
    Else
        if hostnm = "campus.megagong.net" Then
            Response.Redirect "https://sobangcampus.megagong.net" & fncRequestVariables("PATH_INFO")
        End if

        'if hostnm = "gongssel.megagong.net" Then
        '    Response.Redirect "https://gongssel.megagong.net" & fncRequestVariables("PATH_INFO")
        'End if

        if hostnm = "megagong.net" Then
            Response.Redirect "https://www.megagong.net" & fncRequestVariables("PATH_INFO")
        End if

		httpsnm = "https://" & hostnm
        if inStr(hostnm, "www.megagong.net") = 0 And inStr(hostnm, "www171.megagong.net") = 0 And inStr(hostnm, "www172.megagong.net") = 0  And inStr(fncRequestVariables("PATH_INFO"), "/s/gong/") > 0 Then
            Response.Redirect "https://www.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobang.megagong.net") = 0 And inStr(hostnm, "sobang171.megagong.net") = 0 And inStr(hostnm, "sobang172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/sobang/") > 0 Then
            Response.Redirect "https://sobang.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "gongssel.megagong.net") = 0 And inStr(hostnm, "gongssel171.megagong.net") = 0 And inStr(hostnm, "gongssel172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/gong/") > 0 Then
            Response.Redirect "https://gongssel.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ansung.megagong.net") = 0 And inStr(hostnm, "ansung171.megagong.net") = 0 And inStr(hostnm, "ansung172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/ansung/") > 0 Then
            Response.Redirect "https://ansung.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "sobangcampus.megagong.net") = 0 And inStr(hostnm, "sobangcampus171.megagong.net") = 0 And inStr(hostnm, "sobangcampus172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/c/sobang/") > 0 Then
            Response.Redirect "https://sobangcampus.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "ngbr.megagong.net") = 0 And inStr(hostnm, "ngbr171.megagong.net") = 0 And inStr(hostnm, "ngbr172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/r/ngbr/") > 0 Then
            Response.Redirect "https://ngbr.megagong.net" & fncRequestVariables("PATH_INFO")
        End if
        if inStr(hostnm, "army.megagong.net") = 0 And inStr(hostnm, "army171.megagong.net") = 0 And inStr(hostnm, "army172.megagong.net") = 0 And inStr(fncRequestVariables("PATH_INFO"), "/s/army/") > 0 Then
            Response.Redirect "https://army.megagong.net" & fncRequestVariables("PATH_INFO")
        End if

    End If

    if https <> "on" Then
        qstr = fncRequestVariables("QUERY_STRING")
        if qstr <> "" Then qstr = "?" & qstr
        Response.Redirect "https://" & hostnm & fncRequestVariables("PATH_INFO") & qstr
    End if

	' �ƢƢ� �̹��� ��� : �ۼ� �Ծ� - img_{������} �ƢƢ�
	Dim img_main, img_common, img_prof, img_vod, img_mypage, img_search, img_player
	if inStr(fncRequestVariables("HTTP_HOST"), "dev") > 0 then
		img_main	= "https://design.megagong.net/image"
	Else
        img_main	= "https://img.megagong.net"
	End If


	lo_now_date  = getParamTxt( "now", "", 1)
	'' �����ڰ� �������� ��� Ÿ�̸� Ȯ�� ����
	If lo_now_date = "" Then
		lo_now_date = now()
	Else
		If ucase(fncrequestCookie("mem_type"))="E" Then
			lo_now_date = lo_now_date
		Else
			lo_now_date = now()
		End IF
	End If
    'lo_now_date = replace(replace(lo_now_date,"����",""),"����","")
	lo_now_date = Year(lo_now_date)&"-"&Right("0"&Month(lo_now_date),2)&"-"&Right("0"&day(lo_now_date),2)& " " & Right("0"&hour(lo_now_date),2)&":"& Right("0"&minute(lo_now_date),2)&":"& Right("0"&second(lo_now_date),2)

    if inStr(hostnm, ".") = 0 Then hostnm = "www.megagong.net"
    ar_h = Split(hostnm, ".")

    if isArray(ar_h) Then
        hval = ar_h(0)
        Select Case hval
            Case "dev", "www" :
                hcode = "gong"
				h_dcd = "4"
                pay_gbn = "on"

                h_lnk = "/"

                h_tit = "������ �հ��� ���ο� ����, �ް�������"
                h_des = "�հ��� ������ �� ���� ������, ������ �ް��н�! 7/9�� ������ �ΰ�, ������ 100% ȯ��, ������� ������"
                h_key = "�ް�������, �ް����͵������, �ް���, �������ް��н�, ������ȯ��, 100%ȯ��, 9�ް�����, 7�ް�����, ����������, �������ΰ�, �����������غ�, ������������, ������������"

                h_img = img_main & "/brand/gong.png?now="&now

                h_headlogo = img_main & "/s/gong/logo_v2.png"
                h_footlogo = ""

                If instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021.asp")>0 Then
                    h_tit = "9�ް����� �հ��� ����, 9�� �ް��н�"  '9�� �ް��н� ������ (title ����)
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021_7rank.asp")>0  Then
                    h_tit = "7�ް����� �հ��� ����, 7��XPSAT �ް��н�"  '7�� �ް��н� ������ (title ����)
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2021/03300046/")>0  Then
                    h_tit = "�հݿ��� ��Ȯ�� 99%, �ް������� ������ Ǯ���� ��������"
                    h_des = "4/17 ������ ����, �հݿ��� Ǯ���� ��������! �ʱ��հ� ���ɼ� ����, Ư����� ���� ����"
                    h_key = "�ް�������, �ް����͵������, 7�ް�����, �������ΰ�, ����������, ������������, ������������, 9�ް�����, �������������, ���������ǰ��, ������9��, ����������, �������ʱ�, �������������, �ް��������հݿ���, �������հݿ���, ������ä��"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20210417/")>0  Then
                    h_tit = "2021 ������ ����, �ް������� �հݿ��� Ǯ����"
                    h_des = "�հݿ��� ��Ȯ�� 99%, ����� ����ä��, ���� Ȯ��, �ǽð� ���� �հݼ� ����, �� ��ġ Ȯ��, ����� �ؼ�"
                    h_key = "�ް�������, �ް����͵������, ����������, ������������, �������������, ������9��, ����������, �������ʱ�, �ް��������հݿ���, �������հݿ���, ������ä��, �ް�������Ǯ����, ����������, �������ؼ�����, �����������, �������հ���, ��������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20210605/")>0  Then
                    h_tit = "2021 ������ ����, �ް������� �հݿ��� Ǯ����"
                    h_des = "�հݿ��� ��Ȯ�� 99%, ����� ����ä��, ���� Ȯ��, �ǽð� ���� �հݼ� ����, �� ��ġ Ȯ��, ����� �ؼ�"
                    h_key = "�ް�������, �ް����͵������, ����������, ������������, �������������, ������9��, ����������, �������ʱ�, �ް��������հݿ���, �������հݿ���, ������ä��, �ް�������Ǯ����, ����������, �������ؼ�����, �����������, �������հ���, ��������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2022.asp")>0  Then
                    h_tit = "9�ް����� | 7�ް����� | ������ �ް��н�"
                    h_des = "9/7�� �� ���� ���! ������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �������ް��н�, �������н�, �����Ѽ���, ������ȯ��, 100%ȯ��, 9�ް�����, 7�ް�����, ����������, �������ΰ�, ������������, ������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/gov_sale_2022.asp")>0  Then
                    h_tit = "������ ������ �հ��� �ް�������"
                    h_des = "9/7�� ������ ���! ������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �������н�, �������ް��н�, �����Ѽ���, ������ȯ��, ������������, ����������, �Ϲ�������, ������, ������, 9��������, 7��������, ����������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/tax_sale_2022.asp")>0  Then
                    h_tit = "����/������ ������ �հ��� �ް�������"
                    h_des = "9/7�� ������, ������ ���! ����/������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �������н�, �������н�, �������ް��н�, �������ް��н�, ������������, ������������, ������, ������, 9�޼�����, 7�޼�����, 9�ް�����, 7�ް�����, ����������, ����������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/welfare_sale_2022.asp")>0  Then
                    h_tit = "��ȸ������ ������ �հ��� �ް�������"
                    h_des = "9�� ��ȸ������ ���! ��ȸ������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, ��ȸ�������ް��н�, ��ȸ�������н�, �����Ѽ���, ������ȯ��, ��ȸ����������, ��ȸ������������, ��ȸ�����������, ��ȸ������, 9�޻�ȸ������, 9�޻�ȸ����������, 9�޻�ȸ������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/security_sale_2022.asp")>0  Then
                    h_tit = "������ ������ �հ��� �ް�������"
                    h_des = "9/7�� ������ ���! ������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �������н�, �������ް��н�, �����Ѽ���, ������ȯ��, ������, ������������, ����������, ������, ���������, ö��������, ������, ��ȣ��, ���Ա�������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/edu_sale_2022.asp")>0  Then
                    h_tit = "���������� ������ �հ��� �ް�������"
                    h_des = "9/7�� ������������ ���! ���������� �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �����������н�, �������н�, ����������, ������, ������, �����а�����, ������������, ������������, 9�ޱ�����, 7�ޱ�����, ����������������, ��������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/safety_sale_2022.asp")>0  Then
                    h_tit = "������ ������ �հ��� �ް�������"
                    h_des = "9/7�� ������ ���! ������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �������н�, �������ް��н�, �����Ѽ���, ������ȯ��, 100%ȯ��, ������������, 9�ޱ�����, 7�ޱ�����, ����������, ����������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/court_sale_2022.asp")>0  Then
                    h_tit = "������ ������ �հ��� �ް�������"
                    h_des = "9�� ������ ���! ������ �ް��н�, �� ���� ��� ����, 100% ȯ��, ������� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �������н�, �������ް��н�, �ް�������, �����Ѽ���, ������ȯ��, 100%ȯ��, ������������, 9�޹�����������, ������, 9�޹�����, ����������, ����������������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/tech_sale_2022.asp")>0  Then
                    h_tit = "������ ������ �հ��� �ް�������"
                    h_des = "9�� ������ ���! ������ �ް��н�, �� ���� ������ ����, ������ ���� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, �������н�, �������ް��н�, �����, ������, �����������, ������������, ���������, 9��������, ����������, ����������������, �������ΰ�"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/engi_sale_2022.asp")>0  Then
                    h_tit = "����� ������ �հ��� �ް�������"
                    h_des = "9�� ����� ���! ����� �ް��н�, �� ���� ������ ����, ����� ���� ���� ���ξ�"
                    h_key = "�ް�������, �ް����͵������, ������н�, ������ް��н�, �����, �����, �����������, �����������, ��������, 9�������, ���������, ���������������, ������ΰ�"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20210911/")>0  Then
                    h_tit = "2021 7�� ������ 2�� ����, �ް������� �հݿ��� Ǯ����"
                    h_des = "�հݿ��� ��Ȯ�� 99%, ����� ����ä��, ���� Ȯ��, �ǽð� ���� �հݼ� ����, �� ��ġ Ȯ��, ����� �ؼ�"
                    h_key = "�ް�������, �ް����͵������, 7�ް�����, ����������, ������������, ������7��2��, ����������, 7�ް���������, ������7��ä��, �ް��������հݿ���, ������7��Ǯ����, ������7�޳��̵�, �ް�������Ǯ����, ������7������, ������7���ؼ�����, ������7�ް����, ������7���հ���, ������7�޽�������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20211016/")>0  Then
                    h_tit = "2021 ������ 7�� ����, �ް������� �հݿ��� Ǯ����"
                    h_des = "�հݿ��� ��Ȯ�� 99%, ����� ����ä��, ���� Ȯ��, �ǽð� ���� �հݼ� ����, �� ��ġ Ȯ��, ����� �ؼ�"
                    h_key = "�ް�������, �ް����͵������, 7�ް�����, ����������, ������������, ������7��, ����������, 7�ް���������, ������7��ä��, �ް��������հݿ���, �ް�������Ǯ����, ������7��Ǯ����, ������7�޳��̵�, ������7������, ������7���ؼ�����, ������7�ް����, ������7���հ���, ������7�޽�������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/03170034/")>0  Then
                    h_tit = "2022 ������ 9��, �ް������� �հݿ��� Ǯ����"
                    h_des = "4/2(��) ������ ����, �հݿ��� Ǯ����! 9�� ä��, ���̵�, �հ���, �հݼ� �ʱ��հ� ���ɼ� ����. ������&�������"
                    h_key = "�ް�������, �ް����͵������, �ް���, 9�ް�����, 7�ް�����, ����������, ������������, ������������, 9���Ϲ�������, ������9��, ������9��, ������9�޽���, 9�ް���������, ��������������ä����, ����������, ����������������, �������հݿ���, ������ä��"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20220402/")>0  Then
                    h_tit = "�ް�������, 2022�� ������ 9�� �ǽð� �հݿ���"
                    h_des = "�հݿ��� Ǯ����, ��Ȯ�� 99%, ����� ����ä��, ���� Ȯ��, ���̵�, �հ���, �ǽð� �հ� ���ɼ�, ����� �ؼ�"
                    h_key = "�ް�������, �ް����͵������, 9�ް�����, ����������, ������������, �������ʱ�, �������ʱ����, 9���Ϲ�������, ������9��, ������9��, ������9�޽���, 9�ް���������, ����������, ����������������, �������հ���, �������հݿ���, ������ä��, ��������������, �����������, ��������ä��"
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/full/20220409/")>0  Then
                    h_tit = "�ް��ҹ�, 2022 �ҹ��� ��ä/��ä �ǽð� �հݿ���"
                    h_des = "�հݿ��� Ǯ����, ��Ȯ�� 99.9%, ����� ����ä��, ���� Ȯ��, ���̵�, �հ���, �ǽð� �հ� ���ɼ�, ����, �ؼ�����"
                    h_key = "�ް��ҹ�, �ް����͵�ҹ�, �ҹ������, �ҹ���������, �ҹ����������, �ҹ�����ä, �ҹ�����ä, �ҹ����ʱ�, �ҹ����ʱ����, �������ҹ�, �ҹ��������ä����, �ҹ�������, �ҹ����հݿ���, �ҹ���ä��, �ҹ�������ʱ�, �ҹ��հݼ�, �ҹ��հ���, �ҹ�����������, �ҹ��������, �ҹ�����ä��, �ҹ�������, �ҹ����"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/06020064/")>0  Then
                    h_tit = "�ް�������, 2022�� ������ 9�� �հݿ��� Ǯ����"
                    h_des = "6/18(��) ������ ����, �հݿ��� ��Ȯ�� 100%, 9�� ä��, ���̵�, �հ���, �հݼ�, �ʱ��հ� ���ɼ�"
                    h_key = "�ް�������, �ް����͵������, �ް���, 9�ް�����, 7�ް�����, ����������, ������������, ������������, 9���Ϲ�������, ������9��, ������9��, ������9�޽���, 9�ް���������, ��������������ä����, ����������, ����������������, �������հݿ���, ������ä��"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20220618/")>0  Then
                    h_tit = "2022 ������ 9��, �ް������� �ǽð� �հݿ���"
                    h_des = "��Ȯ�� 100%, ������ ����, ä��, Ǯ����, ������ ����, ���̵�, �հ���, �հݼ�, ���� �� �ؼ�"
                    h_key = "�ް�������, �ް����͵������, �ް���, 9�ް�����, ����������, �����������غ�, ������������, �������ʱ�, �������ʱ����, �������հݿ���, ������ä��, ��������������, �����������, ���������, ��������ä��, ������9��, ������9�޽���, ����������, ����������������, �������հ���"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/07190107/index.asp")>0  Then
                    h_tit = "�ް������� NEW �н���Ÿ�� �׽�Ʈ"
                    h_des = "MBTI �ݿ�! 8���� ä�� ĳ���ͷ� �������� �н� ������ Ȯ���� ������!"
                    h_img = img_main & "/m/2022/0719_quiz/main.png"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/07190107/share.asp")>0  Then
                    h_des = "[MBIT �н���Ÿ�� �׽�Ʈ] ����� ä�� ĳ���ʹ�?"
                    event_result_2956 = fncrequest("testResult")
                    if event_result_2956 = "SSS" then
                        h_tit = "������ ������"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "SSE" then
                        h_tit = "�����ο� ���� ȣ��"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "SNS" then
                        h_tit = "���� ���� ����ݸ�"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "SNE" then
                        h_tit = "ȣ��� ���� ����"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NSS" then
                        h_tit = "������ ����"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NSE" then
                        h_tit = "��Ÿ�� ������ī"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NNS" then
                        h_tit = "�� ���� ����"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    elseif event_result_2956 = "NNE" then
                        h_tit = "���ߴ� ����"
                        h_img = img_main & "/m/2022/0719_quiz/" & event_result_2956 & ".png"
                    else
                        h_tit = "������ ������"
                        h_img = img_main & "/m/2022/0719_quiz/SSS.png"
                    end if
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/06280086/index.asp")>0  Then
                    h_img = img_main & "/m/2022/0628_planner/planner_OGimg.png"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/event/2022/09230145/index.asp")>0  Then
                    h_tit = "MBTI ���� ��õ �׽�Ʈ"
                    h_des = "�� ���ݰ� ���� ������ ������ Ȯ���� ������!"
                    h_img = img_main & "/m/2022/0923_quiz/result_og.png"
                    event_result_3035 = fncrequest("testResult")
                    If event_result_3035 <> "" Then
                        Select Case event_result_3035
                            Case "a" :
                                h_tit = "õ�� ������"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_a.png"
                            Case "b" :
                                h_tit = "�ѱ��� ��緥��"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_b.png"
                            Case "c" :
                                h_tit = "�ַθ��� ȯ��"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_c.png"
                            Case "d" :
                                h_tit = "������ õ��"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_d.png"
                            Case "e" :
                                h_tit = "������ ��ī��"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_e.png"
                            Case "f" :
                                h_tit = "�� 2�� ��Ÿ���"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_f.png"
                            Case "g" :
                                h_tit = "�ΰ� CCTV"
                                h_des = "[MBTI ���� ��õ �׽�Ʈ] ���� ������ ������?"
                                h_img = img_main & "/m/2022/0923_quiz/result_og_g.png"
                        End Select
                    End If
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20221015/")>0  Then
                    h_tit = "2022 7�� ������ 2�� ����, �ް������� �հݿ��� Ǯ����"
                    h_des = "10/15(��) ������ 7�� 2��, ��Ȯ�� 100%, ����ä��, ����, ���̵�, �հ���, �հݼ�, ĿƮ����"
                    h_key = "�ް�������, �ް����͵������, 7�ް�����, ����������, ������������, ������7��2��, ����������, 7�ް���������, ������7��ä��, �ް��������հݿ���, ������7��Ǯ����, ������7�޳��̵�, �ް�������Ǯ����, ������7������, ������7���ؼ�����, ������7�ް����, ������7���հ���, ������7�޽�������"
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/full/20221029/")>0  Then
                    h_tit = "2022 7�� ����������, �ް������� �հݿ��� Ǯ����"
                    h_des = "10/29(��) �����/������ 7��, ��Ȯ�� 100%, ����ä��, ����, ���̵�, �հ���, �հݼ�, ĿƮ����"
                    h_key = "�ް�������, �ް����͵������, 7�ް�����, ����������, ������������, ������7��, ����������, 7�ް���������, ������7��ä��, �ް��������հݿ���, ������7��Ǯ����, ������7�޳��̵�, �ް�������Ǯ����, ������7������, ������7���ؼ�����, ������7�ް����, ������7���հ���, ������7�޽�������"
                End If

            Case "sobangdev", "sobang", "sobang171", "sobang172" :
                hcode = "sobang"
				h_dcd = "3"
                pay_gbn = "on"

                h_lnk = "/"

                h_tit = "�ҹ� �հ��� ���ο� ����, �ް��ҹ�"

                h_des = "���� �հݻ� 900% ����! �ҹ� �ް��н�, ��ä/��ä ���� ����, �� ���� ��� ����, 100% ȯ��"
                h_key = "�ް��ҹ�, �ް����͵�ҹ�, �ҹ�ް��н�, �����Ѽ���, ������ȯ��, 100%ȯ��, �ҹ�����, �ҹ��ä, �ҹ��ä, �ҹ������, �ҹ����������, �ҹ�������������, �ҹ�������ʱ�, �ҹ�������ΰ�"
                h_img = img_main & "/brand/sobang.png?now="&now

                h_headlogo = img_main & "/s/sobang/logo_v2.png"
                h_footlogo = ""

                If instr(fncRequestVariables("path_info"),"/s/sobang/pass/sale_2021.asp")>0 Then
                    h_tit = "�ҹ������ �հ��� ���ο� ����, �ҹ� �ް��н�" '�ҹ� �ް��н� ������ (title ����)
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/event/2021/03170017/index.asp")>0 Then
                    h_tit = "�հݿ��� ��Ȯ�� 99.9%, �ް��ҹ� Ǯ���� �������� �̺�Ʈ" '�ҹ� Ǯ���� �������� ������ (title ����)
                    h_des = "�ҹ� ���� �귣�� 1��, 2021 �ҹ��� ����! �հݿ��� Ǯ���� ��������, �ʱ��հ� ���ɼ� ����, Ư����� ���� ����"
                    h_key = "�ް��ҹ�, �ް����͵�ҹ�, �ҹ�����, �ҹ�������������, �ҹ�������ʱ�, �ҹ������, �ҹ�������ΰ�, �ҹ����������, �ҹ���ǰ��, �ҹ�������, �ҹ�������, �ҹ�����, �ҹ��ʱ�, �ҹ����, �ҹ�ü��"
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/full/20210403/")>0 Then
                    h_tit = "2021 �ҹ������ ����, �ް��ҹ� �հݿ��� Ǯ����"
                    h_des = "�հݿ��� ��Ȯ�� 99.9% ����� ���� ä��, �ǽð� ���� �հݼ� ����, ä��оߺ� �� ��ġ Ȯ��, ����� �ؼ�"
                    h_key = "�ް��ҹ�, �ް����͵�ҹ�, �ҹ�����, �ҹ�������ʱ�, �ҹ������, �ҹ����������, �ҹ�������, �ҹ��ʱ�, �ҹ����, �ҹ�ü��, �ҹ����������, �ҹ�������ؼ�����, �ҹ���������谡���, �ҹ氡���, �ҹ��������, �ҹ����ä��, �ҹ��հ���"
                ElseIf instr(fncRequestVariables("path_info"),"/s/sobang/event/2022/03240018/")>0 Then
                    h_tit = "2022 �ҹ���, �ް��ҹ� �հݿ��� Ǯ����"
                    h_des = "4/9(��) �ҹ����������, �հݿ��� Ǯ����! �ҹ��� ä��, ���̵�, �հ���, �հݼ� �ʱ��հ� ���ɼ� ����, ��ä&��ä"
                    h_key = "�ް��ҹ�, �ް����͵�ҹ�, �ҹ������, �ҹ���������, ����������, �ҹ����������, �ҹ�����ä, �ҹ�����ä, �������ҹ�, �������ҹ�, �ҹ��������ä����, �ҹ�������, �ҹ����հݿ���, �ҹ���ä��, �ҹ�������ʱ�, �ҹ��հݼ�, �ҹ��հ���"
                End If
            Case "gongsseldev", "gongssel", "gongssel171", "gongssel172" :
                hcode = "gongssel"
				h_dcd = "4"
                pay_gbn = "off"

                h_rms_aca_cd = "1"
                h_pay_aca_cd = "4"
                h_lnk = "/"

                h_tit = "�ް����͵� ���� ������ �����п�, �ް��������п�"
                h_des = "9��/7��/������ �ܰ�&���չ�, ��������, �����̾� �н�����, �뷮���� 3-1�� �ⱸ, �ް����͵�Ÿ�� 3/4��"
                h_key = "�ް��������п�, �ް�������, �ް����͵�������п�, 9�ް�����, 7�ް�����, �뷮���������п�, �뷮���п�, �������п�, �������ڽ���, �뷮��������������"
                h_img = img_main & "/brand/gongcampus.png?now="&now

                h_headlogo = img_main & "/c/gongssel/logo_nk.png"
                h_footlogo = ""
            Case "ansungdev", "ansung", "ansung171", "ansung172" :
                hcode = "ansung"
				h_dcd = "1"
                pay_gbn = "off"

                h_pay_aca_cd = "2"
                h_lnk = "/"

                h_tit = "�հ��� ���� 1��, �ް������� ��� ������"
                h_des = "�����հ��� �ټ�, 24�ð� chain-care �ý���, �н�+ü�� �Ϻ� ���, ���� �ʱ��հ��� 1,089��"
                h_key = "�ް������� ������, �ް�������, �ް�����������п�, �ް���������п�, �ް��ҹ����п�, ����������п�, ��������п�, �ҹ����п�, �ȼ�����п�"
                h_img = img_main & "/brand/ansung.png?now="&now

                h_headlogo = img_main & "/c/ansung/logo_renewal.png?now="&now
                h_footlogo = ""

            Case "sobangcampusdev", "sobangcampus", "sobangcampus171", "sobangcampus172" :
                hcode = "sobangcampus"
				h_dcd = "3"
                pay_gbn = "off"

                h_pay_aca_cd = "3"
                h_lnk = "/"

                h_tit = "�ް����͵� ���� �ҹ������п�, �ް��ҹ��п�"
                h_des = "������ 10�� �� 6�� �ʱ��հ�!* ����Ŭ����, �ҹ� ���� ����, �뷮���� 3-1�� �ⱸ, �ް����͵�Ÿ�� 7��"
                h_key = "�����ҹ��п�, �ް��ҹ�, �ް��ҹ��п�, ����Ŭ����, �������п�, �ҹ��п�, �ҹ�������п�, �뷮���п�, �뷮���ҹ��п�, �ҹ������"
                h_img = img_main & "/brand/sobangcampus.png?now="&now

                h_headlogo = img_main & "/s/sobangcampus/logo.png"
                h_footlogo = ""

            Case "ngbrdev", "ngbr", "ngbr171", "ngbr172" :
                hcode = "ngbr"
				h_dcd = "r"
                pay_gbn = "off"

                h_lnk = "/"

                h_tit = "�հ��� ������ �����ϴ�. �ް������� ���ĸ�Ÿ"
                h_des = "������ ������� ���� �����̾� ������ ������. �հݻ����� ���� �� 1:1 ����, ����� ���� �ϰ�/�ְ� �н� ������ ����, �ް��н� ������ ����"
                h_key = "�ް������� ���ĸ�Ÿ, �����Ҷ����ĸ�Ÿ, �������ĸ�Ÿ, ������������, 9�ް�����, ������������, �������ڽ�, �����̾�������, ��������, �ް�������, �������ް��н�"
                h_img = img_main & "/brand/ngbr.png?now="&now

                h_headlogo = img_main & "/r/ngbr/common/logo.png"
                h_footlogo = ""

            Case "armydev", "army", "army171", "army172" :

                If cdate(lo_now_date) >= cdate("2022-09-01 00:00:00") AND inStr(fncRequestVariables("PATH_INFO"), "/s/army/campus/") > 0 Then
                    hcode = "armycampus"
                    h_lnk = "/s/army/campus/"
                Else
                    hcode = "army"
                    h_lnk = "/"
                End If

				h_dcd = "5"
                pay_gbn = "on"

                h_pay_aca_cd = "3"

                h_tit = "������ �հ��� ���ο� ����, �ް�������"
                h_des = "������ ���� ����/������! ������ �ް��н�, �� ���� ������, 100% ȯ��, G-TELP/�Ѵɰ� ���� ����"
                h_key = "�ް�������, �ް����͵𱺹���, �������ް��н�, ������, ����������, �����������, �������ΰ�, ����α�����, ������������, ����������, ����������, �ر�������, �غ��뱺����, ������������, ������������"
                h_img = img_main & "/brand/army.png?now="&now

                If instr(fncRequestVariables("path_info"),"/s/army/pass/sale_2021.asp")>0 Then
                    h_tit = "������ �հ��� ���ο� ����, ������ �ް��н�"
                ElseIf instr(fncRequestVariables("path_info"),"/s/army/event/2022/06300009/")>0 Then
                    h_tit = "2022 �ް������� �հݿ��� Ǯ����"
                    h_des = "7/16(��) ����������, ��Ȯ�� 100%, 9/7�� ������ ä��, ���̵�, �հ���, �հݼ�, �ʱ��հ� ���ɼ�"
                    h_key = "�ް�������, �ް����͵𱺹���, ������, 9�ޱ�����, 7�ޱ�����, ����������, �ر�������, ����������, ����α�����, �غ��뱺����, ����������, ������9�޽���, 9�ޱ���������, ������7�޽���, 7�ޱ���������, ��������ä, �������հݿ���, �������ʱ�, ������ä��, �������հݼ�, �������հ���"
                ElseIf instr(fncRequestVariables("path_info"), "/s/army/full/20220716/") > 0 Then
                    h_tit = "7/16(��) ������ ����, �ް������� Ǯ����"
                    h_des = "2022�� ����������, �ǽð� �հݿ���, ����ä��, ����Ȯ��, ��Ȯ��100%, ä������, ���̵�, �հ� ĿƮ����"
                    h_key = "�ް�������, �ް����͵𱺹���, ������, 9�ޱ�����, 7�ޱ�����, ����������, �ر�������, ����������, ����α�����, �غ��뱺����, ����������, ������9�޽���, 9�ޱ���������, ������7�޽���, 7�ޱ���������, ��������ä, �������հݿ���, �������ʱ�, ������ä��, �������հݼ�, �������հ���, �ް�������Ǯ����, �ް�������ä��, �ް��������հݿ���, ������Ǯ����, �������հݿ���, ��������ää��, ��������ä����, ���������賭�̵�, ����������ĿƮ����, �������ʱ�����, ����������, �������ʱ����, ���������, �����������, ��������ä��, ������ĿƮ����"
                End If

                h_headlogo = img_main & "/s/army/logo.png"
                h_footlogo = ""

            Case "labdev", "lab" :
                '�հ����� ������ ���굵���� ����
                hcode = "lab"
                h_gubn = "gong"
                h_lnk = "/"
                h_dcd = fncRequestCookie("h_dcd")

                If instr(fncRequestVariables("path_info"),"/gong/")>0 Then
                    h_dcd = "4"
                ElseIf instr(fncRequestVariables("path_info"),"/sobang/")>0 Then
                    h_dcd = "3"
                ElseIf instr(fncRequestVariables("path_info"),"/army/")>0 Then
                    h_dcd = "5"
                End If

                if h_dcd = "3" then
                    h_gubn = "sobang"

                elseif h_dcd = "5" then
                    h_gubn = "army"

                else
                    h_dcd = "4"
                    h_gubn = "gong"
                end if

                Call SetCookie("h_dcd", h_dcd)

                pay_gbn = "off"

                h_tit = "������ �հ��� ���ο� ����, �ް������� �հ�����������"
                h_des = ""
                h_key = ""

                h_img = img_main & "/brand/gong.png?now="&now

                h_headlogo = img_main & "/s/gong/logo_v2.png"
                h_footlogo = ""

            Case Else :
                hcode = "gong"
				h_dcd = "4"
                pay_gbn = "on"

                h_lnk = "/"

                h_tit = "������ �հ��� ���ο� ����, �ް�������"
                If instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021.asp")>0 Then
                    h_tit = "9�ް����� �հ��� ����, 9�� �ް��н�"  '9�� �ް��н� ������ (title ����)
                ElseIf instr(fncRequestVariables("path_info"),"/s/gong/pass/sale_2021_7rank.asp")>0  Then
                    h_tit = "7�ް����� �հ��� ����, 7��XPSAT �ް��н�"  '7�� �ް��н� ������ (title ����)
                End If

                h_des = "�հ��� ������ �� ���� ������, ������ �ް��н�! 7/9�� ���� ������, ������ 100% ȯ��, ������� ������"
                h_key = "�ް�������, �ް����͵������, �ް���, �������ް��н�, ������ȯ��, 100%ȯ��, 9�ް�����, 7�ް�����, ����������, �������ΰ�, �����������غ�, ������������, ������������"
                h_img = img_main & "/brand/gong.png?now="&now

                h_headlogo = img_main & "/s/gong/logo_v2.png"
                h_footlogo = ""
        End Select
    End if

	' �ƢƢ� �ҽ� ��� : �ۼ� �Ծ� - img_{������} �ƢƢ�
	img_common		= img_main & "/common"			'���� �̹���
	img_prof		= img_main & "/prof"			'������
	img_vod			= img_main & "/vod"				'��������
	img_mypage		= img_main & "/mypage"			'����������
	img_search		= img_main & "/search"			'�˻�
	img_player		= img_main & "/player"			'�������÷��̾�
	img_profphoto	= img_main & "/profphoto/" & hcode



	' �ƢƢ� �ҽ� ��� : �ۼ� �԰� - url_{������} �ƢƢ�
	Dim url_main
    if inStr(hostnm, "dev") > 0 Then
	    url_main	        = "https://dev.megagong.net"
        sobang_main	        = "https://sobangdev.megagong.net"
        campus_main	        = "https://campusdev.megagong.net"
        ansung_main	        = "https://ansungdev.megagong.net"
        sobangcampus_main	= "https://sobangcampusdev.megagong.net"
        gongssel_main       = "https://gongsseldev.megagong.net"
        ngbr_main           = "https://ngbrdev.megagong.net"
        army_main           = "https://armydev.megagong.net"
        lab_main           = "https://labdev.megagong.net"
    Else
        if inStr(hostnm, "171.") > 0 Then
	        url_main	        = "https://www171.megagong.net"
            sobang_main	        = "https://sobang171.megagong.net"
            campus_main	        = "https://campus171.megagong.net"
            ansung_main	        = "https://ansung171.megagong.net"
            sobangcampus_main	= "https://sobangcampus171.megagong.net"
            gongssel_main       = "https://gongssel171.megagong.net"
            ngbr_main           = "https://ngbr171.megagong.net"
            army_main           = "https://army171.megagong.net"
        Elseif inStr(hostnm, "172.") > 0 Then
	        url_main	        = "https://www172.megagong.net"
            sobang_main	        = "https://sobang172.megagong.net"
            campus_main	        = "https://campus172.megagong.net"
            ansung_main	        = "https://ansung172.megagong.net"
            sobangcampus_main	= "https://sobangcampus172.megagong.net"
            gongssel_main       = "https://gongssel172.megagong.net"
            ngbr_main           = "https://ngbr172.megagong.net"
            army_main           = "https://army172.megagong.net"
        Else
	        url_main	        = "https://www.megagong.net"
            sobang_main	        = "https://sobang.megagong.net"
            campus_main	        = "https://campus.megagong.net"
            ansung_main	        = "https://ansung.megagong.net"
            sobangcampus_main	= "https://sobangcampus.megagong.net"
            gongssel_main       = "https://gongssel.megagong.net"
            ngbr_main           = "https://ngbr.megagong.net"
            army_main           = "https://army.megagong.net"
            lab_main           = "https://lab.megagong.net"
        End if
    End if


    Dim url_common, url_vod, url_mypage
	url_common		= url_main & "/common"			'��������
	url_vod   		= url_main & "/vod"				'��������
	url_mypage	 	= url_main & "/mypage"			'��������



	' �ƢƢ� ���� ��� : �ۼ� �Ծ� - file_{������} �ƢƢ�
	Dim file_main

    if fncRequestVariables ("HTTPS") ="off" Then
	    if inStr(fncRequestVariables("HTTP_HOST"), "dev.megagong.net") > 0 then
            file_main		= "http://filedev.megagong.net"
        Else
            file_main		= "http://file.megagong.net"
        End If
    else
        if inStr(fncRequestVariables("HTTP_HOST"), "dev.megagong.net") > 0 then
            file_main		= "https://filedev.megagong.net"
        Else
            file_main		= "https://file.megagong.net"
        End If
    End If



    CUR_PATH_INFO	= LCASE(fncRequestVariables("PATH_INFO"))

	COOK_ID			= fncRequestCookie("userid")
	COOK_NAME		= fncRequestCookie("username")
    mem_type		= fncRequestCookie("mem_type")
    police_yn		= fncRequestCookie("police_yn")
    set_view		= UCase(fncRequestCookie("set_view"))
    myDom		= fncRequestCookie("mydom")
    if myDom = "" then myDom = h_dcd

    'if fncRequestVariables("REMOTE_HOST") = "1.215.102.67" Then
        if set_view = "" Then set_view = "R"
    'End if

	'=========================
	' 2008-10-07 ������
	' ���� �ּҸ� �޾Ƴ��.
	'=========================
	Dim Host, NowUrl, UrlQueryString, UrlForm, FullUrl, RootUrl

    Host = Request.ServerVariables("HTTP_HOST")
	NowUrl =  LCase(CUR_PATH_INFO)
	UrlQueryString = request.QueryString
	UrlForm = request.Form


	FullUrl = "http://"& Host & NowUrl &"?"& UrlQueryString   '== http �������� ������ ��ü �ּ�

	If UrlQueryString <> "" Then
		RootUrl = fncRequestVariables("URL") &"?"& UrlQueryString  '== http �������� ������  root path
	Else
		If UrlForm <> "" Then
			RootUrl = fncRequestVariables("URL") &"?"& UrlForm  '== http �������� ������  root path
		Else
			RootUrl = fncRequestVariables("URL") '== http �������� ������  root path
		End IF
	End IF

	Dim INNER_IP, COMM_USER_IP, MEGA_IP
	INNER_IP = "172.15.13"

	COMM_USER_IP=Request.ServerVariables("REMOTE_ADDR")
	MEGA_IP = split(COMM_USER_IP,".")(0)&"."
	MEGA_IP = MEGA_IP & split(COMM_USER_IP,".")(1)&"."
	MEGA_IP = MEGA_IP & split(COMM_USER_IP,".")(2)


	'=======================================================================================================
	'������ �Ķ���� ����
	'=======================================================================================================
	Dim returnUrl
	returnUrl = ""
	returnUrl = Request.ServerVariables("HTTP_REFERER")
	'=======================================================================================================

	'=======================================================================================================
	'������ �Ķ���� ����
	'=======================================================================================================
	Dim pagePara, Formitem
	pagePara = ""

	For Each Formitem In Request.Form
		If pagePara = "" Then
			pagePara = Formitem&"="&Server.Urlencode(Request.Form(Formitem))
		Else
			pagePara = pagePara&"&"&Formitem&"="&Server.Urlencode(Request.Form(Formitem))
		End if
	Next

	For Each Formitem In Request.Querystring
		If pagePara = "" Then
			pagePara = Formitem&"="&Server.Urlencode(Request.Querystring(Formitem))
		Else
			pagePara = pagePara&"&"&Formitem&"="&Server.Urlencode(Request.Querystring(Formitem))
		End if
	Next
	'=======================================================================================================

	' �α��� �����϶� ����Ʈ �̿뵿�� üũ
	'g_dom_cd = trim(fncRequestCookie("dom"))
	'g_site_agree = ucase(fncRequestCookie("site_agree"))
    '
	'if inStr(fncRequestVariables("PATH_INFO"), "/member/site_agree") = 0 then
	'	if cook_id <> "" then
	'		if g_site_agree = "" then ' ������ �α��� ���¸� �α׾ƿ���Ŵ
	'			response.redirect "/member/logout_sql.asp"
	'			response.end
	'		end if
    '
	'		if (g_dom_cd <> "1" and g_dom_cd <> "2" and g_dom_cd <> "3") and g_site_agree <> "Y" then
	'			response.redirect "/member/site_agree.asp"
	'		end if
	'	end if
	'end if

	helpdesk_work_yn = "Y"
    helpdesk_time_txt1 = ""
    helpdesk_time_txt2 = ""

    if CDate(lo_now_date) >= CDate("2020-07-30 10:00:00") And CDate(lo_now_date) <= CDate("2020-07-30 22:00:00") Then
		helpdesk_work_yn = "N"	' �����
        helpdesk_time_txt1 = "���� ���Ƿ��� ���� ��ȭ������ ��ƽ��ϴ�."
        helpdesk_time_txt2 = "[1:1 ���ǻ��] �Խ��ǿ� ������ ���� �ֽø� <br />������ �亯 �帮�ڽ��ϴ�."
	end if

    if CDate(lo_now_date) >= CDate("2020-07-31 10:00:00") And CDate(lo_now_date) <= CDate("2020-07-31 22:00:00") Then
		helpdesk_work_yn = "N"	' �����
        helpdesk_time_txt1 = "���� ���Ƿ��� ���� ��ȭ������ ��ƽ��ϴ�."
        helpdesk_time_txt2 = "[1:1 ���ǻ��] �Խ��ǿ� ������ ���� �ֽø� <br />������ �亯 �帮�ڽ��ϴ�."
	end if

    ' �Ҽ� �α��� Ű��
    NAVER_API_Client_ID = "EN_UTjmIT949rM_pmht9"
    NAVER_API_Client_Secret = "ByRRpClVd8"

    KAKAO_API_JS_KEY = "5aa0676abcad06b6ae4a7a56e66f29bf"
    KAKAO_API_API_KEY = "9111024c09d3f3b6a2df7feaa142f507"
    KAKAO_API_Client_Secret = "ScmsFhEbQXbK6GFCYakpqHNgVffqlx98"

    APPLE_API_Client_ID = "net.megagong.smartlearning.ios.servicesid"

    naver_login_callback = url_main & "/api/member/naver_loginauth.asp"
    kakao_login_callback = server.urlencode(url_main&"/api/member/kakao_loginauth.asp")
    apple_login_callback = url_main & "/api/member/apple_loginauth.asp"


    naver_login_url = "https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id="&NAVER_API_Client_ID&"&redirect_uri="&naver_login_callback&"&state="
    kakao_login_url = "https://kauth.kakao.com/oauth/authorize?client_id="&KAKAO_API_API_KEY&"&redirect_uri="&kakao_login_callback&"&response_type=code"
    apple_login_url = "https://appleid.apple.com/auth/authorize?client_id="&APPLE_API_Client_ID&"&redirect_uri="&apple_login_callback&"&response_type=code%20id_token&scope=name%20email&response_mode=form_post"
    'apple_login_url = "https://appleid.apple.com/auth/authorize?client_id="&APPLE_API_Client_ID&"&redirect_uri="&apple_login_callback&"&response_type=code%20id_token"

	'����Ʈ���׾� ���� üũ (Y:����Ʈ����)
    SmartLearingFlg = "N"
    SmartLearingFlg = fncGetSmartLearningFlg()

    MobileType = fncMobileType()

    ' ���ܾ� ���� üũ
    SconnFlg = "N"
    SconnFlg = fncGetSconnFlg()

    if cook_id = "jyheo" or cook_id = "heroyooi" or cook_id = "cereall" Then
        SconnFlg = "Y"
        'SmartLearingFlg = "Y"
    End if

    if SmartLearingFlg = "Y" Then
        'SmartLearingVer = fncGetSmartLearningVer()
        'SmartLearingAndroidMinVer = "1.0.5"
    End if
%>
