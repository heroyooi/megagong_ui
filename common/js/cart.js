////////////////////////////////////////////////////////////////
//함수명	: Infoset
//입력		: 기존정보/신규정보
//출력		: 없음
//설명		: 결제 페이지에서 배송지 주소 찾는 부분
//사용법	: 
////////////////////////////////////////////////////////////////
function Infoset(swch)	
{
	if(swch==0) 
	{
		myform.txtName.value = myform.hidName.value; 
		myform.txtTel.value = myform.hidTel.value; 
		myform.txtHp.value = myform.hidHp.value; 
		myform.txtEmail.value = myform.hidEmail.value; 
		myform.txtZipNo1.value = myform.hidZipNo1.value; 
		myform.txtZipNo2.value = myform.hidZipNo2.value; 
		myform.txtAddr1.value = myform.hidAddr1.value; 
		//myform.txtAddr2.value = myform.hidAddr2.value; 
		myform.txtName.disabled = true; 
		myform.txtTel.disabled = true; 
		//myform.txtHp.disabled = true; 
		myform.txtEmail.disabled = true; 
		myform.txtZipNo1.disabled = false; 
		myform.txtZipNo2.disabled = false; 
		myform.txtAddr1.disabled = false; 
		myform.txtAddr2.disabled = false;  
	}
	else
	{
		myform.txtName.value  = ""; 
		myform.txtTel.value = ""; 
		myform.txtHp.value  = ""; 
		myform.txtEmail.value = ""; 
		myform.txtZipNo1.value = ""; 
		myform.txtZipNo2.value = ""; 
		myform.txtAddr1.value = ""; 
		myform.txtAddr2.value = ""; 
		myform.txtName.disabled = false; 
		myform.txtTel.disabled = false; 
		myform.txtHp.disabled = false; 
		myform.txtEmail.disabled = false; 
		myform.txtZipNo1.disabled = false; 
		myform.txtZipNo2.disabled = false; 
		myform.txtAddr1.disabled = false; 
		myform.txtAddr2.disabled = false;  
	}
}


////////////////////////////////////////////////////////////////
//함수명	: FormatToNum
//설명		: 금액 콤마 편집
//입력		: 오브젝트
//출력		: 금액 콤마 편집 후 리턴
//사용법	: 
////////////////////////////////////////////////////////////////
function FormatToNum(objtext) { 
    str = objtext.value;
    var key = String.fromCharCode(event.keyCode), dotRelationship, allowDigit;
	if (escape(key) != "%09") {

	    for(i=0; i<((str.length)/3); i++) { 
	   		 str = ""+ str.replace(",","") +""; 
	        }
	    
	    var retValue = "";
		
		
	    for(i=0; i<str.length; i++) { 
	        if(i > 0 && (i%3)==0) { 
		        retValue = str.charAt(str.length - i -1) + "," + retValue; 
	            } else { 
	    		          retValue = str.charAt(str.length - i -1) + retValue; 
	            	   } 
	        } 
		
		objtext.value = retValue;
	}
	return; 
}	

