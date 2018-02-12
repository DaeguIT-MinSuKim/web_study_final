<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("memberId");
	if (id != null && id.equals("madvirus")){
		response.sendRedirect("/web_study_final/chap03/time.jsp");
	}else{
%>
<html>
<head><title>로그인 실패</title></head>
<body>
잘못된 아이디 입니다.
</body>
</html>
<%
	}
%>