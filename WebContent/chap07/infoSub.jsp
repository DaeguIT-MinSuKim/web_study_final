<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String type = request.getParameter("type");
if (type == null){
	return;
}
%>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>타입</td><td><b><%=type %></b></td>	
	</tr>
	<tr>
		<td>특징</td>
		<td>
<%      if (type.equalsIgnoreCase("A")){%>
			강한 내구성.
<%      }else if (type.equalsIgnoreCase("B")) {%>
			뛰어난 대처 능력
<%      } %>
		</td>
	</tr>
</table>