<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Map<String, Object> mapData = new HashMap<>();
	mapData.put("name", "김민수");
	mapData.put("toDay", new Date());
%>
<c:set var="intArray" value="<%=new int[]{1,2,3,4,5} %>"/>
<c:set var="map" value="<%=mapData %>"/>
<html>
<head><title>forEach 태그</title></head>
<body>
	<h4>1부터 100까지 홀수의 합</h4>
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum+i}" />
	</c:forEach>
	결과 =${sum}
	
	<h4>구구단 4단</h4>
	<ul>
	<c:forEach var="i" begin="1" end="9">
		<li>4 * ${i} = ${i*4}
	</c:forEach>
	</ul>
		
	<h4>int형 배열</h4>
	<c:forEach var="i" items="${intArray}" varStatus="status">
		${i} => [${i}]
	</c:forEach>
	<br>
	<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
		${status.index}-${status.count}-[${i}]<br>
	</c:forEach>
		
	<h4>Map</h4>
	<c:forEach var="i" items="${map}">
		${i.key}=${i.value}<br>
	</c:forEach>
	
</body>
</html>