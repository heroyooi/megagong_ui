<script type="text/babel">
  'use strict';

  function DevPopup1({ title, onChange }) {

const html = `<div class="pop_btn_wrap">
  <a class="mg_btn_base sm" href="javascript:;" onclick="openNoticePopup(); return false;">���� �˾� - �˸���û</a>
</div>

<div class="mg_popup_wrap z-anim mfp-hide" id="popupFadeInNotice" style="max-width:700px;">
    <div class="content_area">
      <div class="content_inner">
        <a href="#" class="mg_popup_close" onclick="closeNoticePopup(); return false;"></a>
        <p class="b_tit">��Ʃ�� Ȱ��� ���󺸰� <br/> �հݴ��� ��� �����ϱ�</p>
        <p class="s_tit">����� �ۼ��� ��Ʃ�� �г����� ��� ĸ���̹����� �������ֽø� <br/> ��÷�� ���� ������ ���������� �����帳�ϴ�.</p>
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
                    <th scope="row">�̸�</th>
                    <td class="aL">ȫ�浿</td>
                    <th scope="row">�޴��� ��ȣ</th>
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
                    <th scope="row">���� �̹���</th>
                    <td colspan="3">
                        <div class="mg_filebox clfix">
                        <div class="filename">
                            <input type="text" id="filename" name="filename" value="���� �̹����� ���ε��� �ּ���.">
                            <a id="btn_fileDel" href="javascript:;" onclick="document.getElementById('filename').value='���� �̹����� ���ε��� �ּ���.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="����">[����]</a>
                        </div>
                        <div class="filebtn">
                            <label for="attfile" style="cursor:pointer">ã�ƺ���</label>
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
          <p class="info_tit">�� ���ǻ���</p>
          <ul class="info_list">
              <li><span>��</span>�̺�Ʈ ������ ���� ���� ��, �弳�����, Ÿ ���簡 ��޵� �� ���� ��÷ ��󿡼� ���ܵ˴ϴ�.</li>
              <li><span>��</span>������ 5MB ������ jpg, jpeg, gif �Ǵ� png ���ϸ� ���ε� �����մϴ�.</li>
              <li><span>��</span>�޴��� ��ȣ ������ ȸ���������� ���� �����մϴ�. <a href="/member/Account_Chk.asp">[ ȸ������ ����> ]</a></li>
              <li><span>��</span>ȸ������ �������� �̵� �� �ۼ��� ������ ��� �����Ǵ�, ȸ������ ������ �ʿ��� ���, ȸ�������� ���� �����Ͻñ� �ٶ��ϴ�.</li>
          </ul>
        </div>
        <div class="mg_info_wrap">
            <div class="mg_terms"><strong class="lg_tit">[�������� ���� ���� �ȳ�]</strong>

            <strong>1. �������� ����/�̿� ����</strong>
            - �̺�Ʈ ��û ������ ���� ���� Ȯ�� ���� ���� �� ���ǻ��� ����
            - �̺�Ʈ ������ ���� ��ǰ ����

            <strong>2. �������� �����׸�</strong>
            - �̸�, �޴��� ��ȣ

            <strong>3. �������� ����/�̿�Ⱓ</strong>
            - �� ����, Ȱ�� ���� �޼� �� �ٷ� �ı�

            <strong>4. �������� ���� ���� �ź� �Ǹ� �� ���� �źο� ���� ������</strong>
            - �����ڴ� �������� ����/�̿뿡 �������� ���� �� ������, ���� �ź� �� �̺�Ʈ ������ �Ұ����մϴ�.</div>
        </div>
        <span class="mg_chk_base">
            <input type="checkbox" id="privacyYN" name="privacyYN">
            <label for="privacyYN">[�ʼ�] �������� ���� ����</label>
        </span>
        <div class="mg_btn_wrap">
          <a href="javascript:;" class="mg_btn_base xl" onclick="certApply();">�����ϱ� ></a>
        </div>
      </div>
    </div>
</div>`;

const css = ``;

const excCss = ``;

const js = `var isNoticePopupDimm = false;

function openNoticePopup() {
  var q = window.confirm('�˾��� ���ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = true;
    openMegaPopup('popupFadeInNotice', 4, false, true);
  }
}

function closeNoticePopup() {
  var q = window.confirm('�˸���û�� ���� �ʰ� �˾��� �����ðڽ��ϱ�?');
  if (q) {
    isNoticePopupDimm = false;
    $.magnificPopup.close();
  }
}

function completeNotice() {
  alert('�˸� ��û�� �Ϸ�Ǿ����ϴ�.');
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
            alert('JPG, JPEG, GIF �Ǵ� PNG Ȯ���� ���ϸ� ���ε� �����մϴ�.');
            obj.files[0].value = null;
            tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
            $('#attfile').replaceWith(tempHtml);         
            document.getElementById('attfile_ori_name').value='';       
            document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
            return;
        } else {
            //÷������ ������ üũ      
            if(obj.files[0].size > maxSize){
                tempHtml = "<input type='file' id='attfile' name='attfile' value='' onchange=\"ChangeFile(this, 'filename')\">";
                $('#attfile').replaceWith(tempHtml);     
                document.getElementById('attfile_ori_name').value='';                  
                alert("÷�������� 5MB ���Ϸ� ����� �����մϴ�.");
                return;
            }
            document.getElementById(filename_field).value=obj.files[0].name;
            fncFileUPloadNew('','board','event','<%=evt_cd%>','attfile', ',', 'N', 'Y');                               
        }
        $("#btn_fileDel").show();

    } else {
        document.getElementById(filename_field).value="���� �̹����� ���ε��� �ּ���.";
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
                        $("#"+id_txt).val("÷�������� ������ּ���.");
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
        desc="�ް����͵� ������ ȫ�� ���������� '�˸���û' ���� ���� �ַ� ���Ǵ� �˾� ����Դϴ�. <br />
        ������ ��ư�� Ŭ���ϸ� ���̵���(Fade-In)ȿ���� �Բ� ����(Dimmed) ó���� �˾��� ��Ÿ���ϴ�. <br />
        �ش� �˾������� �̹��� ���� �� ����ڰ� ������ ���� ���� ���� ���� �ۼ��Ͽ� ������ ������ �� �ֽ��ϴ�. <br />
        ���� �˾��� ���� ���� ���� ������ ���߷����� ���� �� �ֽ��ϴ�. <br />
        �ش� �ڵ带 ���� �����Ǵ� �˾��� ���콺 ��ũ�� ���� ���� ȭ�� Body �̵��� �Ұ����մϴ�. �ٸ�, iOS������ �̵��� �����մϴ�."
        // image="/images/popup1.png"
        html={html}
        css={css}
        excCss={excCss}
        js={js}
        items={["���ߴ���","�˸���û","����","��Ŭ���ð��â","�̹�������÷��"]}
        link="<%=url_main%>/s/gong/event/2024/02270021/index.asp#event2"
        onChange={onChange}
      />
    )
  }
</script>