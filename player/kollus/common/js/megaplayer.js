//플레이어////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
var MegastudyPlayer
//사용자 해상도, 브라우저 버전확인
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


//플레이어 호출함수의 파라미터
var vPlayerLnk, vPlayerParam, vPlayerOption;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 함수설명 : 플레이어 공통 실행함수 (PC/모바일 통합)
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


        if (confirm("3G/4G 환경에서는 데이터 패킷요금이 발생할 수 있습니다.")) {

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
// 함수설명 : 아쿠아 플레이어 - 일반/쌩쌩
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncPlayerAdmin(kbn, CHR_CD, LEC_CD, TEC_NM, SERVER, PlayerKbn) {

    vPlayerParam = "?CHR_CD=" + CHR_CD + "&LEC_CD=" + LEC_CD + "&TEC_NM=" + TEC_NM + "&dng_kbn=" + kbn;

    if (kbn == "10" || kbn == "50") { vPlayerLnk = "L"; } //일반 동영상 강의
    if (kbn == "20" || kbn == "60") { vPlayerLnk = "H"; } //쌩쌩플러스 동영상 강의

    player_div_admin(vPlayerLnk, vPlayerParam, 'D', PlayerKbn, 'Y', SERVER);
    return;

}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 함수설명 : FREE 아쿠아 플레이어
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function fncPlayerAdminFree(kbn, para, SERVER) {
    //고화질 탭구분용(P:OT,맛보기,F:이벤트)
    if (kbn == "20" || kbn == "72" || kbn == "90" || kbn == "80" || kbn == "91" || kbn == "82") {	//논술메인 진수관련 코드 추가 20150813 CHOIJH
        PlayerKbn = "P";
    } else if (kbn == "29") {
        PlayerKbn = "I";
    } else if (kbn == "79" || kbn == "89" || kbn == "99") {
        PlayerKbn = "D";
    } else {
        PlayerKbn = "F";
    }

    vPlayerParam = "?dng_kbn=" + kbn + "&CHR_CD=" + para;

    if (kbn == "10" || kbn == "20" || kbn == "72" || kbn == "80" || kbn == "90" || kbn == "91" || kbn == "79" || kbn == "89") { fncPreDngCnt(vPlayerParam); } //조회수 측정//진수맛보기 추가

    //일반 동영상 맛보기(free) - 10:일반 15:선생님 동영상 인사 31~39 : 일반 맛보기 선택
    if ((kbn >= "10" && kbn <= "19") || (kbn >= "31" && kbn <= "39") || kbn == "50" || kbn == "51" || kbn == "62" || kbn == "79" || kbn == "80") { vPlayerLnk = "L"; }

    //쌩쌩 플러스 동영상 맛보기 (free) - 20:쌩쌩 23:맛보기  72:OT	82:학습정보(OT2) 41~49 : 쌩쌩 맛보기 선택
    if ((kbn >= "20" && kbn <= "29") || (kbn >= "41" && kbn <= "49") || kbn == "60" || kbn == "72" || kbn == "82" || kbn == "90" || kbn == "91" || kbn == "88" || kbn == "89" || kbn == "99") { vPlayerLnk = "H"; }

    player_div_admin(vPlayerLnk, vPlayerParam, 'D', PlayerKbn, 'N', SERVER);
    return;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// 함수이름 : player_exam_2007
// 함수설명 : 플레이어 - FREE
// 입 력 값 : 구분자, 속성
// 반 환 값 :
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
