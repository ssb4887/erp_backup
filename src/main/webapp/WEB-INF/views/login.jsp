<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERP Project</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <!-- 기본 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/reset.css" />
    <!-- 외부 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/login.css" />
    <!-- 네비 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>

	<!-- font 링크--------------------------------------------->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">

</head>

  <body>
    <div id="wrap">
        <form method = "POST" action = "./loginAction">
        <div id="login_box" style="margin-top: 20%;">
        <h3>LOGO</h3>
        
        <div>
          <i class="fas fa-user"> </i>
          <input type="text" placeholder="사원번호" name = "user_num"/>
        </div>
        <div>
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="비밀번호" name = "user_pw"/>
        </div>

        <input type="submit" id="login_btn" value="로그인" />
        
        
      </div>
      </form>
    </div>
  </body>
</html>
