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

<script>
$(document).ready(function() {
		// 등록, 수정 창 바꾸기
		var add_dept = $('#dept_add').val();
		var update_dept = $('#dept_update').val();
		
		$('#dept_update').hide();
		$('#updateBtn').hide();
		
		

		

				
		// ajax 로 리스트 받아오기
		$('#searchNameBtn').click(function() {
										var user_name = $('#dept_name').val();
										$.ajax({ // ajax 는 데이터를 받아오는거 url받아오는거 아님 
													type : 'GET',
													url : './searchName',
													data : {
														// 문자열 : 변수값...
														user_name : user_name
													},
													dataType : 'JSON',
													success : function(data) {
														//아이디에 해당하는 태그 자손들이 모두 삭제 
														$('#deptListTable')
																.empty();
														var str = '';
														str += '<table style="width: 100%; height: auto; text-align: center" class="table table-hover">';
														for (var i = 0; i < data.length; i++) {

															str += '<tr>';
															str += '<td style="width: 10%; text-align: center">'
																	+ data[i].user_num
																	+ '</td>';
															str += '<td style="width: 10%; text-align: center">********</td>';
															str += '<td style="width: 10%; text-align: center">'
																	+ data[i].user_name
																	+ '</td>';

															str += '</tr>';

														}
														str += '</table>';
														$('#usersListTable')
																.append(str);
													}

												});

									});
		

		
});
function addBtn(){
	$('#addBtn').click(function(){
		$('#dept_update').show();
		$('#dept_add').hide();
		$('#addBtn').hide();
		$('#updateBtn').show();
		
	});
}

function updateBtn(){
	$('#updateBtn').click(function(){
		$('#dept_update').hide();
		$('#dept_add').show();
		$('#addBtn').show();
		$('#updateBtn').hide();
	});
}

//수정 버튼을 눌렀을때
function btn_DEF() {
  	$('#dept_num').val('DEF');
	$('#dept_name').val('배정부서없음');
	$('#dept_tel').val('051-444-4444');
	updateBtn();
}

function btn_PUR() {
	$('#dept_num').val('PUR');
	$('#dept_name').val('구매관리부');
	$('#dept_tel').val('051-333-3333');
	updateBtn();
}

function btn_SAL() {
	$('#dept_num').val('SAL');
	$('#dept_name').val('영업부');
	$('#dept_tel').val('051-111-1111');
	updateBtn();
}

function btn_HRD() {
	$('#dept_num').val('HRD');
	$('#dept_name').val('인사부');
	$('#dept_tel').val('051-222-2222');
	updateBtn();
}


