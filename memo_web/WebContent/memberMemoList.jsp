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
	    <p class="lead">���ϴ� ���� �����Ӱ� �ۼ��ϼ���!</p>
	  </div>
	</div>
	<div class="container" style="width: 800px; margin: 100px auto; ">
	    <table class="table table-bordered">
		  <thead>
		    <tr style="text-align: center;">
		      <th scope="col" style="width: 100px; text-align: center;">��ȣ</th>
		      <th scope="col">����</th>
		      <th scope="col" style="width: 150px; text-align: center;">�ۼ���</th>
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
				  <p style="text-align: center">��ϵ� ���� �����ϴ�.</p>
<%		
	}
%>
		
	</div>
	<a class="btn btn-secondary" href="memberList.jsp" style="float: right;">ȸ�����</a>
	
</body>
<jsp:include page="footer.jsp"/>
</html>