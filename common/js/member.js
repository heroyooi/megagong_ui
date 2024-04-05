//아이디 중복확인 2013-01-25
function fIDOverChk() {
    if (isNull(memform.ID, "회원 ID를")) return;

    var tt2 = memform.ID.value;
    var tt4 = 15;
    var tt5 = 4;
    var len = 0;

    tt2_size = tt2.length;

    for (i = 0; i < tt2_size; i++) {
        retCode = tt2.charCodeAt(i);
        len = (retCode > 255) ? len + 2 : len + 1;
    }

    if (len > tt4 || len < tt5) {
        str = "아이디는 영문,숫자 조합으로 4자리 이상 15자리 이하로 입력하세요";
        alert(str);
        memform.ID.focus();
        return;
    }

    var Alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    var Digit = '1234567890'//  var Spcha = '!@#$%^&*()_+|\=-'
    var astr = Alpha + Digit; // var astr2=Alpah + Digit + Spcha;

    if (astr.length > 4) {
        for (i = 0; i < tt2_size; i++) {
            if (astr.indexOf(tt2.substring(i, i + 1)) < 0) {
                alert("아이디는 영문,숫자만 입력가능합니다.");
                memform.ID.focus()
                return;
            }
        }
    }

    //var url = "/member/memb_id_over.asp?id="+memform.ID.value;
    //launchCenter(url, "ID중복확인",280,470,"auto");

    //불러오기데이터
    $.ajax({

        contentType: "application/html",
        url: "/member/memb_id_over.asp?id=" + tt2,
        dataType: "html",
        success: function (xml) {
            document.getElementById("TotResultId").innerHTML = xml;
        },
        error: function (jqXHR, textStatus, errorThrown) {

        }

    });

}

function outMemberId() {
    document.getElementById("TotResultId").innerHTML = "";

}

//아이디 중복확인끝 2013-01-25

function fFindAddr() {
    var url = "/member/memb_find_post.asp";
    launchCenter(url, "주소찾기", 440, 470, "auto");
}

function fFindSchool(o) {
    var url = "/member/memb_find_school_ut.asp?obj=" + o;
    launchCenter(url, "학교찾기", 520, 370, "auto");
}

function fEmailChk() {
    if (memform.EMAIL3.value == "etc") {
        memform.EMAIL2.value = "";
        memform.EMAIL2.focus();
    } else {
        memform.EMAIL2.value = memform.EMAIL3.value;
    }
}

function fFindHope(o) {
    var exam;
    var exam_type;
    var url;

    url = "/member/memb_find_school_univ.asp?obj=" + o;

    launchCenter(url, "학과찾기", 560, 470, "Yes");
}

function fSetGrdFlg(bool, obj) {
    obj.disabled = bool;
}

function fNumCheck(f, val) {
    if (!isValidNumber(val)) {
        alert("숫자만 입력가능 합니다.");
        f.value = "";
        f.focus();
    }
    return;
}

function setMemForm(v) {

    if (v == "100") {
        document.getElementById("uniTable").style.display = "none";

    } else if (v == "101" || v == "102") {
        document.getElementById("uniTable").style.display = ""

    } else if (v == "103" || v == "106") {
        document.getElementById("uniTable").style.display = ""

    } else if (v == "107") {
        document.getElementById("uniTable").style.display = ""

    }
}

