

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>제1회 메가공무원 전국 모의고사 - 응시정보 입력</title>
	<link type="text/css" rel="stylesheet" href="/common/css/font_NotoSans_kr.css">
    <link type="text/css" rel="stylesheet" href="./pop_style.css">
</head>
<body>
    <div id="pop_wrap" class="pop_wrap">
        <div class="cont">
			<!-- 신청서 form S -->
            <form id="form1" name="form1" method="post">
				<input type="hidden" id="ei" name="ei" value=""/>
                <div class="apply_zone">
					<h1 class="top_title"><strong>제1회 메가공무원 전국 모의고사 신청</strong></h1>
					<!-- 시험 응시 정보 S -->
					<div class="write_info ">
						<p class="info_tit">
							<strong>시험 응시 정보</strong>
						</p>						
						<table class="t_border1" title="시험 응시 정보">
							<colgroup>
                                <col width="20%"/>
                                <col width="15%"/>
								<col width="15%"/>
								<col width="20%"/>
								<col width="30%"/>
                            </colgroup>
							<tr>
                                <th><label for="app_mem_name">이름</label></th>
                                <td colspan="4" class="onlyInp">
									<span><input type="text" id="app_mem_name" name="app_mem_name" placeholder="홍길동"  value="홍길동" title="이름 입력"></span>
								</td>
                            </tr>
							<tr>
                                <th><label for="app_mem_hp_no">휴대폰<br class="mo_for">번호</label></th>
                                <td colspan="4" class="onlyInp">
									<span><input type="text" id="app_mem_hp_no" name="app_mem_hp_no" placeholder="(※ ‘-’없이 입력해 주세요)"  value="01012341234" title="휴대폰 번호 입력"></span>
								</td>
                            </tr>							
							<tr>
								<th><label for="app_mem_sex1">성별</label></th>
                                <td colspan="4" class="gender">
									<label><input type="radio" id="app_mem_sex1" name="app_mem_sex" value="1" checked/> 남자</label>
									<label><input type="radio" id="app_mem_sex2" name="app_mem_sex" value="2" /> 여자</label>
								</td>
                            </tr>
							<tr>
                                <th><label for="app_mem_birth_yyyy">생년월일</label></th>
                                <td colspan="4" class="birth">
									<span>
										<select id="app_mem_birth_yyyy" name="app_mem_birth_yyyy" title="연도 선택" onchange="getAppDpt();">
										
										<option value="2004" >2004</option>
										
										<option value="2003" >2003</option>
										
										<option value="2002" >2002</option>
										
										<option value="2001" >2001</option>
										
										<option value="2000" >2000</option>
										
										<option value="1999" >1999</option>
										
										<option value="1998" >1998</option>
										
										<option value="1997" >1997</option>
										
										<option value="1996" >1996</option>
										
										<option value="1995" >1995</option>
										
										<option value="1994" >1994</option>
										
										<option value="1993" >1993</option>
										
										<option value="1992" >1992</option>
										
										<option value="1991" >1991</option>
										
										<option value="1990" >1990</option>
										
										<option value="1989" >1989</option>
										
										<option value="1988" >1988</option>
										
										<option value="1987" >1987</option>
										
										<option value="1986" >1986</option>
										
										<option value="1985">1985</option>
										
										<option value="1984" selected>1984</option>
										
										<option value="1983" >1983</option>
										
										<option value="1982" >1982</option>
										
										<option value="1981" >1981</option>
										
										<option value="1980" >1980</option>
										
										<option value="1979" >1979</option>
										
										<option value="1978" >1978</option>
										
										<option value="1977" >1977</option>
										
										<option value="1976" >1976</option>
										
										<option value="1975" >1975</option>
										
										<option value="1974" >1974</option>
										
										<option value="1973" >1973</option>
										
										<option value="1972" >1972</option>
										
										<option value="1971" >1971</option>
										
										<option value="1970" >1970</option>
										
										<option value="1969" >1969</option>
										
										<option value="1968" >1968</option>
										
										<option value="1967" >1967</option>
										
										<option value="1966" >1966</option>
										
										<option value="1965" >1965</option>
										
										<option value="1964" >1964</option>
										
										<option value="1963" >1963</option>
										
										<option value="1962" >1962</option>
										
                                        </select>
									</span>
									<em>년</em>
									<span>
										<select id="app_mem_birth_mm" name="app_mem_birth_mm" title="월 선택">
										
										<option value="1" >1</option>
										
										<option value="2" >2</option>
										
										<option value="3" >3</option>
										
										<option value="4" >4</option>
										
										<option value="5" >5</option>
										
										<option value="6" >6</option>
										
										<option value="7" >7</option>
										
										<option value="8" >8</option>
										
										<option value="9" >9</option>
										
										<option value="10" selected>10</option>
										
										<option value="11" >11</option>
										
										<option value="12" >12</option>
										
                                        </select>
									</span>
									<em>월</em>
									<span>
										<select id="app_mem_birth_dd" name="app_mem_birth_dd" title="일 선택">
										
										<option value="1" >1</option>
										
										<option value="2" >2</option>
										
										<option value="3" >3</option>
										
										<option value="4" >4</option>
										
										<option value="5" >5</option>
										
										<option value="6" >6</option>
										
										<option value="7" >7</option>
										
										<option value="8" >8</option>
										
										<option value="9" >9</option>
										
										<option value="10" selected>10</option>
										
										<option value="11" >11</option>
										
										<option value="12" >12</option>
										
										<option value="13" >13</option>
										
										<option value="14" >14</option>
										
										<option value="15" >15</option>
										
										<option value="16" >16</option>
										
										<option value="17" >17</option>
										
										<option value="18" >18</option>
										
										<option value="19" >19</option>
										
										<option value="20" >20</option>
										
										<option value="21" >21</option>
										
										<option value="22" >22</option>
										
										<option value="23" >23</option>
										
										<option value="24" >24</option>
										
										<option value="25" >25</option>
										
										<option value="26" >26</option>
										
										<option value="27" >27</option>
										
										<option value="28" >28</option>
										
										<option value="29" >29</option>
										
										<option value="30" >30</option>
										
										<option value="31" >31</option>
										
                                        </select>
									</span>
									<em>일</em><br><br>
									<font color="red">* 2003, 2004년생은 교정직, 보호직 직렬 선택이 불가합니다.</font>
								</td>
                            </tr>
							<tr>
								<th><label>지원예정 <br class="mo_for">직렬 및 지역</label></th>
								<td colspan="4" class="area">
									<div>
										<strong>직렬</strong>
										<div>
											<span>
												<select id="mem_app_dpt" name="mem_app_dpt" title="직렬 선택" onchange="getAppArea()">
													<option value="">직렬</option>
												</select>
											</span>
										</div>
									</div>
									<div id="div_app_area" name="div_app_area" style="display:none;">
										<strong id="txt_app_area1">지역1</strong>
										<div>
											<span>
												<select id="mem_app_area" name="mem_app_area" title="지역 선택" onchange="getAppArea2()">
													<option value="">지역1</option>
												</select>
											</span>
										</div>
									</div>
									<div id="div_app_area2" name="div_app_area2">
										<strong id="txt_app_area2">지역</strong>
										<div>
											<span>
												<select id="mem_app_area2" name="mem_app_area2" title="지역2 선택" onchange="getChoiceSubj();">
													<option value="">지역</option>
												</select>
											</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
                                <th><label>응시과목</label></th>
                                <td colspan="4" class="academy"  id="td_mem_field">
									직렬 및 지역을 선택해주세요.
								</td>
                            </tr>
							<tr>
                                <th rowspan="3"><label for="app_mem_addscr_emp_suport_0">가산점 <br class="mo_for">입력</label></th>
								<td colspan="3" class="addPoint">
									<div>
										<strong>취업지원 대상자</strong>
										<div>
											<label><input type="radio" id="app_mem_addscr_emp_suport_0" name="app_mem_addscr_emp_suport" value="0" />없음</label>
											<label><input type="radio" id="app_mem_addscr_emp_suport_10" name="app_mem_addscr_emp_suport" value="10" />10%</label>
											<label><input type="radio" id="app_mem_addscr_emp_suport_5" name="app_mem_addscr_emp_suport" value="5" />5%</label>
										</div>
									</div>
								</td>
								<td class="tC" rowspan="2" >
									취업지원대상자 또는 <br class="mb"/>의사상자  등 가점은 <br class="mb"/>1개만 적용
								</td>
                            </tr>
							<tr>
								<td colspan="3" class="addPoint">
									<div>
										<strong>의사상자 등</strong>
										<div>
											<label><input type="radio" id="app_mem_addscr_casualty_0" name="app_mem_addscr_casualty" value="0" />없음</label>
											<label><input type="radio" id="app_mem_addscr_casualty_5" name="app_mem_addscr_casualty" value="5" />5%</label>
											<label><input type="radio" id="app_mem_addscr_casualty_3" name="app_mem_addscr_casualty" value="3" />3%</label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="3" class="addPoint">
									<div>
										<strong>직렬별 가산대상<br class="mo_for">자격증 소지자</strong>
										<div>
											<label><input type="radio" id="app_mem_addscr_license_0" name="app_mem_addscr_license" value="0" title="직렬별 자격증 없음" >없음</label>
											<label><input type="radio" id="app_mem_addscr_license_5" name="app_mem_addscr_license" value="5" title="직렬별 자격증 5%" >5%</label>
											<label><input type="radio" id="app_mem_addscr_license_3" name="app_mem_addscr_license" value="3" title="직렬별 자격증 3%" >3%</label>
										</div>
									</div>
								</td>
								<td></td>
							</tr>
						</table>
					</div>
					<!-- 시험 응시 정보 E -->
                </div>
				<!-- 개인정보 이용 공지 -->
				<div class="privacy_wrap">
					<!-- <strong class="tit">개인정보 수집 및 활용 동의 안내</strong> -->
					<div class="privacy_box">
						<strong>1. 개인정보 수집 이용 목적</strong>
						<span>- 제1회 메가공무원 전국 모의고사 신청 접수에 따른 절차 진행  및 문의사항 응대</span>
						<span>- 채점, 성적처리 후 통계 및 마케팅 등에 활용</span>
						
						<strong>2. 개인정보 수집 항목</strong>
						<span>- 이름, 휴대폰 번호, 성별, 생년월일, 지원 예정 지역 및 직렬,  응시과목, 가산점</span>
						
						<strong>3. 개인정보 보유 기간</strong>
						<span>- 회원 탈퇴 시까지 보유</span>

						<strong>4. 개인정보제공 동의 거부 권리 및 동의 거부에 따른 불이익</strong>
						<span>- 귀하는 개인정보제공 동의를 거부할 수 있으며 동의 거부에 따른 불이익은 없으나, 위 제공 사항은 전국 모의고사 응시에 반드시 필요한 사항으로,  거부하실 경우 해당 서비스 이용이 불가함을 안내 드립니다.</span>
					</div>
				</div>
				<p class="privacy_check">
					<input type="checkbox" id="app_mem_agree_yn" name="app_mem_agree_yn" value="Y">
					<label for="app_mem_agree_yn">개인정보 수집 및 이용에 동의합니다. (필수)</label>
				</p>
				<!-- // 개인정보 이용 공지 -->
				<div class="btnbox">
					<a href="javascript:;" onclick="regX();" class="point" title="저장하기">저장하기</a>
					<!-- <a href="javascript:;" onclick="closeX()" title="닫기">닫기</a> -->
				</div>
            </form>
			<!-- 신청서 form E -->
        </div>
    </div>
