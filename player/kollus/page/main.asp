<!DOCTYPE html>
<html lang="ko">
<!-- ���� ��Ŭ��� ������ ���� -->
<!-- #include virtual = "/common/inc/VarDef.asp" -->
<!-- #include virtual = "/common/inc/Fundef.asp" -->
<!-- #include virtual = "/common/inc/RSexec.asp" -->
<!-- ���� ��Ŭ��� ������ ���� -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="author" content="�ް����͵�(��)" />
	<meta name="keywords" content="megastudy,�ް����͵�,�����ΰ�,���͵��÷���,����,�Խ�,��ġǥ,�����,���" />
	<meta name="description" content="megastudy,�ް����͵�,�����ΰ�,���͵��÷���,����,�Խ�,��ġǥ,�����,���" />
	<title><%=window_title%></title>
	<link rel="shortcut icon" href="/common/megastudy.ICO">
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="/common/css/style.css?dowdt=<%=now()%>" />
	<link rel="stylesheet" type="text/css" href="/lecmain/common/css/lecmain.css?dowdt=<%=now()%>" />

    <script type="text/javascript">
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // �Լ����� : ����� �÷��̾� - �Ϲ�/�߽�
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        function fncPlayerAdmin(kbn, CHR_CD, LEC_CD, TEC_NM, SERVER, PlayerKbn) {

            try {
                if (MegastudyPlayer == "[object]") MegastudyPlayer.close();
            } catch (e) { }

            var vPlayerUrl;
            var vPlayerParam, vPlayerNm, vPlayerOption;

            vPlayerParam = "?CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&DNG_KBN=" + kbn;
            vPlayerParam = vPlayerParam + "&PlayerKbn=" + PlayerKbn + "&PlayerApp=Y&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight + "&userBrowser=" + userBrowser + "&BrowserVersion=" + BrowserVersion;
            vPlayerNm = "DNGPlayer";

            if (PlayerKbn == "M") {
                vPlayerUrl = "http://" + SERVER + "/Player/anp/admin/anpdual.asp";
                vPlayerOption = "width=1550,height=730,top=0,left=0,resizable=0,status=no";
            } else if (PlayerKbn == "S") {
                vPlayerUrl = "http://" + SERVER + "/Player/MegaPlayer/PlayerAdmin/PlayerSrcIdx.asp";
                vPlayerOption = "width=1250,height=730,top=0,left=0,resizable=0,status=no";
            } else {
                vPlayerUrl = "http://" + SERVER + "/Player/anp/admin/player.asp";
                vPlayerOption = "width=" + eWidth + ",height=" + eHeight + ",top=0,left=0,resizable=1,status=no,scrollbars=no";
            }

            vPlayerUrl = vPlayerUrl + vPlayerParam;

            //MegastudyPlayer = window.open(vPlayerUrl + vPlayerParam, vPlayerNm, vPlayerOption);
            if (navigator.userAgent.lastIndexOf('Android') > 0 || navigator.userAgent.lastIndexOf('iPhone') > 0 || navigator.userAgent.lastIndexOf('iPad') > 0) {
                if (confirm("3G/4G ȯ�濡���� ������ ��Ŷ����� �߻��� �� �ֽ��ϴ�.")) {


                    if (navigator.userAgent.lastIndexOf('Chrome') > 0) {
                        document.location.href = vPlayerUrl;
                    } else {
                        var iMobilePlayifrm = document.getElementById("iMobilePlayifrm");
                        if (iMobilePlayifrm != null) {
                            iMobilePlayifrm.parentNode.removeChild(iMobilePlayifrm);
                        }
                        var AquaiFrm = document.createElement("iframe");
                        AquaiFrm.setAttribute("id", "iMobilePlayifrm");
                        AquaiFrm.setAttribute("src", vPlayerUrl);
                        AquaiFrm.setAttribute("width", "0px");
                        AquaiFrm.setAttribute("height", "0px");
                        AquaiFrm.setAttribute("scrolling", "no");
                        AquaiFrm.style.border = "0px";
                        document.body.appendChild(AquaiFrm);
                    } MegastudyPlayer = window.open(vPlayerUrl, vPlayerNm, vPlayerOption);
                } else {
                    return;
                }
            } else {
                try {
                    if (MegastudyPlayer == "[object]") MegastudyPlayer.close();
                } catch (e) { }


                MegastudyPlayer = window.open(vPlayerUrl, vPlayerNm, vPlayerOption);
            }
            return;
        }
    </script>
</head>
<body>
<%
	SubMainType = "S"
	SubMainName = "����"
	SubGrdTitle = "��3��N"
	LoggerTitle = SubMainName & "����_" & SubGrdTitle
