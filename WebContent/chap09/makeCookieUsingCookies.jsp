<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="kr.or.dgit.web_study_final.util.Cookies"%>
<%
	response.addCookie(Cookies.createCookie("name", "김민수"));
	response.addCookie(Cookies.createCookie("id", "net94", "/", -1));
%>
<%
	Cookies cookies = new Cookies(request);
%>
<html>
<head>
<title>Cookies 사용 예</title>
</head>
<body>

	Cookies를 사용하여 쿠키 생성 
	<br>
	<br>
	name 쿠키 = <%=cookies.getValue("name")%>
	<br>
	<br>
	<%
		if (cookies.exists("id")) {
	%>
			id 쿠키 = 	<%=cookies.getValue("id")%><br> 
			id 쿠키 경로 = 	<%=cookies.getCookie("id").getPath()%><br> 
			id 생명 주기 = 	<%=cookies.getCookie("id").getMaxAge()%>
	<%
		}
	%>
</body>
</html>
