<!-- #include virtual = "/Common/inc/FunDef.asp"-->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"
%>
    <table id="tblEdit" style="background-color:White;" border="1" >
        <tr>
            <td style="text-align:left; padding-left:20px;">
                <span>�ð� : </span>
                <select name="sSrcHour" id="sSrcHour" style="width:40px;" ></select>:
                <select name="sSrcMinute" id="sSrcMinute" style="width:40px;" ></select>:
                <select name="sSrcSecond" id="sSrcSecond" style="width:40px;" ></select>
                <input type="button" value=" Set " onclick="fncTimeReflectSet('s')" />
                <input type="button" value="�̵�" onclick="fncMoveSrcTime('s')" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <div style="display:none;">
                    <span>���� : </span>
                    <select name="eSrcHour" id="eSrcHour" style="width:40px;" ></select>:
                    <select name="eSrcMinute" id="eSrcMinute" style="width:40px;" ></select>:
                    <select name="esSrcSecond" id="eSrcSecond" style="width:40px;" ></select>
                    <input type="button" value=" Set " onclick="fncTimeReflectSet('e')" />
                    <input type="button" value="�̵�" onclick="fncMoveSrcTime('e')" />
                </div>
            </td>
            <td style="width:80px;" rowspan="3" >
                <input type="hidden" name="ArrNo" id="ArrNo" value="" />
                <span id="spanInsBtns" style="display:block;">
                    <input id="btnSave" type="button" value="����" style="width:80px; height:80px;" onclick="fncSubtitleSave('idxins')" />
                    <input id="btnCancel" type="button" value="�ʱ�ȭ" style="width:80px; height:40px;" onclick="fncEditCancle('idxins')" />
                </span>
                <span id="spanUpdBtns" style="display:none;">
                    <input id="btnUpd" type="button" value="����" style="width:80px; height:80px;" onclick="fncSubtitleSave('idxupd')" />
                    <input id="btnCancle" type="button" value="���" style="width:80px; height:40px;" onclick="fncEditCancle('idxupd')" />
                </span>
            </td>
        </tr>
        <tr>
            <td style="text-align:left; padding-left:20px;">
                <textarea name="TextContent" id="TextContent" style="width:560px; height:70px;" onkeydown="fncLenChk('TextContent',200)" ></textarea>
                <p style="height:4px;">&nbsp;</p>
                ���� �� �����ͱ��� ��ȣ [ ' " , ; ] �� [ ` ` . : ]�� ��ȯ�ǰ�, HTMLƯ�������ڵ�� ������� �����ּ���.
            </td>
        </tr>
    </table>