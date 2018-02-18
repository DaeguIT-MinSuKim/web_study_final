<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>쿠키 목록</title></head>
<body>
쿠키 목록<br>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies !=null && cookies.length > 0){
		for(Cookie cookie : cookies){
			out.print(cookie.getName() +"-"+ URLDecoder.decode(cookie.getValue(), "utf-8")+"<br>");
		}
	}else{
		out.println("쿠키가 존재하지 않습니다.");
	}
%>
</body>
</html>