function fFormCheck() {
    var o = memform;

    if (isNull(o.ID, "회원 ID를")) return;

    var tt2 = o.ID.value;
    var tt4 = 15;
    var tt5 = 4;
    var len = 0;

    tt2_size = tt2.length;

    for (i = 0; i < tt2_size; i++) {
        retCode = tt2.charCodeAt(i);
        len = (retCode > 255) ? len + 2 : len + 1;
    }

    if (len > tt4 || len < tt5) {
        str = "아이디는 영문,숫자 조합으로 4자리 이상 15자리 이하로 입력하세요";
        alert(str);
        o.ID.focus();
        return;
    }

    var Alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
    var Digit = '1234567890'//  var Spcha = '!@#$%^&*()_+|\=-'
    var astr = Alpha + Digit; // var astr2=Alpah + Digit + Spcha;

    if (astr.length > 4) {
        for (i = 0; i < tt2_size; i++) {
            if (astr.indexOf(tt2.substring(i, i + 1)) < 0) {
                alert("아이디는 영문,숫자만 입력가능합니다.");
                o.ID.focus()
                return;
            }
        }
    }

    if (o.idover.value == "N") {
        alert("ID 중복체크를 해주십시요");
        o.ID.focus();
        return;
    }

    if (o.chk_email.value == "N") {
        alert("이메일 중복체크를 해주십시오");
        o.EMAIL1.focus();
        return;
    }

    if (o.chk_hp_no.value == "N") {
        alert("핸드폰번호 중복체크를 해주십시오");
        o.HP_NO3.focus();
        return;
    }

    // 0: 수험생 1: 학부모
    ///var vid_kbn = "";
    ///for (i = 0; i < o.id_kbn.length; i++) {
    ///    if (o.id_kbn[i].checked == true) {
    ///        vid_kbn = o.id_kbn[i].value;
    ///    }
    ///}
    //if (isNull(vid_kbn, "ID 구분을")) return;
    ///if (vid_kbn == "") {
    ///    alert("ID 구분을 입력해주세요.");
    ///    o.id_kbn[0].focus();
    ///    return;
    ///}

	if (isNull(o.id_exam, "준비시험을")) return;

    // 1: 남자 2: 여자
    var vsex = "";
    for (i = 0; i < o.sex.length; i++) {
        if (o.sex[i].checked == true) {
            vsex = o.sex[i].value;
        }
    }
    //if (isNull(vid_kbn, "ID 구분을")) return;
    if (vsex == "") {
        alert("성별을 입력해주세요.");
        o.sex[0].focus();
        return;
    }

    if (isNull(o.PWD, "비밀번호를")) return;

    var tt2 = o.PWD.value;
    var tt4 = 15;
    var tt5 = 4;
    var len = 0;

    tt2_size = tt2.length;

    for (i = 0; i < tt2_size; i++) {
        retCode = tt2.charCodeAt(i);
        len = (retCode > 255) ? len + 2 : len + 1;
    }

    if (len > tt4 || len < tt5) {
        str = "비밀번호를 4자리 이상 15자리 이하로 입력하세요";
        alert(str);
        o.PWD.focus();
        return;
    }

    if (isNull(o.PWD1, "비밀번호 확인을")) return;
    if (o.PWD.value != o.PWD1.value) {
        alert("비밀번호가 일치하지 않습니다.");
        o.PWD1.value = "";
        o.PWD1.focus();
        return;
    }

    if (isNull(o.MEM_NM, "이름을")) return;
    if (isNull(o.BIRTH_DT1, "생년월일을")) return;
    if (isNull(o.BIRTH_DT2, "생년월일을")) return;
    if (isNull(o.BIRTH_DT3, "생년월일을")) return;
    if (isNull(o.HP_NO1, "휴대폰번호를")) return;
    if (isNull(o.HP_NO2, "휴대폰번호를")) return;
    if (isNull(o.HP_NO3, "휴대폰번호를")) return;
	if (isNull(o.GEOJU, "거주지역을")) return;
    if (isNull(o.EMAIL1, "E-MAIL을")) return;
    if (isNull(o.EMAIL2, "E-MAIL을")) return;
    if (isNull(o.POST_NO1, "주소를")) return;
    //if (isNull(o.POST_NO2, "주소를")) return;
    if (isNull(o.ADDR1, "주소를")) return;
    //if (isNull(o.rec_path1, "인지경로를")) return;

    var checkDate = o.BIRTH_DT1[o.BIRTH_DT1.selectedIndex].value + "-" + o.BIRTH_DT2[o.BIRTH_DT2.selectedIndex].value + "-" + o.BIRTH_DT3[o.BIRTH_DT3.selectedIndex].value;
    if (!isValidDate(checkDate)) {
        alert("생년월일 날짜형식이 잘못되었습니다");
        o.BIRTH_DT1.focus();
        return;
    }

    //최종학력 20150116 회원가입 간소화
    /*
    var vgrd_flg = "";
    for (i = 0; i < o.MSTR_GRD_FLG.length; i++) {
        if (o.MSTR_GRD_FLG[i].checked == true) {
            vgrd_flg = o.MSTR_GRD_FLG[i].value;
        }
    }

    if (vgrd_flg == "") {
        alert("최종학력을 선택하세요.");
        o.MSTR_GRD_FLG[0].focus();
        return;
    }
    */

    // 직업
    var vmem_job = "";
/*    for (i = 0; i < o.mem_job.length; i++) {
        if (o.mem_job[i].checked == true) {
            vmem_job = o.mem_job[i].value;
        }
    }

    if (vmem_job == "") {
        alert("직업을 선택하세요");
        o.mem_job[0].focus();
        return;
    }
*/

    // 과거 응시여부 20150116 회원가입 간소화
    /*
    var unimarflg = "";
    for (i = 0; i < o.UNI_MAR1.length; i++) {
        if (o.UNI_MAR1[i].checked == true) {
            unimarflg = o.UNI_MAR1[i].value;
        }
    }
    if (unimarflg == "") {
        alert("과거응시여부를 선택하세요.");
        o.UNI_MAR1[0].focus();
        return;
    }
    */

    // 준비 계열
/*    var prepareflg = "";
    for (i = 0; i < o.prepare.length; i++) {
        if (o.prepare[i].checked == true) {
            prepareflg = o.prepare[i].value;
        }
    }
    if (prepareflg == "") {
        alert("준비계열을 선택하세요.");
        o.prepare[0].focus();
        return;
    }

    // 선택과목
    var subject_cnt = 0;
    for (i = 0; i < o.sel_subject.length; i++) {
        if (o.sel_subject[i].checked == true) {
            subject_cnt = subject_cnt + 1;
        }
    }
    if (subject_cnt > 3) {
        alert("선택 예정 과목은 3개 까지 선택가능 합니다.");
        o.sel_subject[0].focus();
        return;
    }
*/

    if (confirm("회원가입을 하시겠습니까?")) {
        if (location.host == "www.megacst.com") {
            document.memform.action = "https://" + location.host + "/member/memb_join_proc.asp";
        } else {
            document.memform.action = "/member/memb_join_proc.asp";
        }
        memform.submit();
    }
    return;
}

