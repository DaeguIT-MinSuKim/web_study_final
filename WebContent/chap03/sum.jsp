<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>1-10까지의 합</title></head>
<body>
<%
	int sum = 0;
	for(int i=1; i<11; i++){
		sum = sum + i;
	}
%>
1 부터 10까지의 합은 <%=sum %> 입니다.
<br>
<%
	int sum2 = 0;
	for(int i=11; i<21; i++){
		sum2 = sum2 + i;
	}
%>
11 부터 20까지의 합은 <%=sum2 %> 입니다.
<br>
1부터 5까지의 합은
<%= 1+2+3+4+5 %> 입니다.
</body>
</html>