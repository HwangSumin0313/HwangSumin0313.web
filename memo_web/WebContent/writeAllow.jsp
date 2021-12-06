<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	    <%	
			if (session.getAttribute("id") == null){
				out.println("<script>");
				out.println("alert('로그인이 필요합니다.')");
				out.println("history.back()");
				out.println("</script>");
			}else{
				out.println("<script>");
				out.println("location.href='write.jsp'");
				out.println("</script>");
			}
		%>
</body>
</html>