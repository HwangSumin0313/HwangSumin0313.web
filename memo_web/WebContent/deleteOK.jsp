<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");

		String memoID = request.getParameter("memoid");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:orcl";
			
			Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
			conn=DriverManager.getConnection(url,"hsm","1234");
			
			pstmt = conn.prepareStatement("update memo set exist='0' where memoid=?");
			
			pstmt.setString(1,memoID);
			pstmt.executeUpdate();
			
			out.println("<script>");
			out.println("alert('�Խñ��� �����Ǿ����ϴ�.')");
		    out.println("location.href='main.jsp'"); 
		    out.println("</script>");
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>
	
</body>
</html>