<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%> --%>

<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<title>상품 상세보기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script> -->
<script src="<c:url value='/js/common1.js'/>" charset="utf-8"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<!-- CSS only -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
</head>
<style>
.layer {
	display: none;
}

/* css초기화 끝 */
.option_section {
	float: left;
	color: #777;
	font-weight: 400;
}

/* 상품문의 */
.board_list th {
	padding: 14px 0;
	background: url(/css/images/ico_board_th_bar.gif) no-repeat 0 center
		#f5f5f5;
	font-size: 14px;
	color: #666;
	font-weight: 400;
	text-align: center;
}

.board_list {
	width: 60%;
	margin-top: 0px;
	background: #fff;
	font-size: 15px;
	line-height: 18px;
}

.board_list2 {
	width: 60%;
	margin-top: 0px;
	background: #fff;
	font-size: 15px;
	line-height: 18px;
}

.board_list2 .tit {
	background: #fff;
	font-size: 15px;
}

.board_list2 .tit td {
	position: relative;
	padding: 20px 0;
	box-sizing: border-box;
	border-top: 1px solid #f2f2f2;
}

.td {
	position: relative;
	box-sizing: border-box;
	border-top: 1px solid #f2f2f2;
	margin-left: 100px;
}


.align_left {
	text-align: left !important;
}

.board_list2 td.align_left {
	padding: 16px 110px;
}

.board_list td {
	padding: 16px 0;
	text-align: center;
	border-bottom: 1px solid #e0e0e0;
	font-size: 14px;
	color: #444;
	vertical-align: top;
}

p.a {
	cursor: pointer;
}

/* 리뷰리스트 */
::selection {
	background: #888;
	/* color: #fff; */
	text-shadow: none;
}

.xans-product-additional div.board {
	margin: 0 auto;
	padding: 27px 0 40px;
	max-width: 1220px;
	color: #353535;
	line-height: 18px;
}

.ec-base-table.typeList table {
	border-top: 1px solid #e5e5e5;
}

.ec-base-table table {
	position: relative;
	margin: 10px 0 0;
	border: 1px solid #e5e5e5;
	border-top: 0;
	border-left: 0;
	border-right: 0;
	/* color: #fff; */
	line-height: 1.5;
}

.ec-base-table table:before {
	position: absolute;
	top: 0;
	left: 0;
	display: block;
	content: "";
	width: 100%;
	height: 1px;
	background: #e5e5e5;
}

.displaynone {
	display: none !important;
}

.ec-base-table thead th {
	padding: 12px 0;
	border-bottom: 1px solid #e5e5e5;
	color: #353535;
	vertical-align: middle;
	font-size: 12px;
	font-weight: 500;
	background: #f9f9f9;
}

.xans-product-additional div.board {
	margin: 0 auto;
	padding: 27px 0 40px;
	max-width: 1220px;
	color: #353535;
	line-height: 18px;
}

.ec-base-table th:first-child {
	border-left: 0;
}

th {
	text-align: center;
}

.td1 {
	text-align: center;
	color: #777;
	padding: 12px 0;
}

.td2 {
	color: #777;
	padding: 12px 0;
}

.desc {
	padding: 0 0 20px;
	color: #777;
	font-size: 12px;
	text-align: center;
}

.d {
	width: 100%;
	heiht: 100%;
}

body {
	/*  font-family: Verdana, Arial; */
	font-family: 'Open Sans', sans-serif;
}

a {
	text-decoration: none;
	color: #666;
}

h1 {
	text-align: center;
	padding: 50px 0;
	font-weight: normal;
	font-size: 2em;
	letter-spacing: 10px;
}

.total_price {
    color: #666;
    font-size: 14px;
     padding: 20px 0 8px; 
    text-align: right;
    box-sizing: border-box;
}

.total_cartAdd {
    color: #666;
    font-size: 14px;

    box-sizing: border-box;
}

