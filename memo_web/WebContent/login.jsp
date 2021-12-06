<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="navBar.jsp"/>
	<div class="jumbotron" style="padding: 50px; margin: 50px auto; width: 350px; text-align: center">
		<h3 style="text-align:center; padding-bottom:20px">로그인</h3>
		<form name="login" action="./loginAction.jsp" method="post">
		  <div class="form-group">
		    <input type="text" class="form-control" name="id" maxlength="20" placeholder="아이디">
		  </div>
		  <div class="form-group">
		    <input type="password" class="form-control" name="password" maxlength="20" placeholder="비밀번호">
		  </div>
		  <input type="submit" class="btn btn-primary form control" value="로그인" style="width: 250px">
		</form>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="footer.jsp"/>
</body>
</html>