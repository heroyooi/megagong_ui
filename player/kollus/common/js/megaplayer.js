//�÷��̾�////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var MegastudyPlayer
//����� �ػ�, ������ ����Ȯ��
var UseWidth = window.screen.availWidth;
var UseHeight = window.screen.availHeight;
//var appPosition = navigator.appVersion.lastIndexOf('MSIE');
//var appVersion = navigator.appVersion.substr(appPosition + 5, 1);

var userBrowser = "";
var BrowserVersion = "";

if (navigator.userAgent.lastIndexOf('MSIE') > 0 || navigator.userAgent.lastIndexOf('Trident') > 0) {
    var userBrowser = "IE";

    try {
        if (!document.all) {
            BrowserVersion = "11";
        } else {
            var ieTempVer = navigator.userAgent.match(/Trident\/(\d.\d)/i)[1];

            if (ieTempVer == '7.0') {
                BrowserVersion = "11";
            } else if (ieTempVer == '6.0') {
                BrowserVersion = "10";
            } else if (ieTempVer == '5.0') {
                BrowserVersion = "9";
            } else if (ieTempVer == '4.0') {
                BrowserVersion = "8";
            }
        }
    } catch (e) {
        var appPosition = navigator.userAgent.lastIndexOf('MSIE');
        BrowserVersion = navigator.userAgent.substr(appPosition + 5, 1);
    }
} else if (navigator.userAgent.lastIndexOf('Chrome') > 0) {
    var userBrowser = "Chrome";
    var appPosition = navigator.userAgent.lastIndexOf('Chrome');
    if (appPosition > 0) {
        BrowserVersion = navigator.userAgent.substr(appPosition + 7, 4);
    }
} else if (navigator.userAgent.lastIndexOf('Safari') > 0) {
    var userBrowser = "Safari";
    var appPosition = navigator.userAgent.lastIndexOf('Version');
    if (appPosition > 0) {
        BrowserVersion = navigator.userAgent.substr(appPosition + 8, 5);
    }
} else if (navigator.userAgent.lastIndexOf('Firefox') > 0) {
    var userBrowser = "Firefox";
    var appPosition = navigator.userAgent.lastIndexOf('Firefox');
    if (appPosition > 0) {
        BrowserVersion = navigator.userAgent.substr(appPosition + 8, 5);
    }
}


