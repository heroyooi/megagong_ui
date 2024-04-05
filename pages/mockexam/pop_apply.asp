

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>��1ȸ �ް������� ���� ���ǰ�� - �������� �Է�</title>
	<link type="text/css" rel="stylesheet" href="/common/css/font_NotoSans_kr.css">
    <link type="text/css" rel="stylesheet" href="./pop_style.css">
</head>
<body>
    <div id="pop_wrap" class="pop_wrap">
        <div class="cont">
			<!-- ��û�� form S -->
            <form id="form1" name="form1" method="post">
				<input type="hidden" id="ei" name="ei" value=""/>
                <div class="apply_zone">
					<h1 class="top_title"><strong>��1ȸ �ް������� ���� ���ǰ�� ��û</strong></h1>
					<!-- ���� ���� ���� S -->
					<div class="write_info ">
						<p class="info_tit">
							<strong>���� ���� ����</strong>
						</p>						
						<table class="t_border1" title="���� ���� ����">
							<colgroup>
                                <col width="20%"/>
                                <col width="15%"/>
								<col width="15%"/>
								<col width="20%"/>
								<col width="30%"/>
                            </colgroup>
							<tr>
                                <th><label for="app_mem_name">�̸�</label></th>
                                <td colspan="4" class="onlyInp">
									<span><input type="text" id="app_mem_name" name="app_mem_name" placeholder="ȫ�浿"  value="ȫ�浿" title="�̸� �Է�"></span>
								</td>
                            </tr>
							<tr>
                                <th><label for="app_mem_hp_no">�޴���<br class="mo_for">��ȣ</label></th>
                                <td colspan="4" class="onlyInp">
									<span><input type="text" id="app_mem_hp_no" name="app_mem_hp_no" placeholder="(�� ��-������ �Է��� �ּ���)"  value="01012341234" title="�޴��� ��ȣ �Է�"></span>
								</td>
                            </tr>							
							<tr>
								<th><label for="app_mem_sex1">����</label></th>
                                <td colspan="4" class="gender">
									<label><input type="radio" id="app_mem_sex1" name="app_mem_sex" value="1" checked/> ����</label>
									<label><input type="radio" id="app_mem_sex2" name="app_mem_sex" value="2" /> ����</label>
								</td>
                            </tr>
							<tr>
                                <th><label for="app_mem_birth_yyyy">�������</label></th>
                                <td colspan="4" class="birth">
									<span>
										<select id="app_mem_birth_yyyy" name="app_mem_birth_yyyy" title="���� ����" onchange="getAppDpt();">
										
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
									<em>��</em>
									<span>
										<select id="app_mem_birth_mm" name="app_mem_birth_mm" title="�� ����">
										
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
									<em>��</em>
									<span>
										<select id="app_mem_birth_dd" name="app_mem_birth_dd" title="�� ����">
										
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
									<em>��</em><br><br>
									<font color="red">* 2003, 2004����� ������, ��ȣ�� ���� ������ �Ұ��մϴ�.</font>
								</td>
                            </tr>
							<tr>
								<th><label>�������� <br class="mo_for">���� �� ����</label></th>
								<td colspan="4" class="area">
									<div>
										<strong>����</strong>
										<div>
											<span>
												<select id="mem_app_dpt" name="mem_app_dpt" title="���� ����" onchange="getAppArea()">
													<option value="">����</option>
												</select>
											</span>
										</div>
									</div>
									<div id="div_app_area" name="div_app_area" style="display:none;">
										<strong id="txt_app_area1">����1</strong>
										<div>
											<span>
												<select id="mem_app_area" name="mem_app_area" title="���� ����" onchange="getAppArea2()">
													<option value="">����1</option>
												</select>
											</span>
										</div>
									</div>
									<div id="div_app_area2" name="div_app_area2">
										<strong id="txt_app_area2">����</strong>
										<div>
											<span>
												<select id="mem_app_area2" name="mem_app_area2" title="����2 ����" onchange="getChoiceSubj();">
													<option value="">����</option>
												</select>
											</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
                                <th><label>���ð���</label></th>
                                <td colspan="4" class="academy"  id="td_mem_field">
									���� �� ������ �������ּ���.
								</td>
                            </tr>
							<tr>
                                <th rowspan="3"><label for="app_mem_addscr_emp_suport_0">������ <br class="mo_for">�Է�</label></th>
								<td colspan="3" class="addPoint">
									<div>
										<strong>������� �����</strong>
										<div>
											<label><input type="radio" id="app_mem_addscr_emp_suport_0" name="app_mem_addscr_emp_suport" value="0" />����</label>
											<label><input type="radio" id="app_mem_addscr_emp_suport_10" name="app_mem_addscr_emp_suport" value="10" />10%</label>
											<label><input type="radio" id="app_mem_addscr_emp_suport_5" name="app_mem_addscr_emp_suport" value="5" />5%</label>
										</div>
									</div>
								</td>
								<td class="tC" rowspan="2" >
									������������ �Ǵ� <br class="mb"/>�ǻ����  �� ������ <br class="mb"/>1���� ����
								</td>
                            </tr>
							<tr>
								<td colspan="3" class="addPoint">
									<div>
										<strong>�ǻ���� ��</strong>
										<div>
											<label><input type="radio" id="app_mem_addscr_casualty_0" name="app_mem_addscr_casualty" value="0" />����</label>
											<label><input type="radio" id="app_mem_addscr_casualty_5" name="app_mem_addscr_casualty" value="5" />5%</label>
											<label><input type="radio" id="app_mem_addscr_casualty_3" name="app_mem_addscr_casualty" value="3" />3%</label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="3" class="addPoint">
									<div>
										<strong>���ĺ� ������<br class="mo_for">�ڰ��� ������</strong>
										<div>
											<label><input type="radio" id="app_mem_addscr_license_0" name="app_mem_addscr_license" value="0" title="���ĺ� �ڰ��� ����" >����</label>
											<label><input type="radio" id="app_mem_addscr_license_5" name="app_mem_addscr_license" value="5" title="���ĺ� �ڰ��� 5%" >5%</label>
											<label><input type="radio" id="app_mem_addscr_license_3" name="app_mem_addscr_license" value="3" title="���ĺ� �ڰ��� 3%" >3%</label>
										</div>
									</div>
								</td>
								<td></td>
							</tr>
						</table>
					</div>
					<!-- ���� ���� ���� E -->
                </div>
				<!-- �������� �̿� ���� -->
				<div class="privacy_wrap">
					<!-- <strong class="tit">�������� ���� �� Ȱ�� ���� �ȳ�</strong> -->
					<div class="privacy_box">
						<strong>1. �������� ���� �̿� ����</strong>
						<span>- ��1ȸ �ް������� ���� ���ǰ�� ��û ������ ���� ���� ����  �� ���ǻ��� ����</span>
						<span>- ä��, ����ó�� �� ��� �� ������ � Ȱ��</span>
						
						<strong>2. �������� ���� �׸�</strong>
						<span>- �̸�, �޴��� ��ȣ, ����, �������, ���� ���� ���� �� ����,  ���ð���, ������</span>
						
						<strong>3. �������� ���� �Ⱓ</strong>
						<span>- ȸ�� Ż�� �ñ��� ����</span>

						<strong>4. ������������ ���� �ź� �Ǹ� �� ���� �źο� ���� ������</strong>
						<span>- ���ϴ� ������������ ���Ǹ� �ź��� �� ������ ���� �źο� ���� �������� ������, �� ���� ������ ���� ���ǰ�� ���ÿ� �ݵ�� �ʿ��� ��������,  �ź��Ͻ� ��� �ش� ���� �̿��� �Ұ����� �ȳ� �帳�ϴ�.</span>
					</div>
				</div>
				<p class="privacy_check">
					<input type="checkbox" id="app_mem_agree_yn" name="app_mem_agree_yn" value="Y">
					<label for="app_mem_agree_yn">�������� ���� �� �̿뿡 �����մϴ�. (�ʼ�)</label>
				</p>
				<!-- // �������� �̿� ���� -->
				<div class="btnbox">
					<a href="javascript:;" onclick="regX();" class="point" title="�����ϱ�">�����ϱ�</a>
					<!-- <a href="javascript:;" onclick="closeX()" title="�ݱ�">�ݱ�</a> -->
				</div>
            </form>
			<!-- ��û�� form E -->
        </div>
    </div>
