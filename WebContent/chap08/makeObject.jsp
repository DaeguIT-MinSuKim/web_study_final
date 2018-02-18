<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="kr.or.dgit.web_study_final.dto.MemberInfo"/>
<%
	member.setId("net94");
	member.setName("김민수");
%>
<jsp:forward page="useObject.jsp"/>