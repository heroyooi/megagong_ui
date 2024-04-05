////////////////////////////////////////////////////////////////
//�Լ���	: Infoset
//�Է�		: ��������/�ű�����
//���		: ����
//����		: ���� ���������� ����� �ּ� ã�� �κ�
//����	: 
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
//�Լ���	: FormatToNum
//����		: �ݾ� �޸� ����
//�Է�		: ������Ʈ
//���		: �ݾ� �޸� ���� �� ����
//����	: 
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
//�Լ���	: frmpaysend
//����		: ���� ���������� ���� ���ܺ��� �̵��ϴ� �κ� 
//�Է�		: ��������/�ű�����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmpaysend()
{
	var ncash = 0;
	var ExceptYn = "";
	
	//�ݾ��� 0���� ��� ���� ǥ��
	ncash = parseFloat(document.myform.price.value.replace(",",""))
	ExceptYn = document.myform.ExceptYn.value

	if (ncash==0 && ExceptYn==""){
		alert("��û�� �����Ͱ� �����ϴ�.");
		return;
	}
	
	if(myform.rdoinfo[0].checked) //ȸ�������� ����
	{
		if (myform.txtTel.value==""){alert("��ȭ��ȣ�� �����ϴ�.\n\nȸ�� �⺻ ������ ���� �� �Է��� �ּ���!");return;};
		if (myform.txtHp.value==""){alert("�ڵ�����ȣ�� �Է��� �ּ���!");return;};
		if (myform.txtZipNo1.value==""||myform.txtZipNo2.value==""){alert("�����ȣ�� ������ �ּ���!");return;};
		if (myform.txtAddr1.value==""){alert("�ּҸ� �Է��� �ּ���!");return;};
		if (myform.txtAddr2.value==""){alert("�ּҸ� �Է��� �ּ���!");return;};
	}
	else if(myform.rdoinfo[1].checked) //ȸ�������� ���� 
	{
		if (myform.txtName.value==""){alert("�̸� �Է��� �ּ���!");return;};
		if (myform.txtTel.value==""){alert("��ȭ��ȣ�� �Է��� �ּ���!");return;};		
		if (myform.txtHp.value==""){alert("�ڵ�����ȣ�� �Է��� �ּ���!");return;};
		if (myform.txtEmail.value==""){alert("���� �ּҸ� �Է��� �ּ���!");return;};
		if (myform.txtZipNo1.value==""||myform.txtZipNo2.value==""){alert("�����ȣ�� ������ �ּ���!");return;};
		if (myform.txtAddr1.value==""){alert("�ּҸ� �Է��� �ּ���!");return;};
		if (myform.txtAddr2.value==""){alert("�ּҸ� �Է��� �ּ���!");return;};
	}
	else if (myform.BookAmt.value!=0)	//����� �ִµ� �ּ� ������ �Է����� ���� ���
	{
		alert("����� ������ �Է��� �ּ���!");return;
	}
	
	myform.txtName.disabled = false; 
	myform.txtTel.disabled = false; 
	myform.txtHp.disabled = false; 
	myform.txtEmail.disabled = false; 

	var nPay=0;
	nPay = parseFloat(myform.cash_g.value.replace(",","")) + parseFloat(myform.cash_s.value.replace(",",""))
		
	if(myform.paysys[0].checked)	 //�ſ�ī��
	{
		//myform.action="cart_account_20_card.asp"; 
		//myform.action="cart_account_20_card_kcp.asp";
		myform.action="cart_account_20_card_Dacom.asp";
	}
	else if(myform.paysys[1].checked) //���ͳݰ�����ü
	{
		//myform.action="cart_account_10_town.asp"; 
		myform.action="cart_account_10_dacom.asp"; 
	}
	else if(myform.paysys[2].checked) //������
	{
		myform.action="cart_account_00_bank.asp"; 
	}
	else 
	{
		//������ �ݾװ� �Ա� ������ �ݾ��� ���� ��� ĳ���� ���� ó��
		if (ncash==nPay) 
		{
			myform.action="cart_account_30_cash.asp"; 
		}
		else
		{
			alert("���ұ����� ������ �ּ���!");return;
		}
	}

	myform.submit();
}

