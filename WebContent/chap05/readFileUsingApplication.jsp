<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>application 기본 객체를 사용하여 자원 읽기</title></head>
<body>
<%
	String resourcePath = "/message/notice.txt";
%>
자원의 실제 경로: <%=application.getRealPath(resourcePath) %>
<br>
----------------------<br>
<%= resourcePath %>의 내용<br>
----------------------<br>
<%
	char[] buf = new char[128];
	int len = -1;
	try(InputStreamReader isr = new InputStreamReader(application.getResourceAsStream(resourcePath))){
		while( (len=isr.read(buf)) != -1){
			out.print(new String(buf, 0, len));
		}
	}catch(IOException e){
		out.println("Exception err : " + e.getMessage());
	}
%>
</body>
</html>