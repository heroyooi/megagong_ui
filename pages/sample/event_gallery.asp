<div class="btn_wrap">
    <button onclick="sq_event()"><img src="<%=img_main%>/m/2022/1130_shin242/evt1_btn.png" alt="SQ �����ϱ�"></button>
</div>
<!-- #include file = "./gall_event.asp" -->

<div class="mg_popup_wrap z-anim mfp-hide" id="popupCertified" data-width="700">
    <div class="content_area">
        <div class="content_inner">
            <a href="javascript:;" class="mg_popup_close" onclick="closeCertifiedPopup()"></a>
            <p class="b_tit">�ſ��� ���ϸ�����[SQ] ����</p>
            <p class="s_tit">�����׽�Ʈ ������  �׽�Ʈ ���θ�  ��  �� �ִ� <br />ȸ���� ����  �����̹����� ���ε��� �ּ���.</p>
            <div class="mg_tb_wrap">
                <table summary="���� ����" class="mg_tb_form">
                    <colgroup>
                        <col width="25%">
                        <col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">���� �̹���</th>
                            <td>
                                <div class="mg_filebox clfix">
                                    <div class="filename">
                                        <input type="text" id="filename" name="filename" value="���� �̹����� ���ε��� �ּ���.">
                                        <a id="btn_fileDel" href="javascript:void(0);" onclick="document.getElementById('filename').value='���� �̹����� ���ε��� �ּ���.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="����">[����]</a>
                                    </div>
                                    <div class="filebtn">
                                        <label for="attfile" style="cursor:pointer">���� ����</label>
                                    </div>
                                    <input type="file" id="attfile" name="attfile" value="" onchange="ChangeFile(this, 'filename')">
                                    <input type="hidden" name="attfile_file_name" id="attfile_name" value="">
                                    <input type="hidden" name="attfile_size" id="attfile_size">
                                    <input type="hidden" name="attfile_url" id="attfile_url">
                                    <input type="hidden" name="attfile_file_name_ori" id="attfile_ori_name" value="">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">����</th>
                            <td><textarea class="mg_textarea" name="p_intro" id="edContent" cols="30" rows="10" maxlength="300" placeholder="���� ������ 10�� �̻� 300�� ���Ϸ� �ۼ� �����մϴ�."></textarea></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <ul class="mg_s_info">
                <li>�ı� �̺�Ʈ ����� �ſ��� ���ϸ� ����[SQ] �����׽�Ʈ�Դϴ�.</li>
                <li>������ 5MB ������ jpg, jpeg, gif, png ���ϸ� ���ε� �����մϴ�.</li>
                <li>������ ȸ���� Ǯ�̿��ΰ� Ȯ�� ������ [ȸ���� �������� ������] �̹����� �ۼ��ϼž� ���� �����մϴ�.</li>
                <li>���� ���� ������ 10�� �̻� 300�� ���Ϸ� �ۼ� �����մϴ�.</li>
                <li>�̺�Ʈ ������ ���� ���� ��, �弳������ ���� ������ ���� ���� �����Ǹ� ��÷ ��󿡼� ���ܵ˴ϴ�.</li>
            </ul>
            <div class="mg_info_wrap">
                <div class="mg_terms"><strong class="lg_tit">[�������� ���� ���� �ȳ�]</strong>

<strong>1.�������� ����/�̿� ����</strong>
- �̺�Ʈ ��û ������ ���� ���� Ȯ�� ���� ���� �� ���ǻ��� ����
- �̺�Ʈ ������ ���� ��ǰ ����

<strong>2. �������� �����׸�</strong>
- ���� ���� �̹����� �ı� ����

<strong>3. �������� ����/�̿�Ⱓ</strong>
- �� ����, Ȱ����� �޼� �� �ٷ� �ı�

<strong>4. �������� ���� ���� �ź� �Ǹ� �� ���� �źο� ���� ������</strong>
- �����ڴ� �������� ����/�̿뿡 �������� ���� �� ������, ���� �ź� �� �̺�Ʈ ������ �Ұ����մϴ�.</div>
            </div>
            <span class="mg_chk_base">
                <input type="checkbox" id="chk_agree" name="chk_agree" value="Y">
                <label for="chk_agree">[�ʼ�] �������� ���� ����</label>
            </span>
            <div class="mg_btn_wrap">
                <a href="javascript:;" class="mg_btn_base xl" onclick="cert()">�����ϱ� ></a>
            </div>
        </div>
    </div>
</div>

<script>
    function closeCertifiedPopup() {
        var q = window.confirm('�ۼ� ������ ������� �ʽ��ϴ�.\nâ�� �����ðڽ��ϱ�?');
        if (q) {
            $.magnificPopup.close();
        }
    }

    $(document).on('click', '.mg_popup_dimm', function(){
        closeCertifiedPopup();
    });

    //����
    // function sq_event() {
    //     <% 'if certEventEnd then %>
    //         finishEvent();
    //         return;
    //     <% 'elseif cook_id = "" then %>
    //         loginEvent();
    //         return;
    //     <% 'else %>
    //         openMegaPopup('popupCertified', 4, false, true, openCB, closeCB);
    //         function openCB() {
    //             $('.quick_banner').addClass('bug');
    //         }
    //         function closeCB() {
    //             $('.quick_banner').removeClass('bug');
    //         }
    //     <% 'end if %>
    // }

    //�˾� Ȯ�ο�
    function sq_event() {
        openMegaPopup('popupCertified', 4, false, true, openCB, closeCB);
        function openCB() {
            $('.quick_banner').addClass('bug');
        }
        function closeCB() {
            $('.quick_banner').removeClass('bug');
        }
    }
</script>