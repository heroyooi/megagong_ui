<script type="text/babel">
  'use strict';

  function DevPopup1({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="javascript:;" onclick="openNoticePopup(); return false;">개발 팝업 - 알림신청</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeInNotice" style="max-width:700px;">
    <div class="content_area">
      <div class="content_inner">
        <a href="#" class="mg_popup_close" onclick="closeNoticePopup(); return false;"></a>
        <p class="b_tit">유튜브 활용법 영상보고 <br/> 합격다짐 댓글 인증하기</p>
        <p class="s_tit">댓글을 작성한 유튜브 닉네임이 담긴 캡쳐이미지를 인증해주시면 <br/> 추첨을 통해 따듯한 응원선물를 보내드립니다.</p>
        <div class="mg_tb_wrap mt30">
          <table class="mg_tb_form">
            <colgroup>
				<col width="18%"/>
				<col width="31%"/>
				<col width="20%"/>
				<col width="31%"/>
			</colgroup>
            <tbody>
                <tr>
                    <th scope="row">이름</th>
                    <td class="aL">홍길동</td>
                    <th scope="row">휴대폰 번호</th>
                    <td class="aL">010-1234-5678</td>
                </tr>
            </tbody>
          </table>
        </div>
        <div class="mg_tb_wrap">
          <table class="mg_tb_form">
            <colgroup>
                <col width="18%"/>
                <col width="31%"/>
                <col width="20%"/>
                <col width="31%"/>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">인증 이미지</th>
                    <td colspan="3">
                        <div class="mg_filebox clfix">
                        <div class="filename">
                            <input type="text" id="filename" name="filename" value="인증 이미지를 업로드해 주세요.">
                            <a id="btn_fileDel" href="javascript:;" onclick="document.getElementById('filename').value='인증 이미지를 업로드해 주세요.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="삭제">[삭제]</a>
                        </div>
                        <div class="filebtn">
                            <label for="attfile" style="cursor:pointer">찾아보기</label>
                        </div>
                        <input type="file" id="attfile" name="attfile" value="" onchange="ChangeFile(this, 'filename')">
                        <input type="hidden" name="attfile_file_name" id="attfile_name" value="">
                        <input type="hidden" name="attfile_size" id="attfile_size">
                        <input type="hidden" name="attfile_url" id="attfile_url">
                        <input type="hidden" name="attfile_file_name_ori" id="attfile_ori_name" value="">
                        </div>
                    </td>
                </tr>
            </tbody>
          </table>
        </div>
        <div class="mg_info_wrap mt30">
          <p class="info_tit">■ 유의사항</p>
          <ul class="info_list">
              <li><span>※</span>이벤트 목적과 관련 없는 글, 욕설·비방, 타 강사가 언급된 글 등은 당첨 대상에서 제외됩니다.</li>
              <li><span>※</span>파일은 5MB 이하의 jpg, jpeg, gif 또는 png 파일만 업로드 가능합니다.</li>
              <li><span>※</span>휴대폰 번호 변경은 회원정보에서 수정 가능합니다. <a href="/member/Account_Chk.asp">[ 회원정보 수정> ]</a></li>
              <li><span>※</span>회원정보 페이지로 이동 시 작성한 내용은 모두 삭제되니, 회원정보 수정이 필요한 경우, 회원정보를 먼저 수정하시기 바랍니다.</li>
          </ul>
        </div>
        <div class="mg_info_wrap">
            <div class="mg_terms"><strong class="lg_tit">[개인정보 수집 동의 안내]</strong>

            <strong>1. 개인정보 수집/이용 목적</strong>
            - 이벤트 신청 접수에 따른 본인 확인 절차 진행 및 문의사항 응대
            - 이벤트 참여에 따른 경품 지급

            <strong>2. 개인정보 수집항목</strong>
            - 이름, 휴대폰 번호

            <strong>3. 개인정보 보유/이용기간</strong>
            - 본 수집, 활용 목적 달성 후 바로 파기

            <strong>4. 개인정보 제공 동의 거부 권리 및 동의 거부에 따른 불이익</strong>
            - 참여자는 개인정보 수집/이용에 동의하지 않을 수 있으나, 동의 거부 시 이벤트 참여가 불가능합니다.</div>
        </div>
        <span class="mg_chk_base">
            <input type="checkbox" id="privacyYN" name="privacyYN">
            <label for="privacyYN">[필수] 개인정보 수집 동의</label>
        </span>
        <div class="mg_btn_wrap">
          <a href="javascript:;" class="mg_btn_base xl" onclick="certApply();">인증하기 ></a>
        </div>
      </div>
    </div>
</div>`;

const css = ``;

const excCss = ``;

const js = `var isNoticePopupDimm = false;

function openNoticePopup() {
  var q = window.confirm('팝업을 띄우시겠습니까?');
  if (q) {
    isNoticePopupDimm = true;
    openMegaPopup('popupFadeInNotice', 4, false, true);
  }
}

function closeNoticePopup() {
  var q = window.confirm('알림신청을 하지 않고 팝업을 닫으시겠습니까?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('알림 신청이 완료되었습니다.');
  $.magnificPopup.close();
}

$(document).on('click', '.mg_popup_dimm', function(){
  if (isNoticePopupDimm) {
    closeNoticePopup();
  }
});

var getFileExtention = function(filename) {
    return filename.substring(filename.lastIndexOf('.')+1, filename.length) || filename;
}

var maxSize = 5 * 1024 * 1024;//5MB  
var ChangeFile = function(obj, filename_field) {
    if (typeof obj.files[0] !== "undefined") {
        var file_ext = getFileExtention(obj.files[0].name.toLowerCase());
        if (file_ext != 'jpg' && file_ext != 'jpeg' && file_ext != 'gif' && file_ext != 'png') {
            alert('JPG, JPEG, GIF 또는 PNG 확장자 파일만 업로드 가능합니다.');
            obj.files[0].value = null;
            tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
            $('#attfile').replaceWith(tempHtml);         
            document.getElementById('attfile_ori_name').value='';       
            document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
            return;
        } else {
            //첨부파일 사이즈 체크      
            if(obj.files[0].size > maxSize){
                tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
                $('#attfile').replaceWith(tempHtml);     
                document.getElementById('attfile_ori_name').value='';                  
                alert("첨부파일은 5MB 이하로 등록이 가능합니다.");
                return;
            }
            document.getElementById(filename_field).value=obj.files[0].name;
            fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
        }
        $("#btn_fileDel").show();

    } else {
        document.getElementById(filename_field).value="인증 이미지를 업로드해 주세요.";
        document.getElementById('attfile').value='';
        document.getElementById('attfile_ori_name').value='';
    }
}

function fncFileUPloadNew(form_id,dir,sub_dir,sub_sub_dir,id_str, delim, date_yn, rename_yn) {
    if( (id_str == "" || id_str == undefined) || (delim == "" || delim == undefined) ) {
        return false;
    }                        
    var target_tot = id_str.split(delim).length;

    var proc_chk_tot = 0;
    id_str.split(delim).forEach(function(i) {
        var id_txt = "filename";
            
        if(i!=""){
            var formData = new FormData();

            formData.append("dir",dir);
            formData.append("sub_dir",sub_dir);
            formData.append("sub_sub_dir",sub_sub_dir);
            formData.append("attfile", jQuery("#"+i)[0].files[0]);
            formData.append("new_yn","Y");
            formData.append("date_yn",date_yn);
            formData.append("rename_yn",rename_yn);
            formData.append("filesize","5");

            var tmp_file_name = $("#"+i).val();                
            var file_name = tmp_file_name.substring(tmp_file_name.lastIndexOf("\\")+1);
            var file_main = document.domain.indexOf('dev') < 0 ? 'https://file.megagong.net' : 'https://filedev.megagong.net';
        
            jQuery.ajax({
                url : file_main+"/file/file_upload_j.asp"
                , type : "POST"
                , processData : false
                , contentType : false
                , xhrFields: {
                    withCredentials: true
                }
                //, contentType: 'application/x-www-form-urlencoded; charset=euc-kr'
                , data : formData
            })
            .done(function(json) {
                    var obj = JSON.parse(json);
                    
                    a=obj;
                    if(obj["err_code"] < 0) {
                        $("#"+id_txt).val("첨부파일을 등록해주세요.");
                        alert(obj["upload_msg"]);
                        return false;

                    } else {
                        $("#"+i+"_name").val(obj["file_info"]["file_name"]);
                        $("#"+i+"_size").val(obj["file_info"]["file_size"]);
                        $("#"+i+"_url").val(obj["file_info"]["file_url"]);

                        $("#"+i+"_ori_name").val(file_name);
                    }
            })
            .fail(function() {
                proc_chk_tot++;

                if(proc_chk_tot == target_tot) {
                    //document.myform.submit();
                    if(form_id!="") {
                    document.getElementById(form_id).submit();
                    }
                }
            })
            .always(function() {
                proc_chk_tot++;

                if(proc_chk_tot == target_tot) {
                    if(form_id!="") {
                        document.getElementById(form_id).submit();
                    }
                }
            });
        }
    });
}`;

    return (
      <PageContent
        title={title}
        desc="메가스터디 공무원 홍보 페이지에서 '알림신청' 등을 위해 주로 사용되는 팝업 기능입니다. <br />
        지정된 버튼을 클릭하면 페이드인(Fade-In)효과와 함께 딤드(Dimmed) 처리된 팝업이 나타납니다. <br />
        해당 팝업에서는 이미지 파일 및 사용자가 제공할 정보 내용 등을 직접 작성하여 서버에 제출할 수 있습니다. <br />
        또한 팝업을 열고 닫을 때에 별도의 개발로직을 넣을 수 있습니다. <br />
        해당 코드를 통해 제공되는 팝업은 마우스 스크롤 등을 통한 화면 Body 이동이 불가능합니다. 다만, iOS에서는 이동이 가능합니다."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["개발대응","알림신청","딤드","딤클릭시경고창","이미지파일첨부"]}
        link="<%=url_main%>/s/gong/event/2024/02270021/index.asp#event2"
        onChange={onChange}
      />
    )
  }
</script>