<script type="text/javascript" src="/common/js/common_k.js?now=2022-11-28 오후 2:53:50"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="/common/js/jQuery/jquery-1.12.1.min.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="/common/js/jQuery/jquery-3.3.1.min.js"></script>
<!--<![endif]-->
<script src="/common/js/jQuery/jquery-migrate-1.4.1.min.js"></script>
<iframe id="ifrm" name="ifrm" style="width:0px;height:0px"></iframe>
<script>
	//document.domain = "megagong.net"
	function closeX() {
		if(confirm("작성하신 정보가 저장되지 않습니다. 닫으시겠습니까?")) {
			self.close();
		}
	}
	function regX() {
		var app_mem_name = $.trim($("#app_mem_name").val())
		if(app_mem_name=="") {
			alert("이름을 입력해 주세요");
			return false;
		}

		var app_mem_hp_no = $.trim($("#app_mem_hp_no").val());
		if(app_mem_hp_no=="") {
			alert("휴대폰 번호를 입력해 주세요.");
			return false;
		} if( (app_mem_hp_no.length != 10 && app_mem_hp_no.length != 11) || !chkHpNo(app_mem_hp_no) ) {
			alert("휴대폰 번호를 확인해 주세요.");
			return false;
		}

		var app_mem_sex = $("input[name=app_mem_sex]:checked").val();
		if($("input[name=app_mem_sex]:checked").length == 0) {
			alert("성별을 선택해 주세요.");
			return false;
		}

		var app_mem_birth_yyyy = $("#app_mem_birth_yyyy").val();
		var app_mem_birth_mm = $("#app_mem_birth_mm").val();
		var app_mem_birth_dd = $("#app_mem_birth_dd").val();
		if(app_mem_birth_yyyy=="" || app_mem_birth_mm=="" || app_mem_birth_dd=="") {
			alert("생년월일을 선택해 주세요.");
			return false;
		}

		var mem_app_dpt = $("#mem_app_dpt").val();
		var mem_app_area = $("#mem_app_area").val();
		var mem_app_area2 = $("#mem_app_area2").val();

		if(mem_app_dpt=="" || mem_app_area=="" || mem_app_area2=="") {
			alert("지원 예정 직렬 및 지역을 선택해 주세요.");
			return false;
		}
		
		if($("input[name=app_mem_addscr_emp_suport]:checked").length == 0) {
			alert("취업지원 대상자 가산점을 선택해 주세요.");
			return false;
		}

		if($("input[name=app_mem_addscr_casualty]:checked").length == 0) {
			alert("의사상자 가산점을 선택해 주세요.");
			return false;
		}

		if($("input[name=app_mem_addscr_license]:checked").length == 0) {
			alert("자격증 가산점을 선택해 주세요.");
			return false;
		}

		if($("input[name=app_mem_agree_yn]").prop("checked")==false) {
			alert("개인정보 수집 및 이용에 동의해 주세요.");
			return false;
		}

		if(confirm("응시정보 입력 후에는 수정이 불가합니다.\n저장하시겠습니까?")) {
			var f = document.getElementById("form1");
			f.action = "./pop_apply_proc.asp";
			f.target = "ifrm";
			//f.target = "_blank"
			f.submit();
		}
	}
	function completeX() {
		opener.document.location.reload();

		self.close();
		setTimeout(function() {
			self.close();
		}, 1000);
	}	
	//직렬리스트
	function getAppDpt() {
		$("#div_app_area").hide();
		$("#div_app_area2").show();
		$("#txt_app_area2").html("지역").change();

		var cur_sex = $("input[type=radio][name=app_mem_sex]:checked").val();
		var app_mem_birth_yyyy = $("#app_mem_birth_yyyy").val();
		//alert(app_mem_birth_yyyy);
		
		$.getJSON("./get_info.asp",{"mode":"get_app_dpt","app_mem_birth_yyyy":app_mem_birth_yyyy,"sex_cd":cur_sex},function(data) {
			var html = "<option value=\"\">직렬</option>";
			if(data.result == "succ") {
				//html = data.data.length>1 ? "<option value=\"\">지역</option>" : "";
				for(var i=0;i<data.data.length;i++) {
					//if(data.data[i].cd != "" ) {
					var tmpSelected = (data.data[i].cd == "") ? "selected" : "";
					html += "<option value=\""+data.data[i].cd+"\" "+tmpSelected+" >"+data.data[i].nm+"</option>";
					//}
				}
			}
			$("#mem_app_dpt").html(html).change();
		});
	}
	//지역1
	function getAppArea() {
		var cur_sex = $("input[type=radio][name=app_mem_sex]:checked").val();
		var cur_dpt = $("#mem_app_dpt").val();
				
		$.getJSON("./get_info.asp",{"mode":"get_app_area","ei":"","sex_cd":cur_sex,"dpt_cd":cur_dpt},function(data) {
			var html = "<option value=\"\">지역</option>";
			if(data.result == "succ") {
				html = data.data.length>1 ? "<option value=\"\">지역</option>" : "";
				var gbn_cd = "1";	// 국가직
				for(var i=0;i<data.data.length;i++) {
					//if(data.data[i].cd != "" ) {
					var tmpSelected = (data.data[i].cd == "") ? "selected" : "";
					html += "<option value=\""+data.data[i].cd+"\" "+tmpSelected+" >"+data.data[i].nm+"</option>";
					//}

					gbn_cd = data.data[i].gcd;
				}

				if (gbn_cd == "1") {
					$("#div_app_area").hide();
					$("#txt_app_area2").html("지역").change();
				}
				else {
					$("#div_app_area").show();
					$("#txt_app_area1").html("지역1").change();
					$("#txt_app_area2").html("지역2").change();					
				}
			}
			$("#mem_app_area").html(html).change();
		});

	}

	function getAppArea2() {
		var cur_sex = $("input[type=radio][name=app_mem_sex]:checked").val();
		var cur_dpt = $("#mem_app_dpt").val();
		var cur_area1 = $("#mem_app_area").val();

		$.getJSON("./get_info.asp",{"mode":"get_app_area2","ei":"","sex_cd":cur_sex,"dpt_cd":cur_dpt,"cur_area1":cur_area1},function(data) {
			var html = "<option value=\"\">지역</option>";
			if(data.result == "succ") {
				var ckcd = "000";
				var gcd = "1";
				html = data.data.length>1 ? "<option value=\"\">지역</option>" : "";
				for(var i=0;i<data.data.length;i++) {
					//if(data.data[i].cd != "" ) {
					var tmpSelected = (data.data[i].cd == "") ? "selected" : "";
					html += "<option value=\""+data.data[i].cd+"\" "+tmpSelected+" >"+data.data[i].nm+"</option>";
					//}
					ckcd = data.data[i].cd;
					gcd = data.data[i].gcd;
				}

				if (gcd == "2") {
					if (ckcd == "000") {
						$("#div_app_area2").hide();
						$("#txt_app_area1").html("지역").change();
					}
					else {
						$("#div_app_area2").show();
						$("#txt_app_area1").html("지역1").change();
					}
						
				} else {
					$("#div_app_area2").show();
				}
			}
			$("#mem_app_area2").html(html).change();
		});
	}

	function getChoiceSubj() {
		var cur_dpt = $("#mem_app_dpt").val();
		var cur_area1 = $("#mem_app_area").val();
		var cur_area2 = $("#mem_app_area2").val();

		$.getJSON("./get_info.asp",{"mode":"get_choice_subj","dpt_cd":cur_dpt,"cur_area1":cur_area1,"cur_area2":cur_area2},function(data) {
			html = "";
			if(data.result == "succ") {				
				for(var i=0;i<data.data.length;i++) {
					html += data.data[i].nm;
					if (i < data.data.length-1) 
						html += ", ";
				}
			}
			else {
				html = data.msg;
			}

			$("#td_mem_field").html(html);
		});
	}
