<style type="text/css">
    .pframe{border:none;}
</style>
<iframe id="<%=pcd %>" class="pframe" width='100%' height='100%' src='http://v.kr.kollus.com/s?jwt=<%=encoded_token %>&custom_key=<%=customKey %>&<% if dtype = "PC" Then %>s<% Else %>t<% End if %>=<%=intStartSec %>&force_exclusive_player=<%=force_exclusive_player %><%=uservalue %><% if AutoPlay = "Y" Then %>&a=1<% End if %>&ts=1000&tr=1000<% if PlayerApp <> "Y" Then %>&player_duplicate<% End if %>' allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>