%>
<div class="container">

	<div class="header">
		<!-- ��� �޴� ���� -->
		<!--#include virtual="/common/menu/megaHeader.asp"-->
		<!-- ��� �޴� ���� -->
	</div>

	<div class="contents-wrap go3">

		<!-- lnb -->
		<!--#include virtual="/lecmain/mains/left_menu.asp"-->

		<div id="contents">

            <h2>�� AquaPlayer Ȯ�ο�</h2>
            <h3>- �ڸ�����</h3>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onclick="fncPlayerAdmin(20, 'griAtyo=', 'h7mBvCuW', '&amp;EP1_FN=gw==&amp;EP2_PT=0/zQ6njJ/Vs=&amp;EP5_WM=3Onf5G7T4UduEPk9Gd7FZi+n&amp;EP6_PC=3P/Zq3DC80JkSuI8FMqTM2OsdHkZU8IMOwkOtTwwbCG2KTiTJrg3YijaUHUzOWCZ7awx','<%=fncRequestVariables("HTTP_HOST") %>','S');" >�ڸ��������󺸱�HD(21:9)</A></span>
            </p>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onclick="fncPlayerAdmin(20, 'g72NvCo=', 'gruPsi2R', '&EP1_FN=gw==&EP2_PT=0/zQ6njJ/Vs=&EP5_WM=3Onf5G7T4UduEPk9Gd7FZi+n&EP6_PC=3P/Zq3DC80JkSuI8FMqTM2OsdHkZU8IMOwkOtTwwbCG2KTiTJrg3YijaUHUzOWCZ7awx','<%=fncRequestVariables("HTTP_HOST") %>','S');" >�ڸ��������󺸱�HD(16:9)</A></span>
            </p>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onclick="fncPlayerAdmin(20, 'gLyNsy8=', 'gLqKsSmU', '&EP1_FN=gw==&EP2_PT=0/zQ6njJ/Vs=&EP5_WM=3Onf5G7T4UduEPk9Gd7FZi+n&EP6_PC=3P/Zq3DC80JkSuI8FMqTM2OsdHkZU8IMOwkOtTwwbCG2KTiTJrg3YijaUHUzOWCZ7awx','<%=fncRequestVariables("HTTP_HOST") %>','S');" >�ڸ��������󺸱�(16:9)</A></span>
            </p>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onclick="fncPlayerAdmin(20, 'gLyJtys=', 'gLmLsyif', '&EP1_FN=gw==&EP2_PT=0/zQ6njJ/Vs=&EP5_WM=3Onf5G7T4UduEPk9Gd7FZi+n&EP6_PC=3P/Zq3DC80JkSuI8FMqTM2OsdHkZU8IMOwkOtTwwbCG2KTiTJrg3YijaUHUzOWCZ7awx','<%=fncRequestVariables("HTTP_HOST") %>','S');" >�ڸ��������󺸱�(4:3)</A></span>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            
            <h3>- �����ڿ���Ȯ��</h3>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onclick="fncPlayerAdmin(20, 'griAtyo=', 'h7mBvCuW', '������&EP1_FN=gw==&EP2_PT=0/zQ6njJ/Vs=&EP5_WM=3Onf5G7T4UduEPk9Gd7FZi+n&EP6_PC=3P/Zq3DC80JkSuI8FMqTM2OsdHkZU8IRNhtYvCsMNyKnZReTLrImPhbaQw==','<%=fncRequestVariables("HTTP_HOST") %>','M');" >�����ڿ��󺸱�</A></span>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>

            <h3>- �������Ȯ��</h3>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onClick="player_free(88,'40878');" >������庸��</a></span>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>

            <h3>- ����������(�������)</h3>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onClick="player_free(89,'40708&LEC_CD=830993');" >���������⺸��</a></span>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>

            <h3>- HTML5(����ġ)</h3>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onClick="player_free(72,'40711');" >OT ����</a></span>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>

            <h2>�� KOLLUS Player �׽�Ʈ</h2>
            <p>
                <span style="margin-left:18px;"><A style="color:blue; text-decoration:underline; cursor:pointer;" onClick="player_free(23,'&NO=29391&GoPlayer=kollus');" >�˾�</a></span>
            </p>

            <%
                DNG_KBN = 23
                DNG_NO = 29391
                'AutoPlay = "Y"

                IMG_URL = img_main & "/teacher/mega_tcc/vod_760.jpg"
            %>
            <div>
                <!--#include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>


            <%
                DNG_KBN = 23
                DNG_NO = 29392
                'AutoPlay = "Y"

                IMG_URL = img_main & "/teacher/mega_tcc/vod_760.jpg"
            %>
            <div>
                <!--#include virtual="/Player/kollus/play/play_inc.asp"-->
            </div>

		</div>

		<div id="mAside" class="sky_banner">
			<!--#include virtual="/scroll/sky_mains.asp"-->
		</div>

		<div id="mEtc" class="left_banner" style="position:absolute;left:-92px;top:219px;z-index:5100">
			<!--#include virtual="/scroll/sky_main_left_ban.asp"-->
		</div>

	</div>

	<div class="footer"><!--#include virtual="/common/menu/megaFooter.asp"--></div>
</div>


<!--include virtual="/main/mainFooterFlash.asp"-->
</body>
</html>

