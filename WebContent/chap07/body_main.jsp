<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head><title>Info</title></head>
<body>

include전 name 파라미터 값 : <%=request.getParameter("name") %>

<hr>

<jsp:include page="body_sub.jsp">
	<jsp:param value="김민수" name="name"/>
</jsp:include>

<hr>

include 후  name 파라미터 값 : <%=request.getParameter("name") %>

</body>
</html>