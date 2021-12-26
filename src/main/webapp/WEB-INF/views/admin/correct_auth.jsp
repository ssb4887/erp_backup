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
    				// 권한 -- 0 : 접근불가, 1 : 검색만 가능, 2 : 수정만 가능, 3 : 검색 수정 가능
    				
    				// 영업 권한
    				if(data.auth_sales == 3) {
    					$('#sales_search').attr('checked', true);
    					$('#sales_update').attr('checked', true);
    				}
    				else if(data.auth_sales == 2) {
    					$('#sales_search').attr('checked', false);
    					$('#sales_update').attr('checked', true);
    				}
    				else if(data.auth_sales == 1) {
    					$('#sales_search').attr('checked', true);
    					$('#sales_update').attr('checked', false);
    				}
    				else {
    					$('#sales_search').attr('checked', false);
    					$('#sales_update').attr('checked', false);
    				}
    				
    				// 영업 내역 권한
    				if(data.auth_salesList == 3) {
    					$('#salesList_search').attr('checked', true);
    					$('#salesList_update').attr('checked', true);
    				}
    				else if(data.auth_salesList == 2) {
    					$('#salesList_search').attr('checked', false);
    					$('#salesList_update').attr('checked', true);
    				}
    				else if(data.auth_salesList == 1) {
    					$('#salesList_search').attr('checked', true);
    					$('#salesList_update').attr('checked', false);
    				}
    				else {
    					$('#salesList_search').attr('checked', false);
    					$('#salesList_update').attr('checked', false);
    				}
    				
    				// 고객 권한
    				if(data.auth_clients == 3) {
    					$('#clients_search').attr('checked', true);
    					$('#clients_update').attr('checked', true);
    				}
    				else if(data.auth_clients == 2) {
    					$('#clients_search').attr('checked', false);
    					$('#clients_update').attr('checked', true);
    				}
    				else if(data.auth_clients == 1) {
    					$('#clients_search').attr('checked', true);
    					$('#clients_update').attr('checked', false);
    				}
    				else {
    					$('#clients_search').attr('checked', false);
    					$('#clients_update').attr('checked', false);
    				}
    				
    				// 주문 권한
    				if(data.auth_orders == 3) {
    					$('#orders_search').attr('checked', true);
    					$('#orders_update').attr('checked', true);
    				}
    				else if(data.auth_orders == 2) {
    					$('#orders_search').attr('checked', false);
    					$('#orders_update').attr('checked', true);
    				}
    				else if(data.auth_orders == 1) {
    					$('#orders_search').attr('checked', true);
    					$('#orders_update').attr('checked', false);
    				}
    				else {
    					$('#orders_search').attr('checked', false);
    					$('#orders_update').attr('checked', false);
    				}
    				
    				// 공급처 권한
    				if(data.auth_supplier == 3) {
    					$('#supplier_search').attr('checked', true);
    					$('#supplier_update').attr('checked', true);
    				}
    				else if(data.auth_supplier == 2) {
    					$('#supplier_search').attr('checked', false);
    					$('#supplier_update').attr('checked', true);
    				}
    				else if(data.auth_supplier == 1) {
    					$('#supplier_search').attr('checked', true);
    					$('#supplier_update').attr('checked', false);
    				}
    				else {
    					$('#supplier_search').attr('checked', false);
    					$('#supplier_update').attr('checked', false);
    				}
    				
    				// 제품 권한
    				if(data.auth_product == 3) {
    					$('#product_search').attr('checked', true);
    					$('#product_update').attr('checked', true);
    				}
    				else if(data.auth_product == 2) {
    					$('#product_search').attr('checked', false);
    					$('#product_update').attr('checked', true);
    				}
    				else if(data.auth_product == 1) {
    					$('#product_search').attr('checked', true);
    					$('#product_update').attr('checked', false);
    				}
    				else {
    					$('#product_search').attr('checked', false);
    					$('#product_update').attr('checked', false);
    				}
    				
    				// 회계 권한
    				if(data.auth_accounting == 3) {
    					$('#accounting_search').attr('checked', true);
    					$('#accounting_update').attr('checked', true);
    				}
    				else if(data.auth_accounting == 2) {
    					$('#accounting_search').attr('checked', false);
    					$('#accounting_update').attr('checked', true);
    				}
    				else if(data.auth_accounting == 1) {
    					$('#accounting_search').attr('checked', true);
    					$('#accounting_update').attr('checked', false);
    				}
    				else {
    					$('#accounting_search').attr('checked', false);
    					$('#accounting_update').attr('checked', false);
    				}
    				
    			}
    			
    			
    		});
    	});
    	
    	// 권한 수정 ajax
    	$('#auth_update_btn').click(function(){
    		
    		dept_name = $('#dept_name').val();
    		
    		$.ajax({
    				
    			type : 'POST',
    			url : './auth_update',
    			data : {
    				dept_name : dept_name
    			},
    			dataType : 'JSON',
    			success : function(data) {
    				dept_name.val(' ');
					$('#sales_search').attr('checked', false);
					$('#sales_update').attr('checked', false);
					$('#salesList_search').attr('checked', false);
					$('#salesList_update').attr('checked', false);
					$('#clients_search').attr('checked', false);
					$('#clients_update').attr('checked', false);
					$('#orders_search').attr('checked', false);
					$('#orders_update').attr('checked', false);
					$('#supplier_search').attr('checked', false);
					$('#supplier_update').attr('checked', false);
    				$('#product_search').attr('checked', false);
					$('#product_update').attr('checked', false);
    				$('#accounting_search').attr('checked', false);
					$('#accounting_update').attr('checked', false);
    				
    			}
    			
    		
    		
    		});
    	});
    	// update end
    });
    </script>
    
  </head>

<body>
  
<div id="wrap">
    
   	<!-- 유저 네비게이션 -->
    <jsp:include page = "adminNav.jsp" />

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


				<!-- 수정 하는 화면(오른쪽) -->
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
													영업 내역
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "salesList" id = "salesList_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "salesList" id = "salesList_update" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													고객
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "clients" id = "clients_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "clients" id = "clients_update" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													주문
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "orders" id = "orders_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "orders" id = "orders_update" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													공급처
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "supplier" id = "supplier_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "supplier" id = "supplier_update" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													제품
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "product" id = "product_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "product" id = "product_update" value ="2">
												</td>
											</tr>
											
											<tr>
											
												<td style="width: 40%; text-align: center">
													회계
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "accounting" id = "accounting_search" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "accounting" id = "accounting_update" value ="2">
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
</div>    
</body>
</html>
