			<div id="divControlArea" class="control_area" style="height:31px; position:static;" >
			<div class="control_area_innerBox" style="height:<% if PlayerKbn = "M" Then %>82<% Else %>28<% End if %>px;">

				<!-- �ٸ� ���Ƿ� �̵� -->
				<div class="move" style="top:0px; padding:3px 14px 0 4px;" >

					<% if PlayerKbn = "A" then %>
						<div class="txt" style="width:100%;"><%=tec_nm%> - <%=chr_nm%></div>
					<% Elseif PlayerKbn = "P" Or PlayerKbn = "D" then %>
						<div class="txt" style="width:100%;"><%=chr_nm %><% if VOD_KBN = "40" Then %> - OT<% Else %> - <%=LEC_NM %><% End if %></div>
					<% Elseif PlayerKbn = "T" Then %>
						<div class="txt" style="width:100%;"><%=lec_nm %></div>
					<% Elseif PlayerKbn = "H" Then %>
						<div class="txt" style="width:100%;" onclick="test()" ><%=DOM_NM %>&nbsp;<%=TEC_NM %> - <%=SUB_NM %>(<%=RANGE %>)</div>
					<% Elseif PlayerKbn = "M" Then %>
                        <div class="txt" style="width:100%; background-color:white; color:black; ">
                            ���Ǹ� : (<%=LEC_CD %>) <%=LEC_NM %>
                            <br />
                            <span>MediaKey : </span><span style="font-weight:bold;"><%=mckey %></span> <input type="button" value="����" onclick="urlToClip('<%=mckey %>')" />
                        </div>
                        <script type="text/javascript">
                            function urlToClip(valStr) {
                                try {
                                    var doc = valStr;

                                    if (window.clipboardData.setData('Text', doc)) {
                                        alert(doc + "\n\n��ΰ� Ŭ�����忡 ����Ǿ����ϴ�.Ctrl+V�� ������ ����˴ϴ�.");
                                    }
                                }
                                catch (e) {
                                }
                            }
                        </script>
					<% else %>
                        <% if LEC_NM <> "" Then %>
                            <div class="txt" style="width:100%;"><%=LEC_NM %></div>
                        <% Else %>
						    <div class="txt" style="width:100%;"><%=Title %><% if Title <> "" And Content <> "" Then %> - <% End if %><%=Content %></div>
                        <% End if %>
					<% end if %>

				</div>

			</div>
			</div>

