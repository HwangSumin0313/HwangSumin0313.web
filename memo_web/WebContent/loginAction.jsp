<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>    
<%@ page import="javax.naming.*" %>
<%@ page import="user.userDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
<% 
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	userDAO conn = new userDAO(); // 기본 생성자로 데이터 커넥션
	int login_result = conn.login(id, password); // 로그인 메서드에 접근.
	
	//빈칸 여부
	if(id.isEmpty()){
		out.println("<script>");
		out.println("alert('아이디를 입력하세요.')");
		out.println("history.back()");
		out.println("</script>");
	}
	if(password.isEmpty()){
		out.println("<script>");
		out.println("alert('비밀번호를 입력하세요.')");
		out.println("history.back()");
		out.println("</script>");
	}
	
	//관리자 여부
	if(id.equals("admin")&&password.equals("1234")){
		out.println("<script>");
		session.setAttribute("id", id);
		out.println("alert('관리자로 로그인하였습니다.')");
		out.println("location.href='main.jsp'");
		out.println("</script>");
	}
	
	if(login_result==1){
		session.setAttribute("id", id);
		out.println("<script>");
		out.println("location.href='main.jsp'");
		out.println("</script>");
	}else if(login_result==0){
		out.println("<script>");
		out.println("alert('비밀번호가 틀렸습니다.')");
		out.println("history.back()");
		out.println("</script>");
	}else if(login_result==-1){
		out.println("<script>");
		out.println("alert('아이디가 존재하지 않습니다.')");
		out.println("history.back()");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('오류가 발생하였습니다.')");
		out.println("history.back()");
		out.println("</script>");
	}
	

%>

		
	
</body>
</html>