////////////////////////////////////////////////////////////////
//�Լ���	: frmpaysendbank
//����		:  ����/���� ��û ���� ������-������ ����
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmpaysendbank() { 
	var ncash=0;
	ncash = parseFloat(document.bank.amount.value);
	if (ncash==0){
		alert("��û�� �����Ͱ� �����ϴ�.");
		return;
	}
	else
	{
		myform = document.bank;
		window.open("","Window","width=330,height=430,status=yes,scrollbars=no,resizable=yes,menubar=no");
		myform.action="http://pg.dacom.net/cas/casRequestSA.jsp";		// ���� ����
		//myform.action="http://pg.dacom.net:7080/cas/casRequestSA.jsp";	// �׽�Ʈ ��
			           
		myform.target="Window";
		
		if(mainfrm.img_pay != undefined){
			mainfrm.img_pay.disabled = true;
		}
		myform.submit();	
	}		
}
////////////////////////////////////////////////////////////////
//�Լ���	: frmpaysenddacom
//����		: ����/���� ��û ���� ������-���ͳ� ������ü(������)
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmpaysenddacom() { 
	var ncash=0;
	//�ݾ��� 1000�� ������ ��� ���� ǥ��
	ncash = parseFloat(document.pay.amount.value);
	if (ncash==0){
		alert("��û�� �����Ͱ� �����ϴ�.");
		return;
	}
	else
	{
		myform = document.pay;
		window.open("","Window","width=330,height=430,status=yes,scrollbars=no,resizable=yes,menubar=no");
		myform.action="http://pg.dacom.net/transfer/transferSelectBank.jsp";		// ���� ����
		//myform.action="http://pg.dacom.net:7080/transfer/transferSelectBank.jsp";	// �׽�Ʈ ��
			           
		myform.target="Window";

		if(mainfrm.img_pay != undefined){
			mainfrm.img_pay.disabled = true;
		}
		myform.submit();
	}	
}
////////////////////////////////////////////////////////////////
//�Լ���	: frmbanksenddacom
//����		: ����/���� ��û ���� ������-������ �Ա�(������)
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmbanksenddacom() { 
	var ncash=0;
	//�ݾ��� 1000�� ������ ��� ���� ǥ��
	ncash = parseFloat(document.pay.amount.value);
	if (ncash==0){
		alert("��û�� �����Ͱ� �����ϴ�.");
		return;
	}
	else
	{
		myform = document.pay;
		window.open("","Window","width=330,height=430,status=yes,scrollbars=no,resizable=yes,menubar=no");
		myform.action="http://pg.dacom.net/cas/casRequestSA.jsp";		// ���� ����
		//myform.action="http://pg.dacom.net:7080/cas/casRequestSA.jsp";	// �׽�Ʈ ��

		myform.target="Window";				
		frmPay.img_pay.disabled = true;
		myform.submit();
	}	
}
////////////////////////////////////////////////////////////////
//�Լ���	: frmpaysendtown
//����		: ����/���� ��û ���� ������-���ͳ� ������ü
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmpaysendtown() { 
	var ncash=0;
	//�ݾ��� 1000�� ������ ��� ���� ǥ��
	ncash = parseFloat(document.pay.P_AMT.value);
	if (ncash==0){
		alert("��û�� �����Ͱ� �����ϴ�.");
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
//�Լ���	: frmpaysendcard
//����		: ����/���� ��û ���� ������-�ſ�ī��
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmpaysendcard() { 
	
/*	if (myform.cardprefix.value=="")	
	{
		alert("ī�带 ������ �ּ���!")
		myform.cardprefix.focus();
		return;
	}
	if (myform.cardprefix.value=="3")	//��Ÿ
	{		
		frmcartsendcard();				//������ ���� ȣ��
	}
	if (myform.cardprefix.value=="2")	//�þ�(�Ｚī������)
	{
		myform.action = "cart_account_20_card_Allat.asp";
		myform.submit(); 
	}*/
	frmcartsendcard();				//������ ���� ȣ��
}	

////////////////////////////////////////////////////////////////
//�Լ���	: frmcartsendcard
//����		: ����/���� ��û ���� ������-�ſ�ī�� (������)
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmcartsendcard() { 
	
	var ncash=0;
		ncash = parseFloat(document.ini.amount.value);	
	if (ncash==0){
		alert("��û�� �����Ͱ� �����ϴ�.");
		return false;
	}
	else
	{
		/*
		========
		�ſ�ī��
		========
		�׽�Ʈ�� ����â URL				http://pg.dacom.net:7080/card/cardAuthAppInfo.jsp;
		���񽺿� ����â URL				http://pg.dacom.net/card/cardAuthAppInfo.jsp;		
		*/			
					
			window.open("","WindowCard","width=330, height=430, status=yes, scrollbars=no,resizable=yes, menubar=no");
			document.ini.action="http://pg.dacom.net/card/cardAuthAppInfo.jsp";
			document.ini.target = "WindowCard";
			document.ini.submit();			
		
	}		
}

////////////////////////////////////////////////////////////////
//�Լ���	: frmpaysendcash
//����		:  ����/���� ��û ���� ������-ĳ�� ����
//�Է�		: ����
//���		: ����
//����	: 
////////////////////////////////////////////////////////////////
function frmpaysendcash() { 

	if(confirm("��û ������ ĳ���� ���� �Ͻðڽ��ϱ�?")) {

		openwin = window.open("/cart/Cart_Account_20_Card_ing.asp","childwin","width=300,height=160");
		openwin.focus();

		document.myform.submit();
		return true;
	}		
}	