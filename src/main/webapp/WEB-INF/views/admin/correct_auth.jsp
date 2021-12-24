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
    <!-- 네비 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/erpNav.css" />
    <!-- 외부 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/correct_auth.css" />
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap-test.css" />
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/custom.css" />
    <!-- 제이쿼리  -->
    <script src="${path}/resources/js/jquery.js"></script>
    <script>
    $(document).ready(function(){
    	
    	$('#auth_select_btn').click(function(){
    		
    		var dept_num = $('input[name="table_dept_num"]:checked').val();
    		
    		$.ajax({
    			type: 'POST',
    			url : './getDepartment',
    			data : {
    				dept_num : dept_num
    			},
    			dataType : 'JSON',
    			success : function(data) {
    				$('#dept_name').val(data.dept_name);
    				$('#dept_name').attr('readonly', true);
    				if(data.auth_sales == 3) {
    					$('#sales_search').attr('checked');
    					$('#sales_update').attr('checked');
    				}
    				else if(data.auth_sales == 2) {
    					$('#sales_update').attr('checked');
    				}
    				
    			}
    			
    			
    		});
    	});
    	
    	/* $('#auth_update_btn').click */
    	
    	
    });
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
					<li><a href="search_dept">부서관리</a></li>
					<li style="background-color: #b9d7ea; font-weight: bold; color: #fff; font-size: 20px"><a href="correct_auth">부서권한관리</a></li>
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
	<div id="contents" style="float: right; width: 88%; height: 100%;">

		<div class="container" style="margin-top: 5%;">
			<!--  전체 기준 그리드 -->
			<div class="row">
			
			<!-- 테이블 항목(왼쪽) -->
				<div class="form-group col-sm-6 col-md-6 col-lg-6" class="table-responsive"	style="width: 700px; height: 70vh; margin-left: 1%;">
					
					<div class="jumbotron" style="background-color: #f7fbfc; border: 2px solid #b9d7ea;">
					
						<!-- 검색 폼, 테이블 -->

						<!-- 검색어 입력 -->
						<div class="row">
						
							<div class="form-group col-sm-6 col-md-6 col-lg-6">
								<input type="text" name="search_dept_name" class="form-control"
									placeholder="부서명 검색" id="search_dept_name" />
							</div>

							<!-- 검색 버튼(이름 기준)	 -->
							<div class="form-group col-sm-3 col-md-3 col-lg-3">
								<button type="button" class="btn btn-info btn-block" style="background-color: #b9d7ea; border: 1px solid #b9d7ea"	id="searchDeptBtn">검색</button>
							</div>
							
							<div class="form-group col-sm-3 col-md-3 col-lg-3">
								<button type ="button" id = "auth_select_btn" class = "btn btn-warning btn-block">권한 수정</button>
							</div>

						</div>
			
			
						<!-- 부서목록 제목 -->
						<h4 style="text-align: center; font-size: 20px; margin-top: 10%">부서 목록</h4>
						
						<!-- 테이블 항목 표시 -->
						<div>
							<table style="width: 100%; height: auto; text-align: center;" class="table borderless">
								<tr>
									<td style="width: 20%; text-align: center">선택</td>
									<td style="width: 30%; text-align: center">부서명</td>
									<td style="width: 20%; text-align: center">부서코드</td>
									<td style="width: 30%; text-align: center">부서전화번호</td>
								</tr>
							</table>
						</div>


						<!-- 부서 목록 -->
						<div class="table-responsive" style="width: 100%; height: 50vh ">
							<div id="deptListTable">
								<table style="width: 100%; height: auto; text-align: center; overflow: scroll-y;" class="table table-hover">
									<c:forEach var="dept" items="${dept_list}"> <!--  controller에서 받아옴 -->
															
										<tr>
											<td style="width: 20%; text-align: center">
												<input type ="radio" name = "table_dept_num" value = "${dept.dept_num}" />
											</td>
											<td style="width: 30%; text-align: center">${dept.dept_name }</td>
											<td style="width: 20%; text-align: center">${dept.dept_num }</td>
											<td style="width: 30%; text-align: center">${dept.dept_tel }</td>
										</tr>
										
									</c:forEach>
								</table>
									
							</div>
						</div>
						
					</div>
				</div>


				<!-- 등록, 수정 하는 화면(오른쪽) -->
				<div class="form-group col-sm-6 col-md-6 col-lg-6" style="width: 430px; height: 100vh;">
			
					<div class="jumbotron" style="width: 100%; height: 88vh; background-color: #f7fbfc; border: 2px solid #b9d7ea">
												
							<div class="row">
							
								<div class="form-group col-sm-4 col-md-4 col-lg-4" style="text-align: center;">
									<span style="line-height : 200%,; font-size: 20px;">부서명</span>
								</div>
								
								<div class="form-group col-sm-8 col-md-8 col-lg-8">
									<input type="text" class="form-control" name = "dept_name" id = "dept_name" readonly>
								</div	>
								
								
							</div>								<!-- 테이블 항목 -->
							<div class="row" style="margin-top: 15%">
								<table style="width: 100%; height: auto; text-align: center;" class="table borderless">
									<tr>
										<td style="width: 40%; text-align: center">부서명</td>
										<td style="width: 30%; text-align: center">검색</td>
										<td style="width: 30%; text-align: center">수정</td>
									</tr>
								</table>
							</div>
							
							
							<div class="row">
								<div class="auth_update_table">
									<table style="width: 100%; height: auto; text-align: center;" class="table borderless">
										
											<tr>
												<td style="width: 40%; text-align: center">
													영업
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "sales" id = "sales_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "sales"  id = "sales_update" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													영업항목
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "salesList" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "salesList" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													고객
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "clients" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "clients" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													주문
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "orders" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "orders" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													공급처
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "supplier" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "supplier" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													제품
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "product" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "product" value ="2">
												</td>
											</tr>
											
											<tr>
											
												<td style="width: 40%; text-align: center">
													회계
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "accounting" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "accounting" value ="2">
												</td>
											</tr>
											
									</table>
								</div>
							</div>
							
							
							<!-- 등록, 수정 버튼 -->
							<div class="row" style="margin-top: 20%">
								<div class="form-group col-sm-12 col-md-12 col-lg-12">
									<button type="button" class="btn btn-info form-control" id = "auth_update_btn" style="background-color: #769fcd; border: 1px solid #769fcd">등록</button>
								</div>
							</div>
							
						
					</div>
				</div>
			</div>
			
			
		</div>
	</div>
    
  </body>
</html>
