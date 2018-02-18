<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="kr.or.dgit.web_study_final.util.Cookies"%>
<%
	Cookies cookies = new Cookies(request);
%>
<html>
<head>
<title>Cookie 사용</title>
</head>
<body>
<%
	Cookie nameCookie = cookies.getCookie("name");
	Cookie idCookie = cookies.getCookie("id");
%>
	name 쿠키 = <%=cookies.getValue("name")%><br>
	<br>
<%	if (cookies.exists("id")) { %>
		id 쿠키 = 	<%=cookies.getValue("id")%> <br>
		id 쿠키 경로 = <%=idCookie.getPath() %> <br>
		id 생명 주기 = <%=idCookie.getMaxAge() %>
<%	} %>
	
</body>
</html>
