<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<head>
	<title>ȸ������ ������</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
</head>

<body>
<jsp:include page="navBar.jsp"/>
	<form name="join" action="joinAction.jsp" method="post" style="padding: 50px">
	<h2 style="text-align:center; padding-bottom:20px">ȸ������</h2>
	<hr class="my-4">
	<div class="jumbotron-light" style="padding: 50px; margin: 50px auto; width: 700px">
		<div class="form-group">
			<label>���̵�</label>
			<input type="text" class="form-control" name="id" maxlength=20>
			<small id="help" class="form-text text-muted">*�ִ� 20��</small>
		</div>
		<div class="form-group">
			<label>��й�ȣ</label>
			<input type="password" class="form-control" name="password" maxlength=20>
			<small id="help" class="form-text text-muted">*�ִ�20��</small>
		</div>
		<div class="form-group">
			<label>�̸���</label>
			<input type="text" class="form-control" name="email" maxlength=50>
		</div>
		<div class="form-group">
			<label>�̸�</label>
			<input type="text" class="form-control" name="name" maxlength=20>
		</div>
		<div class="form-group" style="margin-top: 20px">
			<label style="margin: 0 20px 0 0">����</label>
			<div class="btn-group btn-group-toggle" data-toggle="buttons">
				<label class="btn btn-outline-dark">
				  <input type="radio" name="gender" value="��" checked>��
				</label>
				<label class="btn btn-outline-dark">
				  <input type="radio" name="gender" value="��">��
				</label>
			</div>
		</div>
		<input type="submit" class="btn btn-outline-dark" value="�����ϱ�" style="margin-top: 20px; float: right">
	</div>
	</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
<jsp:include page="footer.jsp"/>
</body>
</html>
           