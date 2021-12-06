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
<h1> 회원 상세정보 </h1>
<%
	String id = request.getParameter("id");
	Connection conn=null; //DB와 연결시켜주는 객체
	PreparedStatement pstmt=null; //sql문을 전달할 객체
	ResultSet rs=null; //쿼리 결과를 가져오는 객체
	
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	
	Class.forName(driver);  //드라이버 이름으로 드라이버를 로드
	conn=DriverManager.getConnection(url,"hsm","1234");
	
	pstmt=conn.prepareStatement("SELECT * FROM member");
	rs = pstmt.executeQuery();
			
	while(rs.next()){
		if(rs.getString(1).equals(id)){
		%>
			<p>아이디: <%=rs.getString(1) %></p>
			<p>비밀번호: <%=rs.getString(2) %></p>
			<p>이름: <%= rs.getString(3)%></p>
			<p>성별: <%= rs.getString(4)%></p>
			<p>이메일주소: <%=rs.getString(5) %></p>
		
		<%
		}
	}
%>

	<a href="memberList.jsp">뒤로가기</a>
	<jsp:include page="footer.jsp"/>
</body>
</html>