//�÷��̾� ȣ���Լ��� �Ķ����
var vPlayerLnk, vPlayerParam, vPlayerOption;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �Լ����� : �÷��̾� ���� �����Լ� (PC/����� ����)
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function player_div_admin(lnk, par, opt, kbn, app, svr) {

    var pPlayerUrl, pSetParam, pOpt, pPlayerNm;
    pSetParam = par + "&PlayerKbn=" + kbn + "&PlayerApp=" + app + "&UseWidth=" + UseWidth + "&UseHeight=" + UseHeight + "&PlayerLoc=" + lnk + "&userBrowser=" + userBrowser + "&BrowserVersion=" + BrowserVersion;

    if (kbn == "F" || kbn == "U") {
        if (pSetParam.indexOf("PlayerTabCtrl=") > -1) {
            if (pSetParam.indexOf("PlayerTabCtrl=OFF") == -1) {
                pSetParam = pSetParam.replace("PlayerTabCtrl=", "PlayerTabCtrl=OFF");
            }
        } else {
            pSetParam += "&PlayerTabCtrl=OFF";
        }
    }

    if (lnk == "H") {
        if (UseWidth >= 1333) {
            var eWidth = "1320";
            var eHeight = "540";
        }
    } else if (lnk == "L") {
        var eWidth = "740";
        var eHeight = "540";
    }

    if (lnk == "H") {
        pPlayerUrl = "/Player/MegaPlayer/PlayerHigh/Player.asp";
        pOpt = "width=1024,height=580,top=0,left=0,resizable=0,status=no,scrollbars=no";
    } else if (lnk == "L") {
        pPlayerUrl = "/Player/MegaPlayer/PlayerLow/Player.asp";
        pOpt = "width=600,height=500,top=0,left=0,resizable=0,status=no,scrollbars=no";
    } else {
        pPlayerUrl = lnk;
        pOpt = opt;
    }

    if (pSetParam.indexOf("PlayerTabCtrl=OFF") > -1) {
        eWidth = eWidth - 276;
    }

    if (navigator.userAgent.lastIndexOf('Android') > 0 || navigator.userAgent.lastIndexOf('iPhone') > 0 || navigator.userAgent.lastIndexOf('iPad') > 0) {


        if (confirm("3G/4G ȯ�濡���� ������ ��Ŷ����� �߻��� �� �ֽ��ϴ�.")) {

            // Check SmartLearing in-app -------------------------------------------------------
            var is_smartlearing_in_app = false;
            if (navigator.userAgent.lastIndexOf('net.megastudy.smartplay.main') > 0) {
                is_smartlearing_in_app = true;
            } else if (navigator.userAgent.lastIndexOf('com.megastudy.SmartPlay') > 0) {
                is_smartlearing_in_app = true;
            } else {
                //is_smartlearing_in_app = /(iPhone|iPod|iPad).*AppleWebKit(?!.*Safari)/i.test(navigator.userAgent);
            }
            //-----------------------------------------------------------------------------------

            if (is_smartlearing_in_app == true) {
                // SmartLearning in-app
                pPlayerUrl = "/mobile/app_v3/player/player_kollus.asp";

                // <<< ################################################
                try {
                    $.getJSON(pPlayerUrl + pSetParam, function (data) {
                        if (data.result == "0000") {
                            if ("iOS" == data.aData[0].os) {
                                document.location = "toApp:setPlayUrl:" + data.aData[0].i_path;
                            } else {
                                window.MegaStudyApp.setPlayUrl(data.aData[0].i_path);
                            }
                        }
                    });
                } catch (e) { }
                // <<< ################################################
                return;
            } else {
                // Mobile Browser
                document.location.href = pPlayerUrl + pSetParam;
            }
        } else {
            return;
        }
    } else {
        if (svr == "") {
            svr = "www.megastudy.net";
        }

        if (kbn == "S") {
            if (pSetParam.indexOf("&GoPlayer=kollus") > 0) {
                pPlayerUrl = "http://" + svr + "/Player/kollus/admin/edit_player.asp";
                pOpt = "width=" + eWidth + ",height=" + eHeight + ",top=0,left=0,resizable=1,status=no,scrollbars=no";
            } else {
                pPlayerUrl = "http://" + svr + "/Player/MegaPlayer/PlayerAdmin/PlayerSrcIdx.asp";
                pOpt = "width=1250,height=730,top=0,left=0,resizable=0,status=no";
            }
        } else {
            pPlayerUrl = "http://" + svr + "/Player/kollus/admin/player.asp";
            pOpt = "width=" + eWidth + ",height=" + eHeight + ",top=0,left=0,resizable=1,status=no,scrollbars=no";
        }

        pPlayerNm = "DNGPlayer";
        MegastudyPlayer = window.open(pPlayerUrl + pSetParam, pPlayerNm, pOpt);
        MegastudyPlayer.focus();

    }
    return;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �Լ����� : ����� �÷��̾� - �Ϲ�/�߽�
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncPlayerAdmin(kbn, CHR_CD, LEC_CD, TEC_NM, SERVER, PlayerKbn) {

    vPlayerParam = "?CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&dng_kbn=" + kbn;

    if (kbn == "10" || kbn == "50") { vPlayerLnk = "L"; } //�Ϲ� ������ ����
    if (kbn == "20" || kbn == "60") { vPlayerLnk = "H"; } //�߽��÷��� ������ ����

    player_div_admin(vPlayerLnk, vPlayerParam, 'D', PlayerKbn, 'Y', SERVER);
    return;

}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �Լ����� : FREE ����� �÷��̾�
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncPlayerAdminFree(kbn, para, SERVER) {
    //��ȭ�� �Ǳ��п�(P:OT,������,F:�̺�Ʈ)
    if (kbn == "20" || kbn == "72" || kbn == "90" || kbn == "80" || kbn == "91" || kbn == "82") {	//������� �������� �ڵ� �߰� 20150813 CHOIJH
        PlayerKbn = "P";
    } else if (kbn == "29") {
        PlayerKbn = "I";
    } else if (kbn == "79" || kbn == "89" || kbn == "99") {
        PlayerKbn = "D";
    } else {
        PlayerKbn = "F";
    }

    vPlayerParam = "?dng_kbn=" + kbn + "&CHR_CD=" + para;

    if (kbn == "10" || kbn == "20" || kbn == "72" || kbn == "80" || kbn == "90" || kbn == "91" || kbn == "79" || kbn == "89") { fncPreDngCnt(vPlayerParam); } //��ȸ�� ����//���������� �߰�

    //�Ϲ� ������ ������(free) - 10:�Ϲ� 15:������ ������ �λ� 31~39 : �Ϲ� ������ ����
    if ((kbn >= "10" && kbn <= "19") || (kbn >= "31" && kbn <= "39") || kbn == "50" || kbn == "51" || kbn == "62" || kbn == "79" || kbn == "80") { vPlayerLnk = "L"; }

    //�߽� �÷��� ������ ������ (free) - 20:�߽� 23:������  72:OT	82:�н�����(OT2) 41~49 : �߽� ������ ����
    if ((kbn >= "20" && kbn <= "29") || (kbn >= "41" && kbn <= "49") || kbn == "60" || kbn == "72" || kbn == "82" || kbn == "90" || kbn == "91" || kbn == "88" || kbn == "89" || kbn == "99") { vPlayerLnk = "H"; }

    player_div_admin(vPlayerLnk, vPlayerParam, 'D', PlayerKbn, 'N', SERVER);
    return;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// �Լ��̸� : player_exam_2007
// �Լ����� : �÷��̾� - FREE
// �� �� �� : ������, �Ӽ�
// �� ȯ �� :
function player_exam_2007_admin(seq, num, stm, idx, SERVER) {
    var dng_cul_num = 0;
    var dng_free_flg = "N";

    if (typeof (num) == "undefined") {
        dng_cul_num = 1;
    } else {
        dng_cul_num = num;
    }

    if (typeof (free_flg) == "undefined") {
        dng_free_flg = "N";
    } else {
        dng_free_flg = free_flg;
    }

    vPlayerParam = "?seq=" + seq + "&stm=" + stm + "&idx=" + idx + "&dng_num=" + dng_cul_num + "&dng_free_flg=" + dng_free_flg;

    //MegastudyPlayer = window.open('/Player/MegaPlayer/PlayerHigh/Player.asp?seq=' + seq + '&stm=' + stm + '&idx=' + idx + '&dng_num='+dng_cul_num+'&dng_free_flg='+dng_free_flg+'&PlayerKbn=H&PlayerApp=N&UseWidth=' + UseWidth + "&UseHeight=" + UseHeight, 'DNGPlayer', 'scrollbars=no,width=1024,height=580,top=0,left=0,status=no');
    player_div_admin('H', vPlayerParam, 'D', 'H', 'N', SERVER);
    return;
}