.totals-value {
    font-size: 30px;
    color: #333;
    font-style: normal;
    font-weight: bold;
    padding-left: 12px;
    text-align: right;
}


.selected_option {
    position: relative;
    margin-top: -1px;
    padding: 20px 22px;
    border: 1px solid #e9e9e9;
    color: #333;
    font-size: 14px;
    line-height: 20px;
    overflow: hidden;
}

.product .remove-product {
    border: 0;
    padding: 4px 8px;
    background-color: #c66;
    color: #fff;
    font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
    font-size: 12px;
    border-radius: 3px;
}

p {
	padding-top:5px;
}

</style>

<body>

	<input type="hidden" id="IDX" name="IDX" value="${list.GOODS_NO}">

	<br>
	
	<div style="width:100%; align:center; height:600px;">
		
		<div style="float:left; margin-left:350px; width:26%;">
			<table border="0" width="500">
				<tr>
					<td><img src="/stu/file/${list.GOODS_THUMBNAIL }" width="500"
						height="500" /></td>
				</tr>
			</table>
		</div>

		<div style="float:left; margin-left:30px; width:36%;">
			<table border="0">

				<tr>
					<td><c:set var="PICK" value="${fn:split(list.GOODS_PICK,',')}" />
						<c:forEach var="PICK1" items="${PICK}" varStatus="g">
							<c:if test="${g.count == 1 }">
								<span
									style="background-color: #ff80bf; line-height: 27px; border-radius: 10px;"><font
									color="#ffffff" size="2">&nbsp;${PICK1}&nbsp;</font></span>
							</c:if>
							<c:if test="${g.count == 2 }">
								<span
									style="background-color: #d456dc; line-height: 27px; border-radius: 10px;"><font
									color="#ffffff" size="2">&nbsp;${PICK1}&nbsp;</font></span>
							</c:if>
							<c:if test="${g.count == 3 }">
								<span
									style="background-color: #33b7ff; line-height: 27px; border-radius: 10px;"><font
									color="#ffffff" size="2">&nbsp;${PICK1}&nbsp;</font></span>
							</c:if>
						</c:forEach></td>
				</tr>

				<tr>
					<td id="goodsName"><font size="5"
						style="box-sizing: border-box; position: relative;">${list.GOODS_NAME}</font></td>
				</tr>

				<tr>
					<td><font size="3">${ColorSize}color</font></td>
				</tr>

				<tr>
					<td></td>
				</tr>

				<tr>
					<td id="price"
						style="font-weight: 600px; font-Size: 24px; line-height: 42px;">
						<fmt:formatNumber value="${list.GOODS_SELL_PRICE}" pattern="#,###" />원
					</td>
				</tr>
			</table>

			<table>
				<tr>
					<td><hr style="border-top: 1px solid #bbb;" width=670px>
					<td>
				</tr>
			</table>

			<br>

			<table>
				<tr class="option_section">
					<td width="340px"><font size="3">배송비</font></td>
					<td><font size="3">선불3,000원(50,000원 이상 무료배송)</font></td>
				</tr>
			</table>

			<table>
				<tr class="option_section">
					<td width="537px"><font size="3">배송종류</font></td>
					<td><font size="3">&nbsp;국내배송</font></td>
				</tr>
			</table>

			<br>
			<br>

			<div id="item_option">
				<table>
					<tr>
						<td><select name="ColorList" id="ColorList" class='total_cartAdd'
							style="width: 600px; height: 30px;">
								<option value="">==(필수)옵션: 색상 선택 ==</option>
								<c:forEach var="ColorList" items="${Color}" varStatus="index">
									<option value="${ColorList}">${ColorList}</option>
								</c:forEach>
						</select></td>
						

					</tr>

					<tr>
						<td><select name="SizeList" id="SizeList" class='total_cartAdd'
							style="width: 600px; height: 30px;">
								<option value="">==(필수)옵션: 사이즈 선택 ==</option>
								<c:forEach var="SizeList" items="${Size}" varStatus="index">
									<option value="${SizeList}">${SizeList}</option>
								</c:forEach>
						</select></td>
					
					</tr>
				</table>
			</div>

			<form id="frm" name="frm" method="post">

				<div>
					<table style="border:1px;" id="dynamicTable">
						<thead>
						</thead>

						<tbody id="dynamicTbody">

						</tbody>
						
					</table>
				</div>

			</form>
			
			<div class="totals-item totals-item-total" style="float:left; margin-left:400px;">
	      		<label class="total_price">총상품금액</label>&nbsp;&nbsp;
	     		 <div class="total_price" style="float:right;">원</div>
	      		<div class="totals-value" id="cart-total" style="float:right;">0</div>
	   	    </div>
			<br><br>
			
			<table>
				<tr>
					<td><hr style="border-top: 1px solid #bbb;" width=670px>
					<td>
				</tr>
			</table>

			<button style="width: 124px; height: 58px;"
				class="btn btn-outline-danger" id="insertLike"
				onclick="fn_InsertLike()">
				<font size="5px">♥</font>
			</button>
			<button style="width: 270px; height: 58px;"
				class="btn btn-outline-danger" id="insertBasket"
				onclick="fn_InsertBasket()">장바구니</button>
			<button style="width: 270px; height: 58px;"
				class="btn btn-outline-danger" id="goodsOrder"
				onclick="fn_GoodsOrder()">구매하기</button>
			<br>

			<!-- <button id="update" onclick="fn_update()">수정하기</button> -->
		
		</div>
	</div>
	


	<div style="clear: both;"></div>

	<br><br><br><br><br>
	<div align="center">
		<ul class="nav nav-tabs" id="myTab" role="tablist" style="width: 60%">
			<li class="nav-item" role="presentation" style="width: 25%" id="f1"><a
				class="nav-link active" id="home-tab" data-toggle="tab" href="#home"
				role="tab" aria-controls="home" aria-selected="true" onClick="fnMove(1)">상세정보</a></li>
			<li class="nav-item" role="presentation" style="width: 25%"><a
				 id="profile-tab"  href="#profile"
				role="tab" aria-controls="profile" aria-selected="false" onClick="fnMove(2)">상품문의</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="contact-tab"  href="#contact"
				role="tab" aria-controls="contact" aria-selected="false" onClick="fnMove(3)">쇼핑가이드</a></li>
			<li class="nav-item" role="presentation" style="width: 25%"><a
				 id="contact-tab"  href="#re"
				role="tab" aria-controls="re" aria-selected="false" onClick="fnMove(4)">상품평</a></li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">${list.GOODS_CONTENT}</div>
			<!-- 상세정보 -->

	</div>
