<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERP Project</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<!-- 기본 CSS -->
<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<!-- 네비 CSS -->
<link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
<!-- 부트스트랩 CSS -->
<link rel="stylesheet"
	href="${path}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
<!-- 제이쿼리  -->
<script src="${path}/resources/js/jquery.js"></script>

</head>
<body>
	<div id="wrap">
		<!-- nav 시작 -->

		<!-- nav bar -->
		<div id="nav">
			<!-- nav 상단부분 -->
			<div class="nav_top">
				<div class="profile"></div>
				<span>user</span>
			</div>

			<!-- nav 하단부분 -->
			<div class="nav_bottom">
          		<ul class="nav_list">
            		<li><a href="main">ERP_Project</a></li>
            		<li style="background-color: #b9d7ea"><a href="myPage">마이페이지</a></li>
            		<li><a href="search_product">제품관리</a></li>
            		<li><a href="search_salesList">영업관리</a></li>
            		<li><a href="search_supplier">공급처관리</a></li>
            		<li ><a href="search_clients">고객관리</a></li>
            		<li><a href="search_orders">발주관리</a></li>
            		<li><a href="">회계</a></li>
          		</ul>
        	</div>
		</div>


		<!-- 상단 bar -->
		<div id="topBar">
			<!-- 상단 제목 -->
			<span style= "font-size: 2em; margin: 2% 0 0 13%; font-weight: 700; line-height: 100px;">마이 페이지</span>
			<div style="float: right; line-height: 100px;">
				<a href="${path }/logout">로그아웃</a>
			</div>
		</div>

	</div>
	<!-- nav 끝 -->

	</div>
</body>
</html>
