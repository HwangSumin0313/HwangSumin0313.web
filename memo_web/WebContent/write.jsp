<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>�۾���</title>
</head>
<body>
<jsp:include page="navBar.jsp"/>
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <h1 class="display-4">MEMO BOARD</h1>
	    <p class="lead">���ϴ� ���� �����Ӱ� �ۼ��ϼ���!</p>
	  </div>
	</div>
	<form name="write" action="writeOK.jsp" method="post">
		<div style="width: 600px; hight:1000; margin: 100px auto; content-align: center;">
			<div class="mb-3">
			  <label class="form-label">����</label>
			  <input type="text" class="form-control" maxlength=30 name="title" placeholder="������ �Է��ϼ���">
			</div>
			<div class="mb-3">
			  <label class="form-label">����</label>
			  <textarea class="form-control" maxlength=1000 name="content" rows="10" placeholder="������ �Է��ϼ���"></textarea>
			</div>
			<input type ="submit" class="btn btn-secondary" style=" float: right;" value="�ۼ��ϱ�">
		</div>
	</form>
	<jsp:include page="footer.jsp"/>
</body>
</html>