</script>

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
					<li><a href="adminMain">ERP_Project</a></li>
					<li><a href="search_employee">사원관리</a></li>
					<li><a href="add_employee">사원등록</a></li>
					<li
						style="background-color: #b9d7ea; font-weight: bold; color: #fff; font-size: 20px">부서관리</li>
					<li><a href="correct_auth">부서권한관리</a></li>
				</ul>
			</div>
		</div>

		<!-- 상단 bar -->
		<div id="topBar">
			<!-- 상단 제목 -->
			<h2>부서등록</h2>
		</div>
	</div>
	<!-- nav 끝 -->

	<!-- contents 부분 -->
	<div id="contents" style="float: right; width: 88%; height: 100%">

		<div class="container">
			<!--  전체 기준 그리드 -->
			<div class="row">

				<!-- 검색 폼, 테이블 -->
				<div class="form-group col-sm-6 col-md-6 col-lg-6">
					<form style="margin: 5% 0 0 4%">
						<!-- 검색어 입력 -->
						<div class="row">
							<div class="form-group col-sm-6 col-md-6 col-lg-6">
								<input type="text" name="search_dept_name" class="form-control"
									placeholder="부서검색" id="search_dept_name" />
							</div>

							<!-- 검색버튼 -->
							<div class="form-group col-sm-3 col-md-3 col-lg-3">
								<button type="button" class="btn btn-info btn-block"
									style="background-color: #b9d7ea; border: 1px solid #b9d7ea"
									id="searchDeptBtn">검색</button>
							</div>

							<!-- 부서등록 -->
							<div class="form-group col-sm-3 col-md-3 col-lg-3">
								
									<button type="button" class="btn btn-info btn-block"
										style="background-color: #769fcd; border: 1px solid #769fcd">
										부서 삭제</button>
							
							</div>


						</div>
						<div class="form-group col-sm-6 col-md-6 col-lg-6">
							<!-- 빈칸 잡아주는 역할 -->
						</div>
					</form>



				</div>
			</div>
			<!-- 첫 번째 row칸 끝 -->

			<!-- 두 번째 row칸 시작 -->
			<div class="row">
				<!-- 테이블 항목 -->
			<form method = "POST" action = "./updateDeptAction">
				<div class="form-group col-sm-6 col-md-6 col-lg-6"
					class="table-responsive"
					style="width: 570px; height: auto; margin-left: 1%;">
					<div class="jumbotron" style="background-color: #f7fbfc; border-top: 1px solid #000; border-bottom: 1px solid #000">
					
						<!-- 부서목록 제목 -->
						<h4 style="text-align: center; font-size: 20px; margin-bottom: 10%">부서 목록</h4>
						<!-- 테이블 항목 표시 -->
						<div>
							<table style="width: 100%; height: auto; text-align: center;"
								class="table borderless">
								<tr>
									<td style="width: 20%; text-align: center">선택</td>
									<td style="width: 30%; text-align: center">부서명</td>
									<td style="width: 20%; text-align: center">부서코드</td>
									<td style="width: 30%; text-align: center">부서전화번호</td>
								</tr>
							</table>
						</div>

						<!-- 부서 목록 -->
						<div class="table-responsive" style="width: 100%; height: 420px;">
							<div id="usersListTable">
								<table style="width: 100%; height: auto; text-align: center; overflow: scroll-y;"
									class="table table-hover">
									<form method = "POST" action = "inputAction">
									<c:forEach var="dept" items="${dept_list}">
															 <!--  controller에서 받아옴 -->
										<tr>
											<td style="width: 20%; text-align: center">
												<%-- <button type="button" class="btn btn-success form-control" onclick="btn_${dept.dept_num}()">수정</button> --%>
												<input type ="radio" name = "dept_list" value = "${dept.dept_num}" />
											</td>
											<td style="width: 30%; text-align: center">${dept.dept_name }</td>
											<td style="width: 20%; text-align: center">${dept.dept_num }</td>
											<td style="width: 30%; text-align: center">${dept.dept_tel }</td>
										</tr>
									</c:forEach>
								</form>
								</table>
									<div style = "float: right; width: 100%; height: 30px; margin-top: 30%;">
										<a href = "" class = "btn btn-warning">삭제</a>
										<a href = "" class = "btn btn-info">수정</a>					
									</div>
							</div>
						</div>
					</div>
				</div>


				<!-- 등록, 수정 하는 화면 -->
				<div class="form-group col-sm-6 col-md-6 col-lg-6"
					style="height: 700px">
					<div class="jumbotron"
						style="width: 100%; height: 647px; background-color: #f7fbfc; border-top: 1px solid #000; border-bottom: 1px solid #000">
						<h4 style="text-align: center; font-size: 20px" id = "dept_add">부서 등록</h4>
						<h4 style="text-align: center; font-size: 20px" id = "dept_update">부서 수정</h4>
						<div class="row">

							<div class="row" style="margin-top: 7%">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<p style="font-size: 16px">부서명</p>
									<input type="text" class="form-control" name = "dept_name" id = "dept_name" value = "${dept.dept_name }">
								</div>
							</div>

							<div class="row">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<p style="font-size: 16px">부서번호</p>
									<input type="text" class="form-control" name = "dept_num" id = "dept_num" value = "${dept.dept_num }" readonly>
								</div>
							</div>

							<div class="row">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<p style="font-size: 16px">부서 전화번호</p>
									<input type="text" class="form-control" name = "dept_tel" id = "dept_tel" value = "${dept.dept_tel }">
								</div>
							</div>

							<div class="row" style="margin-top: 40%">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<!-- <button type="button" class="btn btn-info form-control" id = "updateBtn">수정</button>
									<button type="button" class="btn btn-info form-control" id = "addBtn">등록</button> -->
									<a href = "./update?dept_num=${dept.dept_num }"class = "btn btn-success">수정</a>
									
									<input type = "submit" class = "btn btn-info" value = "등록">
								</div>

							
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
			<!-- 두 번째 row칸  -->
		</div>
	</div>

</body>
</html>
