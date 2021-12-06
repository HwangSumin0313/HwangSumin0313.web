<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
	<title>게시판</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="main.jsp" style="color: #EAEAEA">HOME</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse"
	    		data-target="#navbarNavAltMarkup" aria-expanded="false" >
	    	<span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse justify-content-end" id="navbarNavAltMarkup">
			<div class="navbar-nav navbar-dark">
				<ul class="navbar-nav">
			    <%
					if(session.getAttribute("id")==null){//로그인 되지 않은 상태일 때
				%>
			        <li class="nav-item"><a class="nav-link" href="login.jsp" style="color: #BDBDBD">로그인</a></li>
			        <li class="nav-item"><a class="nav-link" href="join.jsp" style="color: #BDBDBD">회원가입</a></li>		   
				<%
					}else if(session.getAttribute("id")!=null){//로그인 된 상태일 때
				%>
					<li class="nav-item"><a class="nav-link" style="color: #FFFFFF"><%=session.getAttribute("id")%> 님 </a></li>
					<li class="nav-item"><a class="nav-link" href="./logoutAction.jsp" style="color: #BDBDBD">로그아웃</a></li>
				<%	
						if(session.getAttribute("id").equals("admin")){//관리자일 때

				%>
						<li class="nav-item"><a class="nav-link" href="memberList.jsp" style="color: #BDBDBD">회원목록</a></li>		
						
				<%
						}else{//관리자가 아닌 일반 회원 상태일 때
				%>
						<li class="nav-item"><a class="nav-link" href="./myPage.jsp" style="color: #BDBDBD">마이페이지</a></li>
				<%
						}
					}
				%>
				</ul>
			</div>
		</div>
	</nav>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>