<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>    
<%@ page import="javax.naming.*" %>
<%@ page import="user.userDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ������</title>
</head>
<body>
<% 
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	userDAO conn = new userDAO(); // �⺻ �����ڷ� ������ Ŀ�ؼ�
	int login_result = conn.login(id, password); // �α��� �޼��忡 ����.
	
	//��ĭ ����
	if(id.isEmpty()){
		out.println("<script>");
		out.println("alert('���̵� �Է��ϼ���.')");
		out.println("history.back()");
		out.println("</script>");
	}
	if(password.isEmpty()){
		out.println("<script>");
		out.println("alert('��й�ȣ�� �Է��ϼ���.')");
		out.println("history.back()");
		out.println("</script>");
	}
	
	//������ ����
	if(id.equals("admin")&&password.equals("1234")){
		out.println("<script>");
		session.setAttribute("id", id);
		out.println("alert('�����ڷ� �α����Ͽ����ϴ�.')");
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
		out.println("alert('��й�ȣ�� Ʋ�Ƚ��ϴ�.')");
		out.println("history.back()");
		out.println("</script>");
	}else if(login_result==-1){
		out.println("<script>");
		out.println("alert('���̵� �������� �ʽ��ϴ�.')");
		out.println("history.back()");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('������ �߻��Ͽ����ϴ�.')");
		out.println("history.back()");
		out.println("</script>");
	}
	

%>

		
	
</body>
</html>