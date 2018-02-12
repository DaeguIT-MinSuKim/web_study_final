<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>Calendar 클래스 사용</title></head>
<body>
<%
	Calendar cal = Calendar.getInstance();
%>

오늘은
	<%=cal.get(Calendar.YEAR)%>년
	<%=cal.get(Calendar.MONDAY)+1%>월
	<%=cal.get(Calendar.DAY_OF_MONTH)%>일
입니다.
</body>
</html>