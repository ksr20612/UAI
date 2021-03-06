<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UAI-주문 관리</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<style>
#wrapper {
	width: 1366px;
	height: 900px;
	border: solid black 0.3px;
	margin: 50px auto;
}

#upper_bar {
	float: right;
}

#header {
	width: 1166px;
	height: 100px;
	border: solid black 0.3px;
	float: right;
	padding: 10px;
}

#left_box {
	width: 200px;
	height: 500px;
	float: left;
	border: solid black 0.3px;
}

#admin_menu {
	width: 180px;
	height: 100px;
	margin: 5px auto;
	border: solid black 0.3px;
}

#search_box {
	width: 1100px;
	height: 200px;
	margin: 5px auto;
	border: solid black 0.3px;
	float: right;
}

#content_box {
	overflow: auto;
	width: 1100px;
	height: 550px;
	margin: 5px auto;
	border: solid black 0.3px;
	float: right;
}
</style>

<script type="text/javascript">

function delchk(){
    return confirm("지급 상태를 변경 하시겠습니까?");
}

</script>


</head>
<body>
	<div id="wrapper">
		<div id="upper_bar">
			<a href="">쇼핑몰 메인</a><a href="">로그아웃</a>
		</div>
		
		<br> <img src="" type="button">
		<div id="header">
			<a href="./sellerIndex">메인</a> | <a href="./sellerManageProduct">강의 관리</a> | <a href="./sellerManageOrder">주문 관리</a> | <a href="./sellerManageMember">회원 관리</a> | 
			<a href="./sellerManageReview">리뷰 관리</a> | <a href="./sellerManageQnA">QnA 관리</a> | <a href="./sellerManagePaycheck">지급 관리</a> | <a href="./sellerDashboard">통계 관리</a>
		</div>
		<div id="left_box">
		<div id="admin_menu">
		<c:choose>
			<c:when test="${!empty sessionData }">
				환영합니다.<br>${sessionData.ad_nick }<br>
				<a href="./logoutAction"><button>로그아웃</button></a>
				<br>
				<a href="./sellerManageAdmin"><button>관리자계정설정</button></a>
					</c:when>
			<c:otherwise>
			<a href="./loginForm">관리자 로그인</a>
			</c:otherwise>
			</c:choose>
			</div>
			<br>
			
	
		</div>
		<div id="search_box">
            <form action="./sellerManageOrder" method="get">
            <table>
            <tr class="table-primary">
            <th>주문날짜</th>
                <th><input type="date" name="startDate">~<input type="date" name="endDate"></th></tr>
                        
                        
            <tr class="table-secondary">
            <th>주문금액</th>
                <th><input type="text" name="minPrice">~<input type="text" name="maxPrice"></th></tr>
               
            <tr class="table-primary">
                <th>결제여부</th>
                    <th>
                    <input type="radio" name="radioboxValue" value="0">미결제  |
                    <input type="radio" name="radioboxValue" value="1">결제</th>
                    </tr>
            
            <tr class="table-secondary">
            
             <th>결제수단</th>
                    <th>
                    <input type="radio" name="checkboxValue" value="0">무통장  |
                    <input type="radio" name="checkboxValue" value="1">카드</th>
              
            </tr>
             <tr class="table-primary">
             
                 <th>키워드</th>
                <th><select name="keyword">
              		<option></option>
                    <option value="O_IDX">주문번호</option>
                    <option value="P_IDX">강의번호</option>
                    <option value="M_IDX">회원번호</option>


                </select>
                <input type="text" name="value"></th>
                   
                    </tr>
            
            <tr class="table-secondary">
                <th>
                <button type="submit" style="float: right">검색</button></th>
            </tr>
            </table>
                </form>
        </div><br>
		<div id="content_box">
		<form action="./sellerUpdateOrdersByIdx" name="list" method="post" onsubmit="return confirm('결제 상태를 변경하시겠습니까?')">
			<table class="table-responsive table-hover">
				<thead>
					<tr>
						<th scope="col">선택</th>
						<th scope="col">주문번호</th>
						<th scope="col">강의번호</th>
						<th scope="col">강의명</th>
						<th scope="col">회원번호</th>
						<th scope="col">회원명</th>
						<th scope="col">아이디</th>
						<th scope="col">주문날짜</th>
						<th scope="col">주문금액</th>
						<th scope="col">결제수단</th>
						<th scope="col">결제날짜</th>
						<th scope="col">결제여부</th>
						<th scope="col">결제확인</th>
					</tr>
				</thead>
				<tbody>
						<!--lhe: forEach문으로 반복해서 리스트 가져오기-->
						<c:forEach var="orderDataList" items="${orderDataList }">
						<tr>
							<th scope="row">
							<input type="checkbox" name="idx[]" value="${orderDataList.orderDataVO.o_idx }">
							<input type="hidden" name="pch_isPaid" value="1">
							</th>
							<th scope="row">${orderDataList.orderDataVO.o_idx }</th>
							<th scope="row">${orderDataList.orderDataVO.p_idx }</th>
							<th scope="row">${orderDataList.productDataVO.p_name }</th>
							<th scope="row">${orderDataList.orderDataVO.m_idx }</th>
							<th scope="row">${orderDataList.memberDataVO.m_name }</th>
							<th scope="row">${orderDataList.memberDataVO.m_id }</th>
							<th scope="row">${orderDataList.orderDataVO.o_date }</th>
							<th scope="row">${orderDataList.orderDataVO.o_totalPrice }</th>
							
							<!-- lhe: 결제수단 타입 숫자->키워드로 치환 -->
							<c:choose>
							<c:when test="${orderDataList.orderDataVO.o_paymentMethod == 0 }">
							<th scope="row">무통장</th>
							</c:when>
							<c:when test="${orderDataList.orderDataVO.o_paymentMethod == 1 }">
							<th scope="row">카드</th>
							</c:when>
							</c:choose>
							<th scope="row">${orderDataList.purchaseDataVO.pch_paymentDate }</th>
							<c:choose>
							<c:when test="${orderDataList.purchaseDataVO.pch_isPaid == 0 }">
							<th scope="row">미결제</th></c:when>
							<c:when test="${orderDataList.purchaseDataVO.pch_isPaid == 1 }">
							<th scope="row">결제완료</th></c:when>
							</c:choose>
							
							
							<c:choose>
							<c:when test="${orderDataList.purchaseDataVO.pch_isPaid == 0 }">
							<th scope="row"><a href="./sellerUpdateOrderByIdx?o_idx=${orderDataList.orderDataVO.o_idx }" onclick="return delchk()">결제확인</a></th>
							</c:when>
							<c:when test="${orderDataList.purchaseDataVO.pch_isPaid == 1 }">
							<th scope="row">결제완료</th></c:when>
							</c:choose>
						</tr>
						</c:forEach>
				</tbody>
			</table>
			<button type="submit" style="float: right">선택주문 결제확인</button>
			</form>
		</div>

	</div>









	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
</body>
</html>