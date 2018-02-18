<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberInfo"
	class="kr.or.dgit.web_study_final.dto.MemberInfo" />
<jsp:setProperty property="*" name="memberInfo" />
<%-- <%=memberInfo%> --%>
<jsp:setProperty property="password" name="memberInfo" value="<%=memberInfo.getId()%>" />
<%-- <%=memberInfo%> --%>
<html>
<head>
<title>가입</title>
</head>
<body>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty name="memberInfo" property="id" /></td>
			<td>비밀번호</td>
			<td><jsp:getProperty name="memberInfo" property="password" /></td>
		</tr>
		<tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty name="memberInfo" property="name" /></td>
			<td>이메일</td>
			<td><jsp:getProperty name="memberInfo" property="email" /></td>
		</tr>
	</table>

</body>
</html>