<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
	<% 
		session.invalidate();
		out.println("<script> alert('로그아웃 되었습니다.') </script>");
	%>
	<script>
	    location.href = 'main.jsp';
	</script>
</body>
</html>