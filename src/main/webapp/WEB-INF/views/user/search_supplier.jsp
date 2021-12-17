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
    <!-- 부트스트랩 CSS -->
    <link rel="stylesheet" href="${path}/resources/css/bootstrap/bootstrap.css" />
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
            <li><a href="myPage">마이페이지</a></li>
            <li><a href="search_product">제품관리</a></li>
            <li><a href="search_salesList">영업관리</a></li>
            <li style="background-color: #b9d7ea">
              <a href="search_supplier.html">공급처관리</a>
            </li>
            <li><a href="search_clients">고객관리</a></li>
            <li><a href="search_orders">발주관리</a></li>
            <li><a href="">회계</a></li>
          </ul>
        </div>
      </div>

      <!-- 상단 bar -->
      <div id="topBar">
        <!-- 상단 제목 -->
        <h2>공급처 관리</h2>
      </div>
    </div>
    <!-- nav 끝 -->

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
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #769fcd; border: 1px solid #769fcd"
                >
                  등록
                </button>
              </div>

              <!-- 공급처 삭제 -->
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
              <td style="width: 10%; text-align: center">공급처ID</td>
              <td style="width: 23%; text-align: center">공급처 주소</td>
              <td style="width: 10%; text-align: center">공급처 전화번호</td>
              <td style="width: 7%; text-align: center">담당자</td>
              <td style="width: 10%; text-align: center">담당자 전화번호</td>
              <td style="width: 8%; text-align: center">업종</td>
              <td style="width: 20%; text-align: center">메모</td>
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
                QQL1121
              </td>
              <td style="width: 23%; text-align: center; line-height: 30px">
                부산시 진구
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                051-022-1515
              </td>
              <td style="width: 7%; text-align: center; line-height: 30px">
                홍길동
              </td>
              <td style="width: 10%; text-align: center; line-height: 30px">
                010-2222-2222
              </td>
              <td style="width: 8%; text-align: center; line-height: 30px">
                제조업
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px">
                특이사항 없음
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
  </body>
</html>
