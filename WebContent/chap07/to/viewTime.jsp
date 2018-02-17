<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>현재 시간</title></head>
<body>
<%
	Calendar cal = (Calendar)request.getAttribute("time");
%>
현재 시간은  <%=cal.get(Calendar.HOUR_OF_DAY) %>시
       <%=cal.get(Calendar.MINUTE) %>분
       <%=cal.get(Calendar.SECOND) %>초
</body>
</html>