<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	public int multiply(int a, int b){
		return a*b;
		
	}

	public int add(int a, int b){
		return a+b;
	}
	
	public int subtract(int a, int b){
		return a-b;
	}
%>
<html>
<head>
	<title>선언부를 사용한 두 정수의 곱</title>
</head>
<body>
10 * 25 = <%=multiply(10, 25) %>
<br>
<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);
%>
<%=value1 %> + <%=value2 %> = <%=addResult %>
<br>
<%=value1 %> + <%=value2 %> = <%=subtractResult %>
</body>
</html>