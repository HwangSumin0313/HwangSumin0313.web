<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="memo.memo"%>
<%@ page import="memo.memoDAO"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
	<title>게시판</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <h1 class="display-4">MEMO BOARD</h1>
	    <p class="lead">원하는 글을 자유롭게 작성하세요!</p>
	  </div>
	</div>
	<div class="container" style="width: 800px; margin: 100px auto; ">
		<a class="btn btn-secondary" href="writeAllow.jsp" style="float: right; margin: 0 0 10px;">글쓰기</a>	
	    <table class="table table-bordered">
		  <thead>
		    <tr style="text-align: center;">
		      <th scope="col">번호</th>
		      <th scope="col">제목</th>
		      <th scope="col">작성자</th>
		    </tr>
		</thead>
		<tbody>
		<%
			Connection conn=null; //DB와 연결시켜주는 객체
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int count = 0;
			
			try {
				String driver="oracle.jdbc.driver.OracleDriver";
				String url="jdbc:oracle:thin:@localhost:1521:orcl";
				 	
				Class.forName(driver);  //드라이버 이름으로 드라이버를 로드
				conn=DriverManager.getConnection(url,"hsm","1234");
				
				pstmt = conn.prepareStatement("SELECT * FROM memo where exist=1 order by indate desc");
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					count++;
		%>
		
				    <tr>
				    	<td style="width: 100px; text-align: center;"><%=rs.getString(1)%></td>
				    	<td><a href="memoContent.jsp?memoId=<%=rs.getString(1)%>" style="text-decoration: none; color: #000000;" ><%=rs.getString(2)%></a></td>
				    	<td style="width: 150px; text-align: center;"><%=rs.getString(4)%></td>
				    </tr>
		<% 
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
		%>
		  </tbody>
		</table>
		<a> 총 <%=count%>개의 글이 있습니다.</a>
		<a class="btn btn-secondary" href="writeAllow.jsp" style="float: right;">글쓰기</a>	
	</div>
	<a style="text-align: center;"> </a>
	<jsp:include page="footer.jsp"/>
</body>
</html>