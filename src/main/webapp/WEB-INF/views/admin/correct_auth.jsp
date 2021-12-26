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
    	
    	$('#authSelect_btn').click(function(){
    		
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
    				$('#dept_num').val(data.dept_num);
    				$('#dept_name').attr('readonly', true);
    				// 권한 -- 0 : 접근불가, 1 : 검색만 가능, 2 : 수정만 가능, 3 : 검색 수정 가능
    				
    				// 영업 권한
    				if(data.auth_sales == 3) {
    					$('#salesSearch').attr('checked', true);
    					$('#salesUpdate').attr('checked', true);
    				}
    				else if(data.auth_sales == 2) {
    					$('#salesSearch').attr('checked', false);
    					$('#salesUpdate').attr('checked', true);
    				}
    				else if(data.auth_sales == 1) {
    					$('#salesSearch').attr('checked', true);
    					$('#salesUpdate').attr('checked', false);
    				}
    				else {
    					$('#salesSearch').attr('checked', false);
    					$('#salesUpdate').attr('checked', false);
    				}
    				
    				// 영업 내역 권한
    				if(data.auth_salesList == 3) {
    					$('#salesListSearch').attr('checked', true);
    					$('#salesListUpdate').attr('checked', true);
    				}
    				else if(data.auth_salesList == 2) {
    					$('#salesListSearch').attr('checked', false);
    					$('#salesListUpdate').attr('checked', true);
    				}
    				else if(data.auth_salesList == 1) {
    					$('#salesListSearch').attr('checked', true);
    					$('#salesListUpdate').attr('checked', false);
    				}
    				else {
    					$('#salesListSearch').attr('checked', false);
    					$('#salesListUpdate').attr('checked', false);
    				}
    				
    				// 고객 권한
    				if(data.auth_clients == 3) {
    					$('#clientsSearch').attr('checked', true);
    					$('#clientsUpdate').attr('checked', true);
    				}
    				else if(data.auth_clients == 2) {
    					$('#clientsSearch').attr('checked', false);
    					$('#clientsUpdate').attr('checked', true);
    				}
    				else if(data.auth_clients == 1) {
    					$('#clientsSearch').attr('checked', true);
    					$('#clientsUpdate').attr('checked', false);
    				}
    				else {
    					$('#clientsSearch').attr('checked', false);
    					$('#clientsUpdate').attr('checked', false);
    				}
    				
    				// 주문 권한
    				if(data.auth_orders == 3) {
    					$('#ordersSearch').attr('checked', true);
    					$('#ordersUpdate').attr('checked', true);
    				}
    				else if(data.auth_orders == 2) {
    					$('#ordersSearch').attr('checked', false);
    					$('#ordersUpdate').attr('checked', true);
    				}
    				else if(data.auth_orders == 1) {
    					$('#ordersSearch').attr('checked', true);
    					$('#ordersUpdate').attr('checked', false);
    				}
    				else {
    					$('#ordersSearch').attr('checked', false);
    					$('#ordersUpdate').attr('checked', false);
    				}
    				
    				// 공급처 권한
    				if(data.auth_supplier == 3) {
    					$('#supplierSearch').attr('checked', true);
    					$('#supplierUpdate').attr('checked', true);
    				}
    				else if(data.auth_supplier == 2) {
    					$('#supplierSearch').attr('checked', false);
    					$('#supplierUpdate').attr('checked', true);
    				}
    				else if(data.auth_supplier == 1) {
    					$('#supplierSearch').attr('checked', true);
    					$('#supplierUpdate').attr('checked', false);
    				}
    				else {
    					$('#supplierSearch').attr('checked', false);
    					$('#supplierUpdate').attr('checked', false);
    				}
    				
    				// 제품 권한
    				if(data.auth_product == 3) {
    					$('#productSearch').attr('checked', true);
    					$('#productUpdate').attr('checked', true);
    				}
    				else if(data.auth_product == 2) {
    					$('#productSearch').attr('checked', false);
    					$('#productUpdate').attr('checked', true);
    				}
    				else if(data.auth_product == 1) {
    					$('#productSearch').attr('checked', true);
    					$('#productUpdate').attr('checked', false);
    				}
    				else {
    					$('#productSearch').attr('checked', false);
    					$('#productUpdate').attr('checked', false);
    				}
    				
    				// 회계 권한
    				if(data.auth_accounting == 3) {
    					$('#accountingSearch').attr('checked', true);
    					$('#accountingUpdate').attr('checked', true);
    				}
    				else if(data.auth_accounting == 2) {
    					$('#accountingSearch').attr('checked', false);
    					$('#accountingUpdate').attr('checked', true);
    				}
    				else if(data.auth_accounting == 1) {
    					$('#accountingSearch').attr('checked', true);
    					$('#accountingUpdate').attr('checked', false);
    				}
    				else {
    					$('#accountingSearch').attr('checked', false);
    					$('#accountingUpdate').attr('checked', false);
    				}
    				
    			}
    			
    			
    		});
    	});
    	// 배열로 체크박스들의 값들을 받아오는 작업
    	function getCheckBox(items) {
    		var result = 0;
    		if(typeof(items) == 'object')
    				for (var i = 0; i < items.length; i++ ) result += items[i];
    		else
    				result = items;
    		return result;
    	}
    	
    	
    	// 권한 수정 ajax
    	$('#authUpdate_btn').click(function(){
    		
    		var dept_num = $('#dept_num').val();
    		// 띄어쓰기 ..	
    		var sales 			= getCheckBox($('input[name="sales"]:checked').val());
    		var salesList 		= getCheckBox($('input[name="salesList"]:checked').val());
    		var clients 			= getCheckBox($('input[name="clients"]:checked').val());
    		var orders 			= getCheckBox($('input[name="orders"]:checked').val());
    		var supplier 		= getCheckBox($('input[name="supplier"]:checked').val());
    		var product 		= getCheckBox($('input[name="product"]:checked').val());
    		var accounting 	= getCheckBox($('input[name="accounting"]:checked').val());

    		
    		$.ajax({
    				
    			type : 'POST',
    			url : './authUpdate',
    			data : {
    				dept_num : dept_num,
    				
    				auth_sales : sales,
    				auth_salesList : salesList,
    				auth_clients : clients,
    				auth_orders : orders,
    				auth_supplier : supplier,
    				auth_product : product,
    				auth_accounting : accounting
    			},
    			dataType : 'text',
    			success : function(data) {
    				if(data == 0) {
    				
	    				$('#dept_name').val(' ');
						$('#salesSearch').attr('checked', false);
						$('#salesUpdate').attr('checked', false);
						$('#salesListSearch').attr('checked', false);
						$('#salesListUpdate').attr('checked', false);
						$('#clientsSearch').attr('checked', false);
						$('#clientsUpdate').attr('checked', false);
						$('#ordersSearch').attr('checked', false);
						$('#ordersUpdate').attr('checked', false);
						$('#supplierSearch').attr('checked', false);
						$('#supplierUpdate').attr('checked', false);
	    				$('#productSearch').attr('checked', false);
						$('#productUpdate').attr('checked', false);
	    				$('#accountingSearch').attr('checked', false);
						$('#accountingUpdate').attr('checked', false);
    				}
    				else{
    					alert('권한 수정에 실패했습니다.');
    				}
    				
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
									<input type="hidden" class="form-control" name = "dept_num" id = "dept_num" readonly>
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
													<input type = "checkbox" name = "sales" id = "salesSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "sales"  id = "salesUpdate" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													영업 내역
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "salesList" id = "salesListSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "salesList" id = "salesListUpdate" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													고객
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "clients" id = "clientsSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "clients" id = "clientsUpdate" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													주문
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "orders" id = "ordersSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "orders" id = "ordersUpdate" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													공급처
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "supplier" id = "supplierSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "supplier" id = "supplierUpdate" value ="2">
												</td>
											</tr>
											
											<tr>
												<td style="width: 40%; text-align: center">
													제품
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "product" id = "productSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "product" id = "productUpdate" value ="2">
												</td>
											</tr>
											
											<tr>
											
												<td style="width: 40%; text-align: center">
													회계
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "accounting" id = "accountingSearch" value ="1">
												</td>
												<td style="width: 30%; text-align: center">
													<input type = "checkbox" name = "accounting" id = "accountingUpdate" value ="2">
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
