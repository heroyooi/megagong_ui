<div class="btn_wrap">
    <button onclick="sq_event()"><img src="<%=img_main%>/m/2022/1130_shin242/evt1_btn.png" alt="SQ 인증하기"></button>
</div>
<!-- #include file = "./gall_event.asp" -->

<div class="mg_popup_wrap z-anim mfp-hide" id="popupCertified" data-width="700">
    <div class="content_area">
        <div class="content_inner">
            <a href="javascript:;" class="mg_popup_close" onclick="closeCertifiedPopup()"></a>
            <p class="b_tit">신용한 데일리퀴즈[SQ] 인증</p>
            <p class="s_tit">복습테스트 시험명과  테스트 여부를  알  수 있는 <br />회차별 누적  성적이미지를 업로드해 주세요.</p>
            <div class="mg_tb_wrap">
                <table summary="인증 관련" class="mg_tb_form">
                    <colgroup>
                        <col width="25%">
                        <col width="*">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th scope="row">인증 이미지</th>
                            <td>
                                <div class="mg_filebox clfix">
                                    <div class="filename">
                                        <input type="text" id="filename" name="filename" value="인증 이미지를 업로드해 주세요.">
                                        <a id="btn_fileDel" href="javascript:;" onclick="document.getElementById('filename').value='인증 이미지를 업로드해 주세요.';document.getElementById('attfile').value='';document.getElementById('attfile_ori_name').value=''; $('#btn_fileDel').show();" title="삭제">[삭제]</a>
                                    </div>
                                    <div class="filebtn">
                                        <label for="attfile" style="cursor:pointer">파일 선택</label>
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
                            <th scope="row">내용</th>
                            <td><textarea class="mg_textarea" name="p_intro" id="edContent" cols="30" rows="10" maxlength="300" placeholder="리뷰 내용은 10자 이상 300자 이하로 작성 가능합니다."></textarea></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <ul class="mg_s_info">
                <li>후기 이벤트 대상은 신용한 데일리 퀴즈[SQ] 복습테스트입니다.</li>
                <li>파일은 5MB 이하의 jpg, jpeg, gif, png 파일만 업로드 가능합니다.</li>
                <li>시험명과 회차별 풀이여부가 확인 가능한 [회차별 누적성적 페이지] 이미지로 작성하셔야 참여 가능합니다.</li>
                <li>인증 관련 내용은 10자 이상 300자 이하로 작성 가능합니다.</li>
                <li>이벤트 목적과 관련 없는 글, 욕설·비방글 등은 별도의 고지 없이 삭제되며 당첨 대상에서 제외됩니다.</li>
            </ul>
            <div class="mg_info_wrap">
                <div class="mg_terms"><strong class="lg_tit">[개인정보 수집 동의 안내]</strong>

<strong>1.개인정보 수집/이용 목적</strong>
- 이벤트 신청 접수에 따른 본인 확인 절차 진행 및 문의사항 응대
- 이벤트 참여에 따른 경품 지급

<strong>2. 개인정보 수집항목</strong>
- 수강 인증 이미지와 후기 내용

<strong>3. 개인정보 보유/이용기간</strong>
- 본 수집, 활용목적 달성 후 바로 파기

<strong>4. 개인정보 제공 동의 거부 권리 및 동의 거부에 따른 불이익</strong>
- 참여자는 개인정보 수집/이용에 동의하지 않을 수 있으나, 동의 거부 시 이벤트 참여가 불가능합니다.</div>
            </div>
            <span class="mg_chk_base">
                <input type="checkbox" id="chk_agree" name="chk_agree" value="Y">
                <label for="chk_agree">[필수] 개인정보 수집 동의</label>
            </span>
            <div class="mg_btn_wrap">
                <a href="javascript:;" class="mg_btn_base xl" onclick="cert()">인증하기 ></a>
            </div>
        </div>
    </div>
</div>

<script>
    function closeCertifiedPopup() {
        var q = window.confirm('작성 내용은 저장되지 않습니다.\n창을 닫으시겠습니까?');
        if (q) {
            $.magnificPopup.close();
        }
    }

    $(document).on('click', '.mg_popup_dimm', function(){
        closeCertifiedPopup();
    });

    //원본
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

    //팝업 확인용
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