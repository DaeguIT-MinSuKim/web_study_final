<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map.Entry" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head><title>요청 파라미터 출력</title></head>
<body>
	<b>request.getParameter() 메서드 사용</b><br>
	name 파라미터 = <%=request.getParameter("name") %> <br>
	address 파라미터 = <%=request.getParameter("address") %> 
	
	<p>
	<b>request.getParameterValues()메서드 사용</b><br>
	<%
		String[] values = request.getParameterValues("pet");
		if (values !=null){
			for(String value : values){
	%>
				<%=value %>
	<%
			}
		}
	%>
	<p>
	<b>request.getParameterNames() 메서드 사용</b><br>
	<%
		Enumeration<String> paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = paramEnum.nextElement();%>
			<%= name%>
	<%
		}
	%>
	
	<p>
	<b>request.getParameterMap()메서드 사용</b><br>
	<%
		for(Entry<String, String[]> e : request.getParameterMap().entrySet()){
	%>
			<%=e.getKey() %> =>
	<%
			for(String value : e.getValue()){
	%>
				<%=value %> 
	<%			
			}
		}
	%>
</body>
</html>