function id_kbn_move() {
    if (memform.id_kbn[0].checked == true) {
        document.getElementById("jobTab").style.display = "block";

        var vmem_job = "";
        for (i = 0; i < memform.mem_job.length; i++) {
            if (memform.mem_job[i].checked == true) {
                vmem_job = memform.mem_job[i].value;
            }
        }

        if (vmem_job != "100") {
            document.getElementById("uniTable").style.display = "block";
        }

    } else if (memform.id_kbn[1].checked == true) {
        document.getElementById("jobTab").style.display = "none";

        document.getElementById("uniTable").style.display = "none";
    }
}

/*-------- 2012.11.09 추가 ---------------------------------------------------*/
/*
* 날짜포맷에 맞는지 검사
*/
function isDateFormat(d) {
    var df = /[0-9]{4}-[0-9]{2}-[0-9]{2}/;
    return d.match(df);
}

/*
* 윤년여부 검사
*/
function isLeaf(year) {
    var leaf = false;

    if (year % 4 == 0) {
        leaf = true;

        if (year % 100 == 0) {
            leaf = false;
        }

        if (year % 400 == 0) {
            leaf = true;
        }
    }

    return leaf;
}

/*
* 날짜가 유효한지 검사
*/
function isValidDate(d) {
    // 포맷에 안맞으면 false리턴
    if (!isDateFormat(d)) {
        return false;
    }

    var month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    var dateToken = d.split('-');
    var year = Number(dateToken[0]);
    var month = Number(dateToken[1]);
    var day = Number(dateToken[2]);

    // 날짜가 0이면 false
    if (day == 0) {
        return false;
    }

    var isValid = false;

    // 윤년일때
    if (isLeaf(year)) {
        if (month == 2) {
            if (day <= month_day[month - 1] + 1) {
                isValid = true;
            }
        } else {
            if (day <= month_day[month - 1]) {
                isValid = true;
            }
        }
    } else {
        if (day <= month_day[month - 1]) {
            isValid = true;
        }
    }

    return isValid;
}
