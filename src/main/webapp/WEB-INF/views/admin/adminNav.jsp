<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERP Project</title>
</head>
<body>
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
				<li><a href="adminMain">ERP_Project</a></li>
				<li><a href="employee">사원관리</a></li>
				<li><a href="add_employee">사원등록</a></li>
				<li><a href="department">부서관리</a></li>
				<li><a href="correct_auth">부서권한관리</a></li>
			</ul>
		</div>
	</div>

	<!-- 상단 bar -->
	<div id="topBar">
		<!-- 상단 제목 -->
		<h2>부서등록</h2>
	</div>
	
</body>
</html>