</div>
	<br>
	<br>

	<div align="center">
		<ul class="nav nav-tabs" id="myTab" role="tablist" style="width: 60%">
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="home-tab"  href="#home1"
				role="tab" aria-controls="home1" aria-selected="false" onClick="fnMove(1)">상세정보</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" id="f2"><a
				class="nav-link active" id="profile-tab" data-toggle="tab"
				href="#profile1" role="tab" aria-controls="profile1"
				aria-selected="true" onClick="fnMove(2)">상품문의</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="contact-tab"  href="#contact1"
				role="tab" aria-controls="contact1" aria-selected="false" onClick="fnMove(3)">쇼핑가이드</a>
			</li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="contact-tab"  href="#re1"
				role="tab" aria-controls="re1" aria-selected="false" onClick="fnMove(4)">상품평</a></li>
		</ul>
		<div class="tab-content" id="myTabContent">

			<div class="tab-pane fade show active" id="profile1" role="tabpanel"
				aria-labelledby="profile-tab1">
				<!-- 상품문의 -->

				<table align="center" class="board_list">
					<colgroup>
						<col width="9%" />
						<col>
						<col width="15%" />
						<col width="14%" />
						<col width="13%" />
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>문의</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>답변</th>
						</tr>
					</thead>
				</table>
				<table class="board_list2">

					<tbody id="board_list1" name="board_list1">
					<colgroup>
						<col width="9%" />
						<col>
						<col width="10%" />
						<col width="13%" />
						<col width="13%" />
					</colgroup>

					</tbody>
				</table>
				<br>
				<div style="margin-left: 1050px">
					<button type="button" class="btn btn-secondary btn-sm"
						onclick="fn_Qna()">상품문의</button>
				</div>



			</div>
