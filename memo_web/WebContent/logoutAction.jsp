<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
</head>
<body>
	<% 
		session.invalidate();
		out.println("<script> alert('�α׾ƿ� �Ǿ����ϴ�.') </script>");
	%>
	<script>
	    location.href = 'main.jsp';
	</script>
</body>
</html>