////////////////////////////////////////////////////////////////
//함수명	: frmpaysend
//설명		: 결제 페이지에서 지불 수단별로 이동하는 부분 
//입력		: 기존정보/신규정보
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmpaysend()
{
	var ncash = 0;
	var ExceptYn = "";
	
	//금액이 0원인 경우 오류 표시
	ncash = parseFloat(document.myform.price.value.replace(",",""))
	ExceptYn = document.myform.ExceptYn.value

	if (ncash==0 && ExceptYn==""){
		alert("신청할 데이터가 없습니다.");
		return;
	}
	
	if(myform.rdoinfo[0].checked) //회원정보와 동일
	{
		if (myform.txtTel.value==""){alert("전화번호가 없습니다.\n\n회원 기본 정보를 수정 후 입력해 주세요!");return;};
		if (myform.txtHp.value==""){alert("핸드폰번호를 입력해 주세요!");return;};
		if (myform.txtZipNo1.value==""||myform.txtZipNo2.value==""){alert("우편번호를 선택해 주세요!");return;};
		if (myform.txtAddr1.value==""){alert("주소를 입력해 주세요!");return;};
		if (myform.txtAddr2.value==""){alert("주소를 입력해 주세요!");return;};
	}
	else if(myform.rdoinfo[1].checked) //회원정보와 동일 
	{
		if (myform.txtName.value==""){alert("이름 입력해 주세요!");return;};
		if (myform.txtTel.value==""){alert("전화번호를 입력해 주세요!");return;};		
		if (myform.txtHp.value==""){alert("핸드폰번호를 입력해 주세요!");return;};
		if (myform.txtEmail.value==""){alert("메일 주소를 입력해 주세요!");return;};
		if (myform.txtZipNo1.value==""||myform.txtZipNo2.value==""){alert("우편번호를 선택해 주세요!");return;};
		if (myform.txtAddr1.value==""){alert("주소를 입력해 주세요!");return;};
		if (myform.txtAddr2.value==""){alert("주소를 입력해 주세요!");return;};
	}
	else if (myform.BookAmt.value!=0)	//교재비가 있는데 주소 정보를 입력하지 않은 경우
	{
		alert("배송지 정보를 입력해 주세요!");return;
	}
	
	myform.txtName.disabled = false; 
	myform.txtTel.disabled = false; 
	myform.txtHp.disabled = false; 
	myform.txtEmail.disabled = false; 

	var nPay=0;
	nPay = parseFloat(myform.cash_g.value.replace(",","")) + parseFloat(myform.cash_s.value.replace(",",""))
		
	if(myform.paysys[0].checked)	 //신용카드
	{
		//myform.action="cart_account_20_card.asp"; 
		//myform.action="cart_account_20_card_kcp.asp";
		myform.action="cart_account_20_card_Dacom.asp";
	}
	else if(myform.paysys[1].checked) //인터넷계좌이체
	{
		//myform.action="cart_account_10_town.asp"; 
		myform.action="cart_account_10_dacom.asp"; 
	}
	else if(myform.paysys[2].checked) //무통장
	{
		myform.action="cart_account_00_bank.asp"; 
	}
	else 
	{
		//결제할 금액과 입금 선택한 금액이 같을 경우 캐쉬로 결제 처리
		if (ncash==nPay) 
		{
			myform.action="cart_account_30_cash.asp"; 
		}
		else
		{
			alert("지불구분을 선택해 주세요!");return;
		}
	}

	myform.submit();
}

