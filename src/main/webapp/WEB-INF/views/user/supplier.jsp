<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERP Project</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
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
<script src="//ajax.googleapis.com/ajax/libs/jquery.min.js" charset="UTF-8"></script>

</head>

  <body>
    <div id="wrap">
     <!-- nav 시작 -->
     <jsp:include page = "userNav.jsp"/>

    <!-- contents 부분 -->
    <div id="contents" style="float: right; width: 88%; height: 100%">
      <div>
        <!-- 검색 폼 -->
        <div style="width: 500px; margin: 5% 0 0 4%">
            <!-- 검색어 입력 -->
            <div class="row">
              <div class="form-group col-sm-4 col-md-4 col-lg-4">
                <input
                  type="text"
                  name="dept_name"
                  class="form-control"
                  placeholder="공급처 검색"
                />
              </div>

              <!-- 검색버튼 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #b9d7ea; border: 1px solid #b9d7ea"
                >
                  검색
                </button>
              </div>

              <!-- 공급처 등록 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
				<button type="button" class="btn btn-info btn-block"
				    style="background-color: #769fcd; border: 1px solid #769fcd"
				    data-toggle="modal" data-target="#addSuppModal">등록</button>
              </div>

              <!-- 공급처 수정 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button type="button" class="btn btn-warning btn-block" id = "suppUpdateBtn">
                  수정
                </button>
              </div>
                
              <!-- 공급처 삭제 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button type="button" class="btn btn-danger btn-block" id = "suppDeleteBtn">
                  삭제
                </button>
              </div>
              
              
            </div>
        </div>
        <!-- 테이블 항목 -->
        <div
          class="table-responsive"
          style="
            width: 1620px;
            height: auto;
            background-color: #f7fbfc;
            margin-left: 2%;
            border-top: 3px ridge #f9f9f9;
            border-bottom: 3px ridge #f9f9f9;
            box-sizing: border-box;
          "
        >
          <table
            style="
              width: 1600px;
              height: auto;
              margin: 0 -2% 0 0;
              text-align: center;
            "
            class="table borderless"
          >
            <tr style="font-weight: 700">
              <td style="width: 5%; text-align: center">선택</td>
              <td style="width: 10%; text-align: center">공급처ID</td>
              <td style="width: 25%; text-align: center">공급처 주소</td>
              <td style="width: 10%; text-align: center">공급처 전화번호</td>
              <td style="width: 10%; text-align: center">담당자</td>
              <td style="width: 10%; text-align: center">담당자 전화번호</td>
              <td style="width: 10%; text-align: center">업종</td>
              <td style="width: 20%; text-align: center">메모</td>
            </tr>
          </table>
        </div>

        <!-- 목록 -->
        <div
          class="table-responsive"
          style="
            border-bottom: 3px ridge #f9f9f9;
            width: 1620px;
            height: 700px;
            margin-left: 2%;
            overflow: scroll-y;
          "
        >
          <table
            style="width: 100%; height: auto; text-align: center"
            class="table table-hover"
          >
         	<c:forEach var = "supplier" items = "${supp_list}">
	            <tr>
	              <td style="width: 5%; text-align: center; line-height: 30px">
	                <label><input type="checkbox" value="" /></label>
	              </td>
	              <td style="width: 10%; text-align: center; line-height: 30px">
	                ${supplier.supp_id }
	              </td>
	              <td style="width: 25%; text-align: center; line-height: 30px">
	                ${supplier.supp_add }
	              </td>
	              <td style="width: 10%; text-align: center; line-height: 30px">
	                ${supplier.supp_tel }
	              </td>
	              <td style="width: 10%; text-align: center; line-height: 30px">
	                ${supplier.user_num }
	              </td>
	              <td style="width: 10%; text-align: center; line-height: 30px">
	                ${supplier.user_tel }
	              </td>
	              <td style="width: 10%; text-align: center; line-height: 30px">
	                ${supplier.supp_type }
	              </td>
	              <td style="width: 20%; text-align: center; line-height: 30px">
	                ${supplier.supp_note }
	              </td>
            </tr>
			</c:forEach>
          </table>
        </div>
      </div>
    </div>
    <!-- 테이블 끝 -->
  </div>
  
	  <!-- 공급처 등록 모달 -->
	  <div id="addSuppModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
			<form method = "POST" action = "./addSupplierAction">
			<!--form으로 넘길거면 name 값 , ajax로 넘길거면 id  -->
				
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<!-- &times; : 부트스트랩 x 아이콘 만들기 -->
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">공급처 등록</h4>
				</div>
				
				<!-- 모달 바디 -->
				<div class="modal-body">
					
					<!-- 공급처 아이디 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>공급처 아이디</label>
								<input type="text" class="form-control" name="supp_id" id="supp_id">
							</div>
					</div>
					
					<!-- 공급처 주소 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>공급처 주소</label>
								<input type="text" class="form-control" name="supp_add" id="supp_add">
							</div>
					</div>
					
					<!-- 공급처 주소
					<div class="row">
							<div class="form-group col-sm-6 col-md-6 col-lg-6">
								
								<input type="text" class="form-control" id="">
							</div>
								
							<div class="form-group col-sm-6 col-md-6 col-lg-6">
								<button type="button" class = "btn btn-info btn-block" id = "addSearchBtn">주소찾기</button>
							</div>
					</div> -->
					
					<!-- 공급처 전화번호 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>공급처 전화번호</label>
								<input type="text" class="form-control" name="supp_tel" id="supp_tel">
							</div>
					</div>
					
					<!-- 담당 	사원 번호 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>담당 사원 번호</label>
								<input type="text" class="form-control" name="user_num" id="user_num">
							</div>
					</div>
					
					<!-- 담당 사원 전화번호 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>담당 사원 전화번호</label>
								<input type="text" class="form-control" name="user_tel" id="user_tel">
							</div>
					</div>
					
					<!-- 공급처 업종 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>공급처 업종</label>
								<input type="text" class="form-control" name="supp_type" id="supp_type">
							</div>
					</div>
					
					<!-- 비고란(특이사항 메모) -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<label>비고</label>
								<!-- <input type="text" class="form-control" id="">-->
								<!-- jQuery :  .val()이 아닌 .text()로 받아와야 한다.	 -->
								<textarea class="form-control" name="supp_note" id="supp_note" style="width: 100%; height: 7em; resize: none;">비고</textarea>						
							</div>
					</div>
					
					<!-- 등록 버튼 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<!-- <button type="button" class="btn btn-info form-control" id = "addBtn" style="background-color: #769fcd; border: 1px solid #769fcd">등록</button> -->
								<input type="submit" class="btn btn-info form-control" id = "addBtn" style="background-color: #769fcd; border: 1px solid #769fcd" value ="공급처 등록">
							</div>
					</div>
					
				</div>
				</form>
			</div>
		</div>
	</div>
  
  <!-- 공급처 등록 모달 종료 -->
  
  
  
  </body>
</html>
