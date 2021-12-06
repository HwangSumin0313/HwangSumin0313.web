<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>ȸ�����</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="navBar.jsp"/>

	<h2 style="text-align:center; padding: 50px 50px 70px 50px"> ȸ����� </h2>
	<table class="table" style="text-align: center; width: 800px; margin: auto;">
		<tr>
			<th scope="col">���̵�</th>
			<th scope="col">��й�ȣ</th>
			<th scope="col">�̸�</th>
			<th scope="col">����</th>
			<th scope="col">�̸���</th>
			<th scope="col">    </th>
		</tr>

	<%
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
	%>
			<tr>
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><a href='memberMemoList.jsp?userId=<%=rs.getString(1)%>'>�ۼ���</a></td>
			</tr>
		
	<%
		}
	%>
</table>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="footer.jsp"/>
</body>
</html>