////////////////////////////////////////////////////////////////
//함수명	: frmpaysendbank
//설명		:  강좌/교재 신청 결제 페이지-무통장 결제
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmpaysendbank() { 
	var ncash=0;
	ncash = parseFloat(document.bank.amount.value);
	if (ncash==0){
		alert("신청할 데이터가 없습니다.");
		return;
	}
	else
	{
		myform = document.bank;
		window.open("","Window","width=330,height=430,status=yes,scrollbars=no,resizable=yes,menubar=no");
		myform.action="http://pg.dacom.net/cas/casRequestSA.jsp";		// 리얼 서비스
		//myform.action="http://pg.dacom.net:7080/cas/casRequestSA.jsp";	// 테스트 시
			           
		myform.target="Window";
		
		if(mainfrm.img_pay != undefined){
			mainfrm.img_pay.disabled = true;
		}
		myform.submit();	
	}		
}
////////////////////////////////////////////////////////////////
//함수명	: frmpaysenddacom
//설명		: 강좌/교재 신청 결제 페이지-인터넷 계좌이체(데이콤)
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmpaysenddacom() { 
	var ncash=0;
	//금액이 1000원 이하인 경우 오류 표시
	ncash = parseFloat(document.pay.amount.value);
	if (ncash==0){
		alert("신청할 데이터가 없습니다.");
		return;
	}
	else
	{
		myform = document.pay;
		window.open("","Window","width=330,height=430,status=yes,scrollbars=no,resizable=yes,menubar=no");
		myform.action="http://pg.dacom.net/transfer/transferSelectBank.jsp";		// 리얼 서비스
		//myform.action="http://pg.dacom.net:7080/transfer/transferSelectBank.jsp";	// 테스트 시
			           
		myform.target="Window";

		if(mainfrm.img_pay != undefined){
			mainfrm.img_pay.disabled = true;
		}
		myform.submit();
	}	
}
////////////////////////////////////////////////////////////////
//함수명	: frmbanksenddacom
//설명		: 강좌/교재 신청 결제 페이지-무통장 입금(데이콤)
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmbanksenddacom() { 
	var ncash=0;
	//금액이 1000원 이하인 경우 오류 표시
	ncash = parseFloat(document.pay.amount.value);
	if (ncash==0){
		alert("신청할 데이터가 없습니다.");
		return;
	}
	else
	{
		myform = document.pay;
		window.open("","Window","width=330,height=430,status=yes,scrollbars=no,resizable=yes,menubar=no");
		myform.action="http://pg.dacom.net/cas/casRequestSA.jsp";		// 리얼 서비스
		//myform.action="http://pg.dacom.net:7080/cas/casRequestSA.jsp";	// 테스트 시

		myform.target="Window";				
		frmPay.img_pay.disabled = true;
		myform.submit();
	}	
}
////////////////////////////////////////////////////////////////
//함수명	: frmpaysendtown
//설명		: 강좌/교재 신청 결제 페이지-인터넷 계좌이체
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmpaysendtown() { 
	var ncash=0;
	//금액이 1000원 이하인 경우 오류 표시
	ncash = parseFloat(document.pay.P_AMT.value);
	if (ncash==0){
		alert("신청할 데이터가 없습니다.");
		return;
	}
	else
	{
		myform = document.pay;
		window.name = "BTPG_CLIENT";
		BTPG_WALLET = window.open("", "BTPG_WALLET", "width=450,height=500");
	    	BTPG_WALLET.focus();
		myform.target = "BTPG_WALLET";
		myform.action = "http://pg.banktown.com/mywallet/bank/"; 		
		myform.pay_person.disabled = true;
		myform.submit();
	}	
}

////////////////////////////////////////////////////////////////
//함수명	: frmpaysendcard
//설명		: 강좌/교재 신청 결제 페이지-신용카드
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmpaysendcard() { 
	
/*	if (myform.cardprefix.value=="")	
	{
		alert("카드를 선택해 주세요!")
		myform.cardprefix.focus();
		return;
	}
	if (myform.cardprefix.value=="3")	//기타
	{		
		frmcartsendcard();				//데이콤 결제 호출
	}
	if (myform.cardprefix.value=="2")	//올앳(삼성카드전용)
	{
		myform.action = "cart_account_20_card_Allat.asp";
		myform.submit(); 
	}*/
	frmcartsendcard();				//데이콤 결제 호출
}	

////////////////////////////////////////////////////////////////
//함수명	: frmcartsendcard
//설명		: 강좌/교재 신청 결제 페이지-신용카드 (데이콤)
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmcartsendcard() { 
	
	var ncash=0;
		ncash = parseFloat(document.ini.amount.value);	
	if (ncash==0){
		alert("신청할 데이터가 없습니다.");
		return false;
	}
	else
	{
		/*
		========
		신용카드
		========
		테스트용 결제창 URL				http://pg.dacom.net:7080/card/cardAuthAppInfo.jsp;
		서비스용 결제창 URL				http://pg.dacom.net/card/cardAuthAppInfo.jsp;		
		*/			
					
			window.open("","WindowCard","width=330, height=430, status=yes, scrollbars=no,resizable=yes, menubar=no");
			document.ini.action="http://pg.dacom.net/card/cardAuthAppInfo.jsp";
			document.ini.target = "WindowCard";
			document.ini.submit();			
		
	}		
}

////////////////////////////////////////////////////////////////
//함수명	: frmpaysendcash
//설명		:  강좌/교재 신청 결제 페이지-캐쉬 결제
//입력		: 없음
//출력		: 없음
//사용법	: 
////////////////////////////////////////////////////////////////
function frmpaysendcash() { 

	if(confirm("신청 내역을 캐쉬로 결제 하시겠습니까?")) {

		openwin = window.open("/cart/Cart_Account_20_Card_ing.asp","childwin","width=300,height=160");
		openwin.focus();

		document.myform.submit();
		return true;
	}		
}	