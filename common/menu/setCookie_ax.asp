<%
Response.charset = "euc-kr"
Response.CacheControl = "no-cache"
Response.Expires = -1

g = fncRequest("g")

Call SetCookie("h_dcd", g)
response.write " { ""result"":""succ"" , ""msg"":""OK"" } "
response.end
%>