<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--
	<jsp:foward> 액션 태그를 실행하면 생성했던 출력 겨로가는 모두 제거된다.
 --%>
<html>
<head><title>from.jsp이 제목</title></head>
<body>

이 페이지는 from.jsp가 생성한 것입니다.

<jsp:forward page="/chap07/to/to.jsp"/>

</body>
</html>