</script>
<script type="text/javascript">
	$("input[type=radio][name=app_mem_sex]").on("change",function() {
		getAppDpt();
	});
//취업지원 대상자 선택시 의사상자 등 없음 선택 후 disable
	$("input[type=radio][name=app_mem_addscr_emp_suport]").on("change",function() {
		var app_mem_addscr_emp_suport = $(':radio[name="app_mem_addscr_emp_suport"]:checked').val();
		if (app_mem_addscr_emp_suport != 0) {
			$("input:radio[name='app_mem_addscr_casualty']:radio[value='0']").prop("checked", true);
			$("input:radio[name='app_mem_addscr_casualty']").attr('disabled',true);
		}else{
			$("input:radio[name='app_mem_addscr_casualty']").attr('disabled',false);
		}
	});
//의사상자 선택시 취업지원 대상자 없음 선택 후 disable
	$("input[type=radio][name=app_mem_addscr_casualty]").on("change",function() {
		var app_mem_addscr_casualty = $(':radio[name="app_mem_addscr_casualty"]:checked').val();
		if (app_mem_addscr_casualty != 0) {
			$("input:radio[name='app_mem_addscr_emp_suport']:radio[value='0']").prop("checked", true);
			$("input:radio[name='app_mem_addscr_emp_suport']").attr('disabled',true);
		}else{
			$("input:radio[name='app_mem_addscr_emp_suport']").attr('disabled',false);
		}
	});

	getAppDpt();
