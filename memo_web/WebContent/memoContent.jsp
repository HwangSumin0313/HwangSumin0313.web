<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<% 
	String memoId = request.getParameter("memoId");

	Connection conn=null; //DB와 연결시켜주는 객체
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	try {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		 	
		Class.forName(driver);  //드라이버 이름으로 드라이버를 로드
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
			  <label class="form-label" style="margin: 0 50px 0 0; font-weight:bold">제목</label>
			  <a><%=rs.getString(2) %></a>
			  <hr>
			</div>
			<div class="mb-3">
			  <p style="color: #8C8C8C; float:right; margin: auto 15px 10px; font-size:12px">작성자: <%=rs.getString(4)%> &nbsp 작성일: <%=rs.getString(6)%></p>
			  <p style="clear: both; margin: 0 15px 50px 15px"><%=rs.getString(3) %></p>
			</div>
			<% 
			try {
				
				if((rs.getString(4).equals(session.getAttribute("id")))||(session.getAttribute("id").equals("admin"))){
					
			%>
					<a class="btn btn-secondary" href="deleteOK.jsp?memoid=<%=rs.getString(1)%>">삭제하기</a>		
			<% 
					}
				} catch (NullPointerException e) {
				 e.printStackTrace();
			    } 
			%>
			<a class="btn btn-secondary" href="main.jsp" style=" float: right;">목록으로</a>
			
		</div>
<jsp:include page="footer.jsp"/>
</body>
</html>