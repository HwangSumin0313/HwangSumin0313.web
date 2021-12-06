<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.userDAO"%>
<%@ page import="user.user"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
	<title>마이페이지</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
<% 
	userDAO conn = new userDAO();
	String id = (String)session.getAttribute("id");
	ResultSet rs = conn.search(id);
	rs.next();
	
	//String email = showUser.getUserEmail();
	//String name = showUser.getUserName();
	//String gender = showUser.getUserGender();

%>

	<form style="padding: 50px">
	<h2 style="text-align:center; padding-bottom:20px">마이페이지</h2>
	<hr class="my-4">
	<div class="jumbotron-light" style="padding: 50px; margin: 50px auto; width: 700px">
		<div class="form-group">
			<label>아이디</label>
			<input type="text" class="form-control" name="id" value="<%=rs.getString("user_id")%>" readonly>
			<small id="help" class="form-text text-muted">*최대 20자</small>
		</div>
		<div class="form-group">
			<label>이메일</label>
			<input type="text" class="form-control" name="email" size=30 value="<%=rs.getString("user_email")%>">
		</div>
		<div class="form-group">
			<label>이름</label>
			<input type="text" class="form-control" name="name" value="<%=rs.getString("user_name")%>">
		</div>
		<div class="form-group" style="margin-top: 20px">
			<label>성별</label>
			 <p><%=rs.getString("user_gender")%></p>
		</div>
	</div>
	</form>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>