</script>
	<div style="display:none;" > 


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-124063414-6"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-124063414-6', { 'optimize_id': 'OPT-5P4T5N6'});
</script>

<!-- Global site tag (gtag.js) - Google Ads: 713077261 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-713077261"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-713077261');
</script>

<!-- Global site tag (gtag.js) - Google Ads: 778199814 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-778199814"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-778199814');
</script>


<!-- Facebook Pixel Code -->
<script>
 !function(f,b,e,v,n,t,s)
 {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
 n.callMethod.apply(n,arguments):n.queue.push(arguments)};
 if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
 n.queue=[];t=b.createElement(e);t.async=!0;
 t.src=v;s=b.getElementsByTagName(e)[0];
 s.parentNode.insertBefore(t,s)}(window, document,'script',
 'https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '321208182048738');
 fbq('track', 'PageView');
</script>
<noscript><img height='1' width='1' style='display:none' src='https://www.facebook.com/tr?id=321208182048738&ev=PageView&noscript=1' /></noscript>
<!-- End Facebook Pixel Code -->



<!-- Enliple Tracker Start -->
<script type="text/javascript">
	(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};
	n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";
	t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
	enp('create', 'common', 'gongcamp', { device: 'B' });  // W:웹, M: 모바일, B: 반응형
	enp('send', 'common', 'gongcamp');
</script>
<!-- Enliple Tracker End -->
</div>

</body>
</html>
