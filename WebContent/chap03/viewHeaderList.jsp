<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>헤더 목록 출력</title></head>
<body>
<%
Enumeration<String> headerEnum = request.getHeaderNames();
while(headerEnum.hasMoreElements()){
	String headerName = headerEnum.nextElement();
	String headerValue = request.getHeader(headerName);
%>
	<%=headerName %> = <%=headerValue %> <br>
<%
}
%>
</body>
</html>