# HwangSumin0313.web

JSP 자바 웹 게시판입니다.
부트 스트랩(Bootstrap)을 이용한 레이아웃을 바탕으로 간단한 CRUD 기능이 구현되어 있습니다.
아파치 톰캣(Apache Tomcat) 서버를 사용하고 오라클(Oracle) DB를 이용하여 회원 데이터를 관리합니다. 

***

### 회원가입 / 로그인

간단히 회원가입을 할 수 있으며 가입된 아이디와 비밀번호로 로그인 가능합니다. 또한 `ID: admin / PW: 1234` 를 통해 admin 계정에 로그인 할 수도 있습니다.
로그인 시 상단바에 아이디가 표시되며 **로그아웃** 기능과 본인정보를 확인할 수 있는 **마이페이지** 기능이 있습니다.

![login](/Images/login.PNG)
![login](/Images/join.PNG)

***

### 메인 페이지

작성된 게시글 리스트가 구현된 메인 페이지로, 글번호와 작성자가 표기됩니다. 리스트 위아래로 글쓰기 버튼이 존재하며 로그인했을 경우에만 작성이 가능합니다.

![main](/Images/main.PNG)

***

### 게시글 

글의 제목을 클릭하면 해당 게시글의 내용을 볼 수 있습니다. 제목과 작성자, 작성일이 함께 표시되며 만약 작성자 본인일 경우 수정하기와 삭제하기 버튼이 보여집니다.

![content](/Images/content.PNG)

***

### 글 작성 

글 작성시에는 제목과 내용을 입력하게 되어있습니다. 

![write](/Images/write.PNG)

***

### 회원 관리 

admin으로 로그인 시 가입된 회원 목록 목록과 해당 회원이 작성한 글을 확인할 수 있습니다. 또한, admin 계정은 모든 게시글을 삭제할 수 있습니다.

![memberList](/Images/memberList.PNG)
![memberContentList](/Images/memberContentList.PNG)



