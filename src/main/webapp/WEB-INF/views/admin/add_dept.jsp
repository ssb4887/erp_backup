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
    <link rel="stylesheet" href="${path}/resources/css/add_dept.css" />
    <!-- 네비 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css" />
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>

</head>
<body>
    <div id="wrap">
      <!-- nav 시작 -->
      <!-- 상단 bar -->
      <div id="topBar">
        <!-- 상단 제목 -->
        <h2>부서등록</h2>
      </div>

      <!-- nav bar -->
      <div id="nav">
        <!-- nav 상단부분 -->
        <div class="nav_top">
          <div class="profile"></div>
          <span>admin</span>
        </div>

        <!-- nav 하단부분 -->
        <div class="nav_bottom">
          <ul class="nav_list">
            <li>ERP_Project</li>
            <li style="background-color: #b9d7ea">부서등록</li>
            <li><a href = "add_employee">사원등록</a></li>
            <li><a href = "correct_auth">부서권한관리</a></li>
            <li><a href = "search_dept">사원관리</a></li>
          </ul>
        </div>
      </div>
      <!-- nav 끝 -->
      <!-- contents 부분 -->
      <div
        id="contents"
        style="float: right; width: 88%; height: 100%; margin-top: 2%"
      >
        <ul>
          <li>
            <span>부서코드</span>
            <input type="text" />
          </li>
          <li>
            <span>부서명</span>
            <input type="text" />
          </li>
          <li>
            <span>부서전화번호</span>
            <input type="text" />
          </li>
          <div id="addauth_btn">저장</div>
        </ul>
      </div>
    </div>
  </body>
</html>
