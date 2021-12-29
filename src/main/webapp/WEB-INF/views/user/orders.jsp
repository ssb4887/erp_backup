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
    
    <!-- 유저 네비게이션 -->
    <jsp:include page = "userNav.jsp" />

    <!-- contents 부분 -->
    <div id="contents" style="float: right; width: 88%; height: 100%">
      <div>
        <!-- 검색 폼 -->
        <div style="width: 500px">
          <form style="margin: 5% 0 0 4%">
            <!-- 검색어 입력 -->
            <div class="row">
              <div class="form-group col-sm-6 col-md-6 col-lg-6">
                <input
                  type="text"
                  name="dept_name"
                  class="form-control"
                  placeholder="발주 목록 검색"
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
				    data-toggle="modal" data-target="#addOrdersModal">등록</button>
              </div>
              

              <!-- 고객수정 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button type="button" class="btn btn-warning btn-block">
                  수정
                </button>
              </div>

              <!-- 고객삭제 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button type="button" class="btn btn-danger btn-block">
                  삭제
                </button>
              </div>
              
              
            </div>
          </form>
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
              <td style="width: 10%; text-align: center">발주번호</td>
              <td style="width: 15%; text-align: center">제품번호</td>
              <td style="width: 20%; text-align: center">발주일자</td>
              <td style="width: 10%; text-align: center">입고일</td>
              <td style="width: 10%; text-align: center">수량</td>
              <td style="width: 13%; text-align: center">금액</td>
              <td style="width: 10%; text-align: center">공급처ID</td>
              <td style="width: 7%; text-align: center">수정</td>
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
            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>

            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                qqq-232
              </td>
              <td style="width: 15%; text-align: center; line-height: 30px">
                asd-1151
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                2021-12-10
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                2021-12-25
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                500
              </td>
              <td style="width: 13%; text-align: center; line-height: 30px">
                100000000
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                QEW21
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <!-- 테이블 끝 -->
  </div>
  
  	  <!-- 발주 등록 모달 -->
	  <div id="addOrdersModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				
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
								<input type="text" class="form-control" id="">
							</div>
					</div>
					
					<!-- 공급처 주소 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<input type="text" class="form-control" id="">
							</div>
					</div>
					
					<!-- 공급처 전화번호 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<input type="text" class="form-control" id="">
							</div>
					</div>
					
					<!-- 담당 	사원 번호 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<input type="text" class="form-control" id="">
							</div>
					</div>
					
					<!-- 담당 사원 전화번호 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
							</div>
					</div>
					
					<!-- 공급처 업종 -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<input type="text" class="form-control" id="">
							</div>
					</div>
					
					<!-- 비고란(특이사항 메모) -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<input type="text" class="form-control" id="">						
							</div>
					</div>
					
					<!-- 등록 버튼 -->
					<!-- 비고란(특이사항 메모) -->
					<div class="row">
							<div class="form-group col-sm-12 col-md-12 col-lg-12">
								<button type="button" class="btn btn-info form-control" id = "addBtn" style="background-color: #769fcd; border: 1px solid #769fcd">등록</button>
							</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
  
  <!-- 공급처 등록 모달 종료 -->
</body>
</html>
