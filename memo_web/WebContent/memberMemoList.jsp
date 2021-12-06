<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	    <table class="table table-bordered">
		  <thead>
		    <tr style="text-align: center;">
		      <th scope="col" style="width: 100px; text-align: center;">번호</th>
		      <th scope="col">제목</th>
		      <th scope="col" style="width: 150px; text-align: center;">작성자</th>
		    </tr>
		</thead>
		<tbody>
<%
	String userId = request.getParameter("userId");
	int count = 0;

	Connection conn = null;
	PreparedStatement pstmt= null;
	ResultSet rs = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url,"hsm","1234");
	
	pstmt = conn.prepareStatement("select * from memo where userId=? order by memoId desc");
	pstmt.setString(1, userId);
	rs = pstmt.executeQuery();

	while(rs.next()){
%>
			<tr>
		    	<td><%=rs.getString(1)%></td>
		    	<td><a href="memoContent.jsp?memoId=<%=rs.getString(1)%>" style="text-decoration: none; color: #000000;"><%=rs.getString(2)%> </a> </td>
		    	<td><%=rs.getString(4)%></td>
		    </tr>

<%	
		++count;
	}
	
	if(count==0){
%>
		  </tbody>
		</table>
				  <p style="text-align: center">등록된 글이 없습니다.</p>
<%		
	}
%>
		
	</div>
	<a class="btn btn-secondary" href="memberList.jsp" style="float: right;">회원목록</a>
	
</body>
<jsp:include page="footer.jsp"/>
</html>