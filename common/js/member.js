//���̵� �ߺ�Ȯ�� 2013-01-25
function fIDOverChk() {
    if (isNull(memform.ID, "ȸ�� ID��")) return;

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
        str = "���̵�� ����,���� �������� 4�ڸ� �̻� 15�ڸ� ���Ϸ� �Է��ϼ���";
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
                alert("���̵�� ����,���ڸ� �Է°����մϴ�.");
                memform.ID.focus()
                return;
            }
        }
    }

    //var url = "/member/memb_id_over.asp?id="+memform.ID.value;
    //launchCenter(url, "ID�ߺ�Ȯ��",280,470,"auto");

    //�ҷ����ⵥ����
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

//���̵� �ߺ�Ȯ�γ� 2013-01-25

function fFindAddr() {
    var url = "/member/memb_find_post.asp";
    launchCenter(url, "�ּ�ã��", 440, 470, "auto");
}

function fFindSchool(o) {
    var url = "/member/memb_find_school_ut.asp?obj=" + o;
    launchCenter(url, "�б�ã��", 520, 370, "auto");
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

    launchCenter(url, "�а�ã��", 560, 470, "Yes");
}

function fSetGrdFlg(bool, obj) {
    obj.disabled = bool;
}

function fNumCheck(f, val) {
    if (!isValidNumber(val)) {
        alert("���ڸ� �Է°��� �մϴ�.");
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

    if (isNull(o.ID, "ȸ�� ID��")) return;

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
        str = "���̵�� ����,���� �������� 4�ڸ� �̻� 15�ڸ� ���Ϸ� �Է��ϼ���";
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
                alert("���̵�� ����,���ڸ� �Է°����մϴ�.");
                o.ID.focus()
                return;
            }
        }
    }

    if (o.idover.value == "N") {
        alert("ID �ߺ�üũ�� ���ֽʽÿ�");
        o.ID.focus();
        return;
    }

    if (o.chk_email.value == "N") {
        alert("�̸��� �ߺ�üũ�� ���ֽʽÿ�");
        o.EMAIL1.focus();
        return;
    }

    if (o.chk_hp_no.value == "N") {
        alert("�ڵ�����ȣ �ߺ�üũ�� ���ֽʽÿ�");
        o.HP_NO3.focus();
        return;
    }

    // 0: ����� 1: �кθ�
    ///var vid_kbn = "";
    ///for (i = 0; i < o.id_kbn.length; i++) {
    ///    if (o.id_kbn[i].checked == true) {
    ///        vid_kbn = o.id_kbn[i].value;
    ///    }
    ///}
    //if (isNull(vid_kbn, "ID ������")) return;
    ///if (vid_kbn == "") {
    ///    alert("ID ������ �Է����ּ���.");
    ///    o.id_kbn[0].focus();
    ///    return;
    ///}

	if (isNull(o.id_exam, "�غ������")) return;

    // 1: ���� 2: ����
    var vsex = "";
    for (i = 0; i < o.sex.length; i++) {
        if (o.sex[i].checked == true) {
            vsex = o.sex[i].value;
        }
    }
    //if (isNull(vid_kbn, "ID ������")) return;
    if (vsex == "") {
        alert("������ �Է����ּ���.");
        o.sex[0].focus();
        return;
    }

    if (isNull(o.PWD, "��й�ȣ��")) return;

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
        str = "��й�ȣ�� 4�ڸ� �̻� 15�ڸ� ���Ϸ� �Է��ϼ���";
        alert(str);
        o.PWD.focus();
        return;
    }

    if (isNull(o.PWD1, "��й�ȣ Ȯ����")) return;
    if (o.PWD.value != o.PWD1.value) {
        alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
        o.PWD1.value = "";
        o.PWD1.focus();
        return;
    }

    if (isNull(o.MEM_NM, "�̸���")) return;
    if (isNull(o.BIRTH_DT1, "���������")) return;
    if (isNull(o.BIRTH_DT2, "���������")) return;
    if (isNull(o.BIRTH_DT3, "���������")) return;
    if (isNull(o.HP_NO1, "�޴�����ȣ��")) return;
    if (isNull(o.HP_NO2, "�޴�����ȣ��")) return;
    if (isNull(o.HP_NO3, "�޴�����ȣ��")) return;
	if (isNull(o.GEOJU, "����������")) return;
    if (isNull(o.EMAIL1, "E-MAIL��")) return;
    if (isNull(o.EMAIL2, "E-MAIL��")) return;
    if (isNull(o.POST_NO1, "�ּҸ�")) return;
    //if (isNull(o.POST_NO2, "�ּҸ�")) return;
    if (isNull(o.ADDR1, "�ּҸ�")) return;
    //if (isNull(o.rec_path1, "������θ�")) return;

    var checkDate = o.BIRTH_DT1[o.BIRTH_DT1.selectedIndex].value + "-" + o.BIRTH_DT2[o.BIRTH_DT2.selectedIndex].value + "-" + o.BIRTH_DT3[o.BIRTH_DT3.selectedIndex].value;
    if (!isValidDate(checkDate)) {
        alert("������� ��¥������ �߸��Ǿ����ϴ�");
        o.BIRTH_DT1.focus();
        return;
    }

    //�����з� 20150116 ȸ������ ����ȭ
    /*
    var vgrd_flg = "";
    for (i = 0; i < o.MSTR_GRD_FLG.length; i++) {
        if (o.MSTR_GRD_FLG[i].checked == true) {
            vgrd_flg = o.MSTR_GRD_FLG[i].value;
        }
    }

    if (vgrd_flg == "") {
        alert("�����з��� �����ϼ���.");
        o.MSTR_GRD_FLG[0].focus();
        return;
    }
    */

    // ����
    var vmem_job = "";
