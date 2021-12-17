<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수정</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <h1 class="display-4">MEMO BOARD</h1>
	    	<p class="lead">원하는 글을 자유롭게 작성하세요!</p>
	  </div>
	</div>
	<%
		request.setCharacterEncoding("euc-kr");

		String memoID = request.getParameter("memoid");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try{
			String driver="oracle.jdbc.driver.OracleDriver";
			String url="jdbc:oracle:thin:@localhost:1521:orcl";
			
			Class.forName(driver);
			conn=DriverManager.getConnection(url,"hsm","1234");
			
			pstmt = conn.prepareStatement("select * from memo where memoid=?");
			
			pstmt.setString(1,memoID);
			rs = pstmt.executeQuery();
			rs.next();
			
	%>		
		<form name="write" action="editOK.jsp" method="post">
			<div style="width: 600px; hight:1000; margin: 100px auto; content-align: center;">
				<div class="mb-3" style="float: left">
					<label class="form-label">제목</label>
					<input type="text" class="form-control" style="width: 500px;" maxlength=20 name="title" value="<%=rs.getString(2)%>">		
				</div>
				<div class="mb-3" style="float: right">
					<label class="form-label">글 번호</label>
					<input type="text" class="form-control" style="width: 50px; text-align: center;" maxlength=4 name="memoId" value="<%=rs.getInt(1)%>" readonly>
				</div>
				<div class="mb-3" style="clear:both">
					<label class="form-label">내용</label>
					<textarea class="form-control" maxlength=1000 name="content" rows="10"><%= rs.getString(3) %></textarea>
				</div>
				<input type ="submit" class="btn btn-secondary" style=" float: right;" value="수정하기">
			</div>
		</form>
	<%	 
		}catch(Exception e){
			e.printStackTrace();
		}
		
	%>
	<jsp:include page="footer.jsp"/>
</body>
</html>