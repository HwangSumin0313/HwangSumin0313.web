<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>글쓰기</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <h1 class="display-4">MEMO BOARD</h1>
	    <p class="lead">원하는 글을 자유롭게 작성하세요!</p>
	  </div>
	</div>
	<form name="write" action="writeOK.jsp" method="post">
		<div style="width: 600px; hight:1000; margin: 100px auto; content-align: center;">
			<div class="mb-3">
			  <label class="form-label">제목</label>
			  <input type="text" class="form-control" maxlength=30 name="title" placeholder="제목을 입력하세요">
			</div>
			<div class="mb-3">
			  <label class="form-label">내용</label>
			  <textarea class="form-control" maxlength=1000 name="content" rows="10" placeholder="내용을 입력하세요"></textarea>
			</div>
			<input type ="submit" class="btn btn-secondary" style=" float: right;" value="작성하기">
		</div>
	</form>
	<jsp:include page="footer.jsp"/>
</body>
</html>