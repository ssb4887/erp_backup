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
          <span>admin</span>
        </div>

        <!-- nav 하단부분 -->
        <div class="nav_bottom">
          <ul class="nav_list">
            <li><a href = "main">ERP_Project</a></li>
            <li><a href = "add_dept">부서등록</a></li>
            <li><a href = "add_employee">사원등록</a></li>
            <li><a href = "correct_auth">부서권한관리</a></li>
            <li style="background-color: #b9d7ea">사원관리</li>
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
                  placeholder="사원검색"
                />
              </div>

              <!-- 검색버튼 -->
              <div class="form-group col-sm-3 col-md-3 col-lg-3">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #b9d7ea; border: 1px solid #b9d7ea"
                >
                  검색
                </button>
              </div>

              <!-- 사원등록 -->
              <div class="form-group col-sm-3 col-md-3 col-lg-3">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #769fcd; border: 1px solid #769fcd"
                >
                  사원등록
                </button>
              </div>
            </div>
          </form>
        </div>

        <!-- 테이블 항목 -->
        <div
          class="table-responsive"
          style="
            width: 1070px;
            height: auto;
            background-color: #f7fbfc;
            margin-left: 1%;
            border-top: 3px ridge #f9f9f9;
            border-bottom: 3px ridge #f9f9f9;
            box-sizing: border-box;
          "
        >
          <table
            style="
              width: 1050px;
              height: auto;
              margin: 0 -2% 0 0;
              text-align: center;
            "
            class="table borderless"
          >
            <tr>
              <td style="width: 10%; text-align: center">사원번호</td>
              <td style="width: 10%; text-align: center">비밀번호</td>
              <td style="width: 10%; text-align: center">이름</td>
              <td style="width: 10%; text-align: center">부서코드</td>
              <td style="width: 15%; text-align: center">전화번호</td>
              <td style="width: 15%; text-align: center">이메일</td>
              <td style="width: 30%; text-align: center">주소</td>
            </tr>
          </table>
        </div>
        <!-- 사원 목록 -->

        <div
          class="table-responsive"
          style="
            width: 1070px;
            height: 600px;
            margin-left: 1%;
            overflow: scroll;
          "
        >
          <table
            style="width: 100%; height: auto; text-align: center"
            class="table table-hover"
          >
            <tr>
              <td style="width: 10%; text-align: center">SAL001</td>
              <td style="width: 10%; text-align: center">******</td>
              <td style="width: 10%; text-align: center">홍길동</td>
              <td style="width: 10%; text-align: center">SAL</td>
              <td style="width: 15%; text-align: center">010-2222-2222</td>
              <td style="width: 15%; text-align: center">songeond@email.com</td>
              <td style="width: 30%; text-align: center">
                부산시 사상구 괘법동
              </td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
            <tr>
              <td>SAL001</td>
              <td>******</td>
              <td>홍길동</td>
              <td>SAL</td>
              <td>010-2222-2222</td>
              <td>songeond@email.com</td>
              <td>부산시 사상구 괘법동</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <!-- 테이블 끝 -->
  </body>
</html>