/*    for (i = 0; i < o.mem_job.length; i++) {
        if (o.mem_job[i].checked == true) {
            vmem_job = o.mem_job[i].value;
        }
    }

    if (vmem_job == "") {
        alert("������ �����ϼ���");
        o.mem_job[0].focus();
        return;
    }
*/

    // ���� ���ÿ��� 20150116 ȸ������ ����ȭ
    /*
    var unimarflg = "";
    for (i = 0; i < o.UNI_MAR1.length; i++) {
        if (o.UNI_MAR1[i].checked == true) {
            unimarflg = o.UNI_MAR1[i].value;
        }
    }
    if (unimarflg == "") {
        alert("�������ÿ��θ� �����ϼ���.");
        o.UNI_MAR1[0].focus();
        return;
    }
    */

    // �غ� �迭
/*    var prepareflg = "";
    for (i = 0; i < o.prepare.length; i++) {
        if (o.prepare[i].checked == true) {
            prepareflg = o.prepare[i].value;
        }
    }
    if (prepareflg == "") {
        alert("�غ�迭�� �����ϼ���.");
        o.prepare[0].focus();
        return;
    }

    // ���ð���
    var subject_cnt = 0;
    for (i = 0; i < o.sel_subject.length; i++) {
        if (o.sel_subject[i].checked == true) {
            subject_cnt = subject_cnt + 1;
        }
    }
    if (subject_cnt > 3) {
        alert("���� ���� ������ 3�� ���� ���ð��� �մϴ�.");
        o.sel_subject[0].focus();
        return;
    }
*/

    if (confirm("ȸ�������� �Ͻðڽ��ϱ�?")) {
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

/*-------- 2012.11.09 �߰� ---------------------------------------------------*/
/*
* ��¥���˿� �´��� �˻�
*/
function isDateFormat(d) {
    var df = /[0-9]{4}-[0-9]{2}-[0-9]{2}/;
    return d.match(df);
}

/*
* ���⿩�� �˻�
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
* ��¥�� ��ȿ���� �˻�
*/
function isValidDate(d) {
    // ���˿� �ȸ����� false����
    if (!isDateFormat(d)) {
        return false;
    }

    var month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    var dateToken = d.split('-');
    var year = Number(dateToken[0]);
    var month = Number(dateToken[1]);
    var day = Number(dateToken[2]);

    // ��¥�� 0�̸� false
    if (day == 0) {
        return false;
    }

    var isValid = false;

    // �����϶�
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
