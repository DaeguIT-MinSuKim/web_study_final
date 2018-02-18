<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null && cookies.length >0 ){
		for(Cookie c : cookies){
			if (c.getName().equals("name")){
				Cookie cookie = new Cookie("name", URLEncoder.encode("JSP 프로그래밍", "utf-8"));
				response.addCookie(cookie);
			}
		}
	}
%>
<html>
<head><title>쿠키 값 변경</title></head>
<body>
name 쿠키의 값을 변경합니다.
</body>
</html>