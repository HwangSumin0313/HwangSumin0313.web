<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="user.userDAO"%>
<%@ page import="user.user"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
<h1> ȸ�� ������ </h1>
<%
	String id = request.getParameter("id");
	Connection conn=null; //DB�� ��������ִ� ��ü
	PreparedStatement pstmt=null; //sql���� ������ ��ü
	ResultSet rs=null; //���� ����� �������� ��ü
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	
	Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
	conn=DriverManager.getConnection(url,"hsm","1234");
	
	pstmt=conn.prepareStatement("SELECT * FROM member");
	rs = pstmt.executeQuery();
			
	while(rs.next()){
		if(rs.getString(1).equals(id)){
		%>
			<p>���̵�: <%=rs.getString(1) %></p>
			<p>��й�ȣ: <%=rs.getString(2) %></p>
			<p>�̸�: <%= rs.getString(3)%></p>
			<p>����: <%= rs.getString(4)%></p>
			<p>�̸����ּ�: <%=rs.getString(5) %></p>
		
		<%
		}
	}
%>

	<a href="memberList.jsp">�ڷΰ���</a>
	<jsp:include page="footer.jsp"/>
</body>
</html>