<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="memo.memoDAO"%>
<%@ page import="memo.memo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");

		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String userId = session.getAttribute("id").toString();

		memoDAO conn = new memoDAO();
		
		int result = conn.writeOK(title, content, userId);
		if(result==1){
			out.println("<script>");
			out.println("alert('�Խñ��� �ۼ��Ǿ����ϴ�.')");
		    out.println("location.href='main.jsp'"); 
		    out.println("</script>");
		}
		else if(result==-1){
			out.println("<script>");
			out.println("alert('������ �߻��߽��ϴ�.')");
		    out.println("history.back()"); 
		    out.println("</script>");
		}
	
	%>
</body>
</html>