<script type="text/javascript" src="/common/js/common_k.js?now=2022-11-28 ���� 2:53:50"></script>
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
		if(confirm("�ۼ��Ͻ� ������ ������� �ʽ��ϴ�. �����ðڽ��ϱ�?")) {
			self.close();
		}
	}
	function regX() {
		var app_mem_name = $.trim($("#app_mem_name").val())
		if(app_mem_name=="") {
			alert("�̸��� �Է��� �ּ���");
			return false;
		}

		var app_mem_hp_no = $.trim($("#app_mem_hp_no").val());
		if(app_mem_hp_no=="") {
			alert("�޴��� ��ȣ�� �Է��� �ּ���.");
			return false;
		} if( (app_mem_hp_no.length != 10 && app_mem_hp_no.length != 11) || !chkHpNo(app_mem_hp_no) ) {
			alert("�޴��� ��ȣ�� Ȯ���� �ּ���.");
			return false;
		}

		var app_mem_sex = $("input[name=app_mem_sex]:checked").val();
		if($("input[name=app_mem_sex]:checked").length == 0) {
			alert("������ ������ �ּ���.");
			return false;
		}

		var app_mem_birth_yyyy = $("#app_mem_birth_yyyy").val();
		var app_mem_birth_mm = $("#app_mem_birth_mm").val();
		var app_mem_birth_dd = $("#app_mem_birth_dd").val();
		if(app_mem_birth_yyyy=="" || app_mem_birth_mm=="" || app_mem_birth_dd=="") {
			alert("��������� ������ �ּ���.");
			return false;
		}

		var mem_app_dpt = $("#mem_app_dpt").val();
		var mem_app_area = $("#mem_app_area").val();
		var mem_app_area2 = $("#mem_app_area2").val();

		if(mem_app_dpt=="" || mem_app_area=="" || mem_app_area2=="") {
			alert("���� ���� ���� �� ������ ������ �ּ���.");
			return false;
		}
		
		if($("input[name=app_mem_addscr_emp_suport]:checked").length == 0) {
			alert("������� ����� �������� ������ �ּ���.");
			return false;
		}

		if($("input[name=app_mem_addscr_casualty]:checked").length == 0) {
			alert("�ǻ���� �������� ������ �ּ���.");
			return false;
		}

		if($("input[name=app_mem_addscr_license]:checked").length == 0) {
			alert("�ڰ��� �������� ������ �ּ���.");
			return false;
		}

		if($("input[name=app_mem_agree_yn]").prop("checked")==false) {
			alert("�������� ���� �� �̿뿡 ������ �ּ���.");
			return false;
		}

		if(confirm("�������� �Է� �Ŀ��� ������ �Ұ��մϴ�.\n�����Ͻðڽ��ϱ�?")) {
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
	//���ĸ���Ʈ
	function getAppDpt() {
		$("#div_app_area").hide();
		$("#div_app_area2").show();
		$("#txt_app_area2").html("����").change();

		var cur_sex = $("input[type=radio][name=app_mem_sex]:checked").val();
		var app_mem_birth_yyyy = $("#app_mem_birth_yyyy").val();
		//alert(app_mem_birth_yyyy);
		
		$.getJSON("./get_info.asp",{"mode":"get_app_dpt","app_mem_birth_yyyy":app_mem_birth_yyyy,"sex_cd":cur_sex},function(data) {
			var html = "<option value=\"\">����</option>";
			if(data.result == "succ") {
				//html = data.data.length>1 ? "<option value=\"\">����</option>" : "";
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
	//����1
	function getAppArea() {
		var cur_sex = $("input[type=radio][name=app_mem_sex]:checked").val();
		var cur_dpt = $("#mem_app_dpt").val();
				
		$.getJSON("./get_info.asp",{"mode":"get_app_area","ei":"","sex_cd":cur_sex,"dpt_cd":cur_dpt},function(data) {
			var html = "<option value=\"\">����</option>";
			if(data.result == "succ") {
				html = data.data.length>1 ? "<option value=\"\">����</option>" : "";
				var gbn_cd = "1";	// ������
				for(var i=0;i<data.data.length;i++) {
					//if(data.data[i].cd != "" ) {
					var tmpSelected = (data.data[i].cd == "") ? "selected" : "";
					html += "<option value=\""+data.data[i].cd+"\" "+tmpSelected+" >"+data.data[i].nm+"</option>";
					//}

					gbn_cd = data.data[i].gcd;
				}

				if (gbn_cd == "1") {
					$("#div_app_area").hide();
					$("#txt_app_area2").html("����").change();
				}
				else {
					$("#div_app_area").show();
					$("#txt_app_area1").html("����1").change();
					$("#txt_app_area2").html("����2").change();					
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
			var html = "<option value=\"\">����</option>";
			if(data.result == "succ") {
				var ckcd = "000";
				var gcd = "1";
				html = data.data.length>1 ? "<option value=\"\">����</option>" : "";
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
						$("#txt_app_area1").html("����").change();
					}
					else {
						$("#div_app_area2").show();
						$("#txt_app_area1").html("����1").change();
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
//������� ����� ���ý� �ǻ���� �� ���� ���� �� disable
	$("input[type=radio][name=app_mem_addscr_emp_suport]").on("change",function() {
		var app_mem_addscr_emp_suport = $(':radio[name="app_mem_addscr_emp_suport"]:checked').val();
		if (app_mem_addscr_emp_suport != 0) {
			$("input:radio[name='app_mem_addscr_casualty']:radio[value='0']").prop("checked", true);
			$("input:radio[name='app_mem_addscr_casualty']").attr('disabled',true);
		}else{
			$("input:radio[name='app_mem_addscr_casualty']").attr('disabled',false);
		}
	});
//�ǻ���� ���ý� ������� ����� ���� ���� �� disable
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
	enp('create', 'common', 'gongcamp', { device: 'B' });  // W:��, M: �����, B: ������
	enp('send', 'common', 'gongcamp');
</script>
<!-- Enliple Tracker End -->
</div>

</body>
</html>
