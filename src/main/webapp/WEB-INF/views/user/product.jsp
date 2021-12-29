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
    <!-- 부트스트랩 JS -->
	<script src="${path}/resources/js/bootstrap.js"></script>
    <!-- 제이쿼리 -->
    <script src="${path}/resources/js/jquery.js"></script>

<script>
$(document).ready(function(){
	// 제품 리스트 검색 
	$('#proSearchBtn').click(function(){
		var pro_name = $('#pro_name').val();
		$.ajax({
			
			type  : 'GET',
			url		: './searchProduct',
			data  : {
				pro_name : pro_name
			},
			dataType : 'JSON',
			success : function(data){
				$('#productListTable').empty();
				var str='';
				str += '<table style="width: 100%; height: auto; text-align: center" class="table table-hover">';
				for(var i = 0; i < data.length; i++) {
					
					str += '<tr>';
		              str += '<td style="width: 5%; text-align: center; line-height: 30px"><label><input type="checkbox" value="" /></label></td>';
		              str += '<td style="width: 20%; text-align: center; line-height: 30px">'+ data[i].pro_num +'</td>';
		              str += '<td style="width: 20%; text-align: center; line-height: 30px">'+ data[i].pro_name +'</td>';
		              str += '<td style="width: 15%; text-align: center; line-height: 30px">'+ data[i].pro_color +'</td>';
		              str += '<td style="width: 15%; text-align: center; line-height: 30px">'+ data[i].pro_count +'</td>';
		              str += '<td style="width: 20%; text-align: center; line-height: 30px">'+ data[i].pro_note +'</td>';
		              str += '<td style="width: 5%; text-align: center; line-height: 30px"><button type="button" class="btn btn-info btn-block">수정</button></td>';
		            str += '</tr>';
				}
				
				str += '</table>';
				$('#productListTable').append(str);
			}
			
		});
	})
});
</script>

</head>
<body>
    <div id="wrap">
    <!-- 유저 네비게이션 -->
    <jsp:include page = "userNav.jsp" />

    <!-- contents 부분 -->
    <div id="contents" style="float: right; width: 88%; height: 100%">
      <div>
        <!-- 검색 폼 -->
        <div style="width: 600px; display: block">
          <form style="margin: 5% 0 -5% 4%">
            <!-- 검색어 입력 -->
            <div class="row">
              <div class="form-group col-sm-4 col-md-4 col-lg-4">
                <input
                  type="text"
                  name="pro_name"
                  class="form-control"
                  placeholder="제품 검색"
                  id="pro_name"
                />
              </div>

              <!-- 검색버튼 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  id="proSearchBtn"
                  style="background-color: #b9d7ea; border: 1px solid #b9d7ea"
                >
                  검색
                </button>
              </div>

              <!-- 제품등록 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button
                  type="button"
                  class="btn btn-info btn-block"
                  style="background-color: #769fcd; border: 1px solid #769fcd"
                  id = "proAddBtn"
                >
                  등록
                </button>
              </div>

              <!-- 제품수정 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
              	<button type="button" class="btn btn-warning btn-block" id = "proUpdateBtn">
              		수정
              	</button>
			 </div>
	
              <!-- 제품삭제 -->
              <div class="form-group col-sm-2 col-md-2 col-lg-2">
                <button type="button" class="btn btn-danger btn-block" id = "proDeleteBtn">
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
            width: 1650px;
            height: auto;
            display: block;
            background-color: #f7fbfc;
            margin: 2% 0 0 1%;
            border-top: 3px ridge #f9f9f9;
            border-bottom: 3px ridge #f9f9f9;
            box-sizing: border-box;
          "
        >
          <table
            style="
              width: 1630px;
              height: auto;
              margin: 0 -2% 0 0;
              text-align: center;
            "
            class="table borderless"
          >
            <tr style="font-weight: 700">
              <td style="width: 5%; text-align: center">선택</td>
              <td style="width: 20%; text-align: center">제품번호</td>
              <td style="width: 20%; text-align: center">제품명</td>
              <td style="width: 15%; text-align: center">색상</td>
              <td style="width: 15%; text-align: center">재고수량</td>
              <td style="width: 20%; text-align: center">비고</td>
              <td style="width: 5%; text-align: center">수정</td>
            </tr>
          </table>
        </div>
        <!-- 제품 목록 -->

        <div
          class="table-responsive"
          style="
            width: 1650px;
            height: 700px;
            margin-left: 1%;
            overflow: scroll-y;
          "
        >
        <div id="productListTable">
          <table
            style="width: 100%; height: auto; text-align: center"
            class="table table-hover"
          >
          <c:forEach var="product" items="${product_List }">
            <tr>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <label><input type="checkbox" value="" /></label>
              </td>
              <td style="width: 20%; text-align: center; line-height: 30px"> ${product.pro_num }</td>
              <td style="width: 20%; text-align: center; line-height: 30px">${product.pro_name }</td>
              <td style="width: 15%; text-align: center; line-height: 30px">${product.pro_color }</td>
              <td style="width: 15%; text-align: center; line-height: 30px">${product.pro_count }</td>
              <td style="width: 20%; text-align: center; line-height: 30px">${product.pro_note }</td>
              <td style="width: 5%; text-align: center; line-height: 30px">
                <button type="button" class="btn btn-info btn-block">
                  수정
                </button>
              </td>
            </tr>
           </c:forEach>
            
          </table>
          </div>
        </div>
      </div>
    </div>
   </div>
  </body>
</html>
