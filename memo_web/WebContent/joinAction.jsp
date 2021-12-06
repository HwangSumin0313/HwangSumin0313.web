<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.*" %>

<%@ page import="user.userDAO" %>
<%@ page import="user.user" %>
<head>
	<title>회원가입 페이지</title>
</head>

<body>
<% 
	request.setCharacterEncoding("euc-kr");

	userDAO conn = new userDAO();

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	
	user newUser = new user(id, password, name, gender, email);
	
	int result = conn.join(newUser);
	if(id.isEmpty()||password.isEmpty()||name.isEmpty()||email.isEmpty()){
		out.println("<script>");
		out.println("alert('빈 항목이 존재합니다.')");
		out.println("history.back()");
		out.println("</script>");
	}
	if(result==-1){
		out.println("<script>");
		out.println("alert('이미 존재하는 아이디입니다.')");
		out.println("history.back()");
		out.println("</script>");
	}else{
		session.setAttribute("id",id);
		out.println("<script>");
		out.println("alert('가입이 완료되었습니다.')");
		out.println("location.href='main.jsp'");
		out.println("</script>");
	}
%>

</body>
</html>
           