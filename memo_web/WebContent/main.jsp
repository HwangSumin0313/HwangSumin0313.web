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
	<title>�Խ���</title>
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
		<a class="btn btn-secondary" href="writeAllow.jsp" style="float: right; margin: 0 0 10px;">�۾���</a>	
	    <table class="table table-bordered">
		  <thead>
		    <tr style="text-align: center;">
		      <th scope="col">��ȣ</th>
		      <th scope="col">����</th>
		      <th scope="col">�ۼ���</th>
		    </tr>
		</thead>
		<tbody>
		<%
			Connection conn=null; //DB�� ��������ִ� ��ü
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			int count = 0;
			
			try {
				String driver="oracle.jdbc.driver.OracleDriver";
				String url="jdbc:oracle:thin:@localhost:1521:orcl";
				 	
				Class.forName(driver);  //����̹� �̸����� ����̹��� �ε�
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
		<a> �� <%=count%>���� ���� �ֽ��ϴ�.</a>
		<a class="btn btn-secondary" href="writeAllow.jsp" style="float: right;">�۾���</a>	
	</div>
	<a style="text-align: center;"> </a>
	<jsp:include page="footer.jsp"/>
</body>
</html>