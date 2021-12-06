<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% 
	String memoId = request.getParameter("memoId");

	Connection conn=null; //DB�� ��������ִ� ��ü
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		 	
		Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
		conn=DriverManager.getConnection(url,"hsm","1234");
		
		pstmt = conn.prepareStatement("SELECT * FROM memo where memoId=?");
		pstmt.setString(1,memoId);
		rs = pstmt.executeQuery();
		rs.next();
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title><%= rs.getString(2) %></title>
</head>
<body>

	
	<jsp:include page="navBar.jsp"/>
	<jsp:include page="header.jsp"/>
		<div style="width: 600px; hight:1000; margin: 100px auto 100px; content-align: center; ">
			<div class="mb-3">
			  <label class="form-label" style="margin: 0 50px 0 0; font-weight:bold">����</label>
			  <a><%=rs.getString(2) %></a>
			  <hr>
			</div>
			<div class="mb-3">
			  <p style="color: #8C8C8C; float:right; margin: auto 15px 10px; font-size:12px">�ۼ���: <%=rs.getString(4)%> &nbsp �ۼ���: <%=rs.getString(6)%></p>
			  <p style="clear: both; margin: 0 15px 50px 15px"><%=rs.getString(3) %></p>
			</div>
			<% 
			try {
				
				if((rs.getString(4).equals(session.getAttribute("id")))||(session.getAttribute("id").equals("admin"))){
					
			%>
					<a class="btn btn-secondary" href="deleteOK.jsp?memoid=<%=rs.getString(1)%>">�����ϱ�</a>		
			<% 
					}
				} catch (NullPointerException e) {
				 e.printStackTrace();
			    } 
			%>
			<a class="btn btn-secondary" href="main.jsp" style=" float: right;">�������</a>
			
		</div>
<jsp:include page="footer.jsp"/>
</body>
</html>