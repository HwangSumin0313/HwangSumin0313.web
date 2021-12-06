<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<head>
	<title>회원가입 페이지</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>

<body>
<jsp:include page="navBar.jsp"/>
	<form name="join" action="joinAction.jsp" method="post" style="padding: 50px">
	<h2 style="text-align:center; padding-bottom:20px">회원가입</h2>
	<hr class="my-4">
	<div class="jumbotron-light" style="padding: 50px; margin: 50px auto; width: 700px">
		<div class="form-group">
			<label>아이디</label>
			<input type="text" class="form-control" name="id" maxlength=20>
			<small id="help" class="form-text text-muted">*최대 20자</small>
		</div>
		<div class="form-group">
			<label>비밀번호</label>
			<input type="password" class="form-control" name="password" maxlength=20>
			<small id="help" class="form-text text-muted">*최대20자</small>
		</div>
		<div class="form-group">
			<label>이메일</label>
			<input type="text" class="form-control" name="email" maxlength=50>
		</div>
		<div class="form-group">
			<label>이름</label>
			<input type="text" class="form-control" name="name" maxlength=20>
		</div>
		<div class="form-group" style="margin-top: 20px">
			<label style="margin: 0 20px 0 0">성별</label>
			<div class="btn-group btn-group-toggle" data-toggle="buttons">
				<label class="btn btn-outline-dark">
				  <input type="radio" name="gender" value="남" checked>남
				</label>
				<label class="btn btn-outline-dark">
				  <input type="radio" name="gender" value="여">여
				</label>
			</div>
		</div>
		<input type="submit" class="btn btn-outline-dark" value="가입하기" style="margin-top: 20px; float: right">
	</div>
	</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="footer.jsp"/>
</body>
</html>
           