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
<!-- 제이쿼리  -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 기본 CSS -->
<link rel="stylesheet" href="${path}/resources/css/reset.css" />
<!-- 네비 CSS -->
<link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
<!-- 부트스트랩 CSS -->
<link rel="stylesheet"
	href="${path}/resources/css/bootstrap/bootstrap.css" />
<link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
<!-- 부트스트랩 JS -->
<script src="${path}/resources/js/bootstrap.js"></script>
<!-- AJAX -->
<script src="//ajax.googleapis.com/ajax/libs/jquery.min.js"
	charset="UTF-8"></script>
<!-- 주소찾기 -->
<script src="${path}/resources/js/address.js" charset="UTF-8"></script>

</head>
<body>
	<div id="wrap">
		<!-- nav 시작 -->

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
					<li><a href="main">ERP_Project</a></li>
					<li><a href="add_dept">부서등록</a></li>
					<li style="background-color: #b9d7ea">사원등록</li>
					<li><a href="correct_auth">부서권한관리</a></li>
					<li><a href="search_dept">사원관리</a></li>
				</ul>
			</div>

		</div>
		<!-- nav 종료  -->

		<!-- 상단 bar -->
		<div id="topBar">
			<!-- 상단 제목 -->
			<h2>사원등록</h2>
		</div>

		<!-- nav 끝 -->

		<!-- 사원등록 컨테이너(Bootstrap) -->
		<div id="contents" style="float: left; margin-top: 2%;">
			<div class="container">
				<div class="col-lg-3"></div>
				<div class="col-lg-6">
					<div class="jumbotron" style="background-color: #F7FBFC">
						<form method="POST" action="./dept_join">
							<h3 style="text-align: center; margin: -5% 0 10% 0;">사원등록</h3>

							<!-- 사원번호 입력 -->
							<div class="row">
								<div class="form-group col-sm-9 col-md-9 col-lg-9">
									<input type="text" name="user_num" class="form-control"
										placeholder="사원번호" readonly>
								</div>
								<div class="form-group col-sm-3 col-md-3 col-lg-3">
									<button type="button" class="btn btn-info btn-block"
										style="background-color: #B9D7EA; border: 1px solid #B9D7EA;"
										data-toggle="modal" data-target="#searchDeptModal">부서찾기</button>
								</div>
							</div>


							<!-- 부서번호 -->
							<div class="row">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<input type="text" class="form-control" id="dept_num"
										name="dept_num" placeholder="부서코드" readonly>
								</div>
							</div>

							<!-- 부서명 -->
							<div class="row">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<input type="text" class="form-control" id="dept_name"
										name="dept_name" placeholder="부서명" readonly>
								</div>
							</div>

							<!-- 비밀번호 입력 -->
							<div class="row">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<input type="password" class="form-control" id="user_pw"
										name="user_pw" placeholder="비밀번호" value="erp1234">
								</div>
							</div>

							<!-- 이름 입력 -->
							<div class="row">
								<div class="form-group cols-sm12 col-md-12 col-lg-12">
									<input type="text" class="form-control" name="user_name"
										placeholder="이름">
								</div>
							</div>

							<!-- 전화번호 입력 -->
							<div class="row">
								<div class="form-group cols-sm12 col-md-12 col-lg-12">
									<input type="text" class="form-control" name="user_tel"
										placeholder="전화번호">
								</div>
							</div>

							<!-- 이메일 입력 -->
							<div class="row">
								<div class="form-group cols-sm12 col-md-12 col-lg-12">
									<input type="email" class="form-control" name="user_email"
										placeholder="이메일">
								</div>
							</div>

							<!-- 주소 입력 -->
							<div class="row">
								<!-- 우편번호 -->
								<div class="form-group col-sm-6 col-md-6 col-lg-6">
									<input type="text" class="form-control" id="addr1" name="addr1"
										placeholder="우편번호" readonly>
								</div>

								<div class="form-group col-sm-6 col-md-6 col-lg-6">
									<button type="button" class="btn btn-info btn-block"
										style="background-color: #B9D7EA; border: 1px solid #B9D7EA;"
										data-toggle="modal" data-target="#addrModal">주소검색</button>
								</div>

								<!-- 주소 -->
								<div class="form-group cols-sm12 col-md-12 col-lg-12">
									<input type="text" class="form-control" id="addr2" name="addr2"
										placeholder="주소" readonly>
								</div>

								<!-- 상세 주소 -->
								<div class="form-group cols-sm12 col-md-12 col-lg-12">
									<input type="text" class="form-control" id="addr3" name="addr3"
										placeholder="상세 주소">
								</div>
							</div>

							<!-- 제출 버튼 -->
							<div class="form-group">
								<input type="submit" class="btn btn-info form-control"
									value="사원등록">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

<div id = "searchDeptModal" class = "modal fade" role = "dialog">
		<div class = "modal-dialog">
				<div class = "modal-content">
						<div class = "modal-header">														 <!-- &times; : 부트스트랩 x 아이콘 만들기 -->
								<button type = "button" class = "close" data-dismiss = "modal">&times;</button>
								<h4 class = "modal-title">이메일 인증</h4>
						</div>
						<div class = "modal-body">
								<div class = "row">
										<div class = "col-lg-8">
												<input type = "email" class = "form-control" id = "user_mail_modal" placeholder = "이메일">
										</div>
								
										<div class = "col-lg-4">
												<button type = "button" class = "btn btn-success btn-block" id = "sendAuthBtn">인증번호 전송</button>
										</div>
								</div>
								
								<div class = "row" id = "authDiv" style = "margin-top : 15px; display : none;">
										<div class = "col-lg-4">
												<input type = "text" class = "form-control" id = "auth_num" placeholder = "인증번호">
										</div>
								
										<div class = "col-lg-4">
												<button type = "button" class = "btn btn-primary btn-block" id = "authMailBtn">인증</button>
										</div>
										
										<div class = "col-lg-4">

										</div>
								</div>
						</div>
				</div>
		</div>
</div>

</body>
</html>
