<!-- #include virtual = "/Common/inc/FunDef.asp"-->
<%
Response.AddHeader "Cache-Control", "no-cache"
Response.AddHeader "Expires", "0"
Response.AddHeader "Pragma", "no-cache"
Response.ContentType = "text/html; charset=euc-kr"

HDPlayerFlg = fncRequest("HDPlayerFlg")
SmallMoniter = fncRequest("SmallMoniter")
%>
    <table id="tblEdit" style="background-color:White;" border="1" >
        <tr>
            <td style="text-align:left; padding-left:20px;">
                <select name="sSrcHour" id="sSrcHour" style="width:40px;" ></select>:
                <select name="sSrcMinute" id="sSrcMinute" style="width:40px;" ></select>:
                <select name="sSrcSecond" id="sSrcSecond" style="width:40px;" ></select>
                <input type="button" value=" Set " onclick="fncTimeReflectSet('s')" alt="현재 시간으로 설정" style="cursor:pointer;" />
                <input type="button" value="이동" onclick="fncMoveSrcTime('s')" alt="설정된 시간으로 이동" style="cursor:pointer;" />
                &nbsp;&nbsp;
                <select name="eSrcHour" id="eSrcHour" style="width:40px;" ></select>:
                <select name="eSrcMinute" id="eSrcMinute" style="width:40px;" ></select>:
                <select name="eSrcSecond" id="eSrcSecond" style="width:40px;" ></select>
                <input type="button" value=" Set " onclick="fncTimeReflectSet('e')" alt="현재 시간으로 설정" style="cursor:pointer;" />
                <input type="button" value="이동" onclick="fncMoveSrcTime('e')" alt="설정된 시간으로 이동" style="cursor:pointer;" />
                <!--p style="height:4px;">&nbsp;</p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="checkbox" name="chkTimeReflect" id="chkTimeReflect" style="vertical-align:middle;" /> 시간 반영 (※ 미리보기 시에 시작시간부터 자막 노출 확인가능[디폴트는 계속 노출] - 실제 적용은 저장 시에 반영 )-->
            </td>
            <td style="width:120px;" rowspan="3" >
                <span style="font-weight:bold;">위치조정</span> - 첫글자기준<br />
                (영상크기 : <span id="pSizeView"></span>)<br />
                <input type="text" name="txtMovPointX" id="txtMovPointX" size="4" maxlength="4" value="0" ></input>px
                <input type="text" name="txtMovPointY" id="txtMovPointY" size="4" maxlength="3" value="0" ></input>px
                <table style="border:0px;">
                    <tr>
                        <td colspan="2" rowspan="3" >
                            좌표이동<br />
                            단위설정
                            <select name="sCoopRng" id="sCoopRng">
                                <option value="5">5</option>
                                <option value="10" selected>10</option>
                                <option value="20">20</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                            </select>
                        </td>
                        <td onclick="fncSetPoint(1,1)" style="cursor:pointer;">┌</td>
                        <td onclick="fncMovePoint(0,-1)" style="cursor:pointer;">▲</td>
                        <td onclick="fncSetPoint(3,1)" style="cursor:pointer;">┐</td>
                    </tr>
                    <tr>
                        <td onclick="fncMovePoint(-1,0)" style="cursor:pointer;" >◀</td>
                        <td onclick="fncSetPoint(2,2);" style="cursor:pointer;" >⊙</td>
                        <td onclick="fncMovePoint(1,0)" style="cursor:pointer;" >▶</td>
                    </tr>
                    <tr>
                        <td onclick="fncSetPoint(1,3)" style="cursor:pointer;">└</td>
                        <td onclick="fncMovePoint(0,1)" style="cursor:pointer;" >▼</td>
                        <td onclick="fncSetPoint(3,3)" style="cursor:pointer;">┘</td>
                    </tr>
                </table>
            </td>
            <td style="width:80px;" rowspan="3" >
                <input type="hidden" name="ArrNo" id="ArrNo" value="" />
                <span id="spanInsBtns" style="display:block;">
                    <input id="btnSave" type="button" value="저장" style="width:80px; height:80px; cursor:pointer;" onclick="fncSubtitleSave('ins')" />
                    <input id="btnCancel" type="button" value="초기화" style="width:80px; height:40px; cursor:pointer;" onclick="fncEditCancle('ins')" />
                </span>
                <span id="spanUpdBtns" style="display:none;">
                    <input id="btnUpd" type="button" value="수정" style="width:80px; height:80px; cursor:pointer;" onclick="fncSubtitleSave('upd')" />
                    <input id="btnCancle" type="button" value="취소" style="width:80px; height:40px; cursor:pointer;" onclick="fncEditCancle('upd')" />
                </span>
            </td>
        </tr>
        <tr>
            <td style="text-align:left; padding-left:20px;">
                Font : 
                <select name="sTextFont" id="sTextFont" onchange="fncPreview();">
                    <option value="굴림">굴림</option>
                    <option value="굴림체">굴림체</option>
                    <option value="궁서">궁서</option>
                    <option value="궁서체">궁서체</option>
                    <option value="돋움">돋움</option>
                    <option value="돋움체">돋움체</option>
                    <option value="바탕">바탕</option>
                    <option value="바탕체">바탕체</option>
                    <option value="맑은고딕">맑은고딕</option>
                    <option value="나눔고딕">나눔고딕</option>
                    <option value="휴먼매직체">휴먼매직체</option>
                    <option value="HY헤드라인M">HY헤드라인M</option>
                </select>
                Size : 
                <select name="sTextSize" id="sTextSize" onchange="fncPreview();">
                <%
                    for i = 10 To 100
                %>
                    <option value="<%=i %>" <% if i = 25 then %>selected<% end if %>><%=i %></option>
                <%
                    next
                %>
                </select>
                Color : 
                <select name="sTextColor" id="sTextColor" onchange="fncPreview();">
                    <option value="000000">black </option>
                    <option value="FFFFFF">white </option>
                    <option value="BEBEBE">grey </option>

                    <option value="F5F5DC">beige </option>
                    <option value="FFFF00">yellow </option>
                    <option value="FFA500">orange </option>
                    <option value="FF0000">red </option>
                    <option value="A52A2A">brown </option>

                    <option value="F0E68C">khaki </option>
                    <option value="00FF00">green </option>
                                    
                    <option value="00FFFF">cyan </option>
                    <option value="87CEEB">SkyBlue </option>
                    <option value="0000FF">blue </option>
                    <option value="000080">navy </option>

                    <option value="FF00FF">magenta </option>
                    <option value="EE82EE">violet </option>
                </select>
            </td>
        </tr>
        <tr>
            <td style="text-align:left; padding-left:20px;">
                <textarea name="TextContent" id="TextContent" style="width:400px; height:36px;" onkeydown="fncLenChk('TextContent',200)" ></textarea>

                <input id="btnPreview" type="button" value="미리보기" style="width:60px; height:40px; vertical-align:top; cursor:pointer;" onclick="fncPreview();" />
                <p style="height:4px;">&nbsp;</p>
                저장 시 데이터구분 기호 [ ' " , ; ] → [ ` ` . : ]로 변환되고, HTML특수문자코드는 사용하지 말아주세요.
            </td>
        </tr>
    </table>
    <script type="text/javascript">
    <!--
        //document.getElementById("pSizeView").innerHTML = AquaPlayer.GetVideoSizeWidth() + " X " + AquaPlayer.GetVideoSizeHeight();
        //
        //var Duration = AquaPlayer.GetDuration() / 1000;
        //Duration = parseInt(Duration.toFixed(0));
        //
        //fncTimeSetting(Duration.convertMSFromSec());
    //-->
    </script>