</div>
	</div>

	<br>
	<br>

	<div align="center">
		<ul class="nav nav-tabs" id="myTab" role="tablist" style="width: 60%">
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="home-tab"  href="#home2"
				role="tab" aria-controls="home2" aria-selected="false" onClick="fnMove(1)">상세정보</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="profile-tab"  href="#profile2"
				role="tab" aria-controls="profile2" aria-selected="false" onClick="fnMove(2)">상품문의</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" id="f3"><a
				class="nav-link active" id="contact-tab" data-toggle="tab"
				href="#contact2" role="tab" aria-controls="contact2"
				aria-selected="true" onClick="fnMove(3)">쇼핑가이드</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="contact-tab"  href="#re2"
				role="tab" aria-controls="re2" aria-selected="false" onClick="fnMove(4)">상품평</a></li>
		</ul>
		<div class="tab-content" id="myTabContent">
			
			
			<div class="tab-pane fade show active" id="contact2" role="tabpanel"
				aria-labelledby="contact-tab" align="left"
				style="margin-left: 400px">
				<!-- 쇼핑가이드 -->
			<%-- 	<%@ include file="/WEB-INF/views/shop/guide.jsp"%> --%>
			</div>
			
	</div>
</div>

	<br>
	<br>

	<div align="center">
		<ul class="nav nav-tabs" id="myTab" role="tablist" style="width: 60%">
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="home-tab"  href="#home3"
				role="tab" aria-controls="home3" aria-selected="false" onClick="fnMove(1)">상세정보</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="profile-tab"  href="#profile3"
				role="tab" aria-controls="profile3" aria-selected="false" onClick="fnMove(2)">상품문의</a></li>
			<li class="nav-item" role="presentation" style="width: 25%" ><a
				 id="contact-tab"  href="#contact3"
				role="tab" aria-controls="contact3" aria-selected="false" onClick="fnMove(3)">쇼핑가이드</a>
			</li>
			<li class="nav-item" role="presentation" style="width: 25%" id="f4"><a
				class="nav-link active" id="contact-tab" data-toggle="tab"
				href="#re3" role="tab" aria-controls="re3" aria-selected="true" onClick="fnMove(4)">상품평</a>
			</li>
		</ul>
		<div class="tab-content" id="myTabContent">
			
			
			<div class="tab-pane fade show active" id="re3" role="tabpanel"
				aria-labelledby="contact-tab">
				<!-- 상품평 -->

				<div class="xans-element- xans-product xans-product-review">
					<div class="ec-base-table typeList">
						<br>
						<h3>REVIEW</h3>
						<p class="desc">상품의 사용후기를 적어주세요.</p>
						<table border="1" width="60%">
							<caption></caption>
							<colgroup>
								<col style="width: 70px;">
								<col style="width: auto">
								<col style="width: 120px;">
								<col style="width: 120px;">
								<col style="width: 80px;" class="displaynone">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">제목</th>
									<th scope="col">작성자</th>
									<th colspan="2"scope="col">작성일</th>
	
									<th scope="col" class="displaynone">평점</th>
								</tr>
							</thead>

							<tbody id="reviewList" name="reviewList">
							</tbody>

						</table>
					</div>
				</div>

				<div id="PAGE_NAVI"></div>
				<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX" />
				<div style="margin-left: 1050px">
					<button type="button" class="btn btn-secondary btn-sm"
						onclick="fn_Review()">WRITE</button>
				</div>

			</div>
		</div>
	</div>


	<form id="commonForm" name="commonForm"></form>
</body>
</html>

