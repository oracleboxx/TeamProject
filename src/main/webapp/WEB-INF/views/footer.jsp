<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>
.footer {
	background-color: #f9f9f9;
	color: #333;
	padding: 40px 20px;
	font-size: 14px;
	line-height: 1.5;
}

.footer a {
	color: #333;
	text-decoration: none;
	transition: color 0.3s;
}

.footer a:hover {
	color: #555;
}

.footer .inner {
	max-width: 1200px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
}

.service_area, .footer_menu, .corporation_area, .notice_area {
	margin-bottom: 20px;
}

.service_title {
	font-size: 18px;
	margin-bottom: 10px;
}

.service_tel {
	color: #FFD700;
	margin-left: 10px;
}

.menu_box {
	margin-right: 30px;
}

.menu_title {
	font-size: 16px;
	margin-bottom: 15px;
}

.menu_list {
	list-style-type: none;
	padding: 0;
}

.menu_item {
	margin-bottom: 10px;
}

.term_list {
	display: flex;
	list-style-type: none;
	padding: 0;
	margin: 0;
	gap: 20px;
}

.footer_sns .sns_box {
	display: flex;
	gap: 15px;
}

.footer_menu {
	display: flex;
	justify-content: space-between;
}

.btn_business, .btn.solid.small {
	display: inline-flex;
	align-items: center;
	gap: 5px;
	background-color: #FFD700;
	color: #333;
	padding: 5px 15px;
	border-radius: 5px;
	cursor: pointer;
	border: none;
	transition: background-color 0.3s, color 0.3s;
}

.btn_business:hover, .btn.solid.small:hover {
	background-color: #f5f5f5;
	color: #333;
}

.notice {
	font-size: 12px;
	opacity: 0.8;
}

.copyright {
	font-size: 12px;
	margin-top: 20px;
}
/* 모달 스타일 */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.7);
	overflow: auto;
}

/* 모달 내용 스타일 */
.modal-content {
	background-color: #fff;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 50%;
	position: relative;
}

/* 닫기 버튼 스타일 */
.close {
	position: absolute;
	top: 1px; /* 상단 여백 조정 */
	right: 20px; /* 우측 여백 조정 */
	cursor: pointer;
	font-size: 40px; /* 원하는 크기로 조정 */
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid #ccc;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}

/* 초기에 숨겨진 모달 스타일 */
.modal {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	justify-content: center;
	align-items: center;
	z-index: 1;
}

/* 모달 내용 스타일 */
.modal-content {
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

/* 구분선 스타일 */
.separator {
	display: flex;
	align-items: center;
	margin-right: 50px;
}

.separator-line {
	flex-grow: 1;
	border-top: 1px solid #ccc;
	margin-left: 2px;
}

/* 아이콘을 오른쪽으로 이동 */
.bi-chevron-down {
	float: right;
	margin-right: 50px; /* 여백 설정 */
	font-size: 20px;
}

.bi-chevron-up {
	float: right;
	margin-right: 50px; /* 여백 설정 */
	font-size: 20px;
}

.modal-content a {
	font-size: 15px; /* 원하는 글자 크기 설정 */
	font-family: sans-serif; /* 나눔고딕 글꼴 설정 */
	font-weight: bold; /* 글자를 진하게 설정 */
}

#content6 a {
	color: blue; /* 텍스트 색상을 파란색으로 설정 */
	text-decoration: underline; /* 밑줄 추가 */
}
h2 {
    text-align: center; /* 텍스트를 가운데 정렬 */
    font: bold;
}
</style>

</head>
<body>
	<div class="footer sm">
		<div class="inner">
			<div class="service_area">
				<div class="customer_service">
					<strong class="service_title">고객센터<a href="tel:1588-0000"
						class="sevice_tel">1588-0000</a></strong>
					<div class="service_time">
						<dl class="time_box">
							<dt class="time_term">운영시간 평일 11:00 - 18:00 (토∙일, 공휴일 휴무)
								점심시간 평일 13:00 - 14:00</dt>
						</dl>
					</div>
				</div>
				<div class="footer_menu">
					<div class="menu_box">
						<strong class="menu_title">이용안내</strong>
						<ul class="menu_list">
							<li class="menu_item" id="openInspectionCriteria"><a
								href="#" class="menu_link">검수기준</a></li>
							<li class="menu_item" id="openUsagePolicy"><a href="#"
								class="menu_link">이용정책</a></li>
							<li class="menu_item" id="openPenaltyPolicy"><a href="#"
								class="menu_link">페널티 정책</a></li>
							<li class="menu_item" id="openCommunityGuidelines"><a
								href="#" class="menu_link">커뮤니티 가이드라인</a></li>
						</ul>
					</div>
					<!-- 검수기준 모달 -->
					<div id="modalInspectionCriteria" class="modal">
						<div class="modal-content">
							<span class="close" id="closeInspectionCriteria">&times;</span>
							<!-- 모달 내용을 추가하세요 -->
							<h2>검수기준</h2>
							<table>
								<tr>
									<td><a href="#" class="category-link" data-category="신발">신발</a></td>
									<td><a href="#" class="category-link"
										data-category="아우터상의하의">아우터 · 상의 · 하의</a></td>
									<td><a href="#" class="category-link"
										data-category="가방시계지갑패션잡화">가방 · 시계 · 지갑 · 패션잡화</a></td>
								</tr>
								<tr>
									<td><a href="#" class="category-link" data-category="테크">테크</a></td>
									<td><a href="#" class="category-link"
										data-category="뷰티컬렉터블캠핑가구리빙">뷰티 · 컬렉터블 · 캠핑 · 가구/리빙</a></td>
									<td><a href="#" class="category-link"
										data-category="프리미엄시계">프리미엄 시계</a></td>
								</tr>
								<tr>
									<td><a href="#" class="category-link"
										data-category="프리미엄가방">프리미엄 가방</a></td>
									<td></td>
									<!-- 빈 칸 -->
									<td></td>
									<!-- 빈 칸 -->
								</tr>
							</table>

							<!-- 카테고리 내용 -->
							<div class="category-content" id="신발-content">
								<!-- 신발 내용을 여기에 추가하세요 -->
								<br> <br>
								<p>검사기준은 카테고리를 하나씩 눌러봐서 이용할 수 있습니다</p>

							</div>
							<div class="category-content" id="아우터-content">
								<!-- 아우터 내용을 여기에 추가하세요 -->

							</div>
							<div class="category-content" id="가방-content">
								<!-- 가방 내용을 여기에 추가하세요 -->

							</div>

							<!-- 추가적인 카테고리 내용을 여기에 추가하세요 -->


						</div>
					</div>

					<!-- 이용정책 모달 -->
					<div id="modalUsagePolicy" class="modal">
						<div class="modal-content">
							<span class="close" id="closeUsagePolicy"
								onclick="closeModal('modalUsagePolicy')">&times;</span>
							<!-- 이용정책 내용을 여기에 추가 -->
							<h2>이용정책</h2>
							<p>
								<a href="#" onclick="toggleContent('content1', 'arrow1')"> <br>
									<br>패널티 정책 <i id="arrow1" class="bi bi-chevron-down"></i>
								</a>
							</p>
							<div id="content1" style="display: none;" class="hidden">
								<!-- 이용정책 내용 1을 여기에 추가 -->
								<p>
									최종 수정일 2023년 6월 7일<br> <br> 판매자와 구매자의 건전한 거래를 위하여 아래
									사유에 따라 페널티가 부과됩니다. 결제정보 오류로 페널티 결제 실패 시, 이용약관 제24조("서비스수수료")에
									따라 별도의 고지없이 재결제를 시도합니다.
								</p>
								<br>
								<h4>
									<strong>판매거부</strong>
								</h4>
								<table>
									<thead>

									</thead>
									<tbody>
										<tr>
											<td>판매 거래 대기 이후, 1시간 이내</td>
											<td>5.0%</td>
										</tr>
										<tr>
											<td>판매 거래 대기 이후, 1시간 이후</td>
											<td>10.0%</td>
										</tr>
									</tbody>
								</table>
								<br> <br>
								<h4>
									<strong>발송지연</strong>
								</h4>
								<table>
									<tbody>
										<tr>
											<td>판매 거래 체결 후,<br> 48시간(일요일・공휴일 제외) 이내 <br>

												발송 정보 미입력
											</td>
											<td>10.0%</td>
										</tr>
									</tbody>
								</table>
								<br> <br>
								<h4>
									<strong>미입고</strong>
								</h4>
								<table>
									<tbody>
										<tr>
											<td>발송 정보 입력 후, <br> 5일(일요일・공휴일 제외) 이내<br>

												검수센터에 미도착
											</td>
											<td>10.0%</td>
										</tr>
										<tr>
											<td>가송장 등 허위 정보 입력</td>
											<td>10.0%</td>
										</tr>
										<tr>
											<td>거래 체결 전 상품 발송</td>
											<td>10.0%</td>
										</tr>

									</tbody>
								</table>
								<p>
									* 발송 정보 입력 시 지원하지 않는 배송 수단의 경우, 운송장 추적 불가, 도착 상품의 식별 곤란 등의 사유로
									인해 입고가 불가하며 이에 해당하는 상품은 반송 처리됩니다. <br> * 반송 처리 등 정상적이지 않은
									배송 방법을 통해 상품을 검수센터로 전달할 경우 상품 입고가 불가능합니다.<br> * 단, 부득이한 경우
									발송 정보 입력 기한 이내에 고객센터를 통한 협의 및 KREAM의 사전 승인 하에 상품 동일성 식별이 가능하도록
									조치한 경우에 한하여 상품 입고가 가능한 점 참고 부탁드립니다. <br>
								<p>
									<br> <br>
								<h4>
									<strong> 검수기준 악용</strong>
								</h4>
								<p>아래 검수기준 위반시에는 페널티를 부과합니다. (패키지와 상품 공통 적용)</p>
								<h5>신발/의류/패션잡화</h5>
								<table>
									<tr>
										<td>상품 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>사이즈 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>기본 구성품 누락</td>
										<td>10.0%</td>
									</tr>

								</table>
								<br> <br>
								<h5>
									<strong>테크/라이프</strong>
								</h5>
								<table>
									<tr>
										<td>정보 불일치</td>
										<td>10.0%</td>
								</table>
								<br> <br>
								<h4>
									<strong> 가품, 손상/오염/사용감</strong>
								</h4>
								<p>일반 거래는 판매가 기준이며, 보관 판매는 판매 상품 모든 사이즈의 전월 평균 거래가 기준입니다.</p>
								<table>
									<tr>
										<td>가품</td>
										<td>15.0%</td>
									</tr>
									<tr>
										<td>손상/오염/사용감</td>
										<td>15.0%</td>
									</tr>
								</table>
								<br> <br>
								<h5>
									<strong>페널티 감면 기준</strong>
								</h5>
								<p>
									KREAM은 이용약관 제 24조 ("서비스 수수료") 다. 항에 따라 회원이 아래와 같은<br> 특별한
									사유에 해당하는 것으로 객관적으로 소명할 경우 기 부과된 페널티를 감경 <br>또는 면제할 수 있습니다.


								
								<p>
									KREAM은 해당 사안의 사실관계, 이전 사용이력, 거래행태 등을 종합적으로 분석하여 아래 사유에 해당하는지
									여부를 최종 판단합니다.<br> <br> 페널티 감경 또는 면제는 해당 회원의 부주의에도
									불구하고 KREAM이 회원의 특별<br>한 사정을 고려하여 예외적으로 실시하는 조치이므로 하기 특별
									사유의 존재 여부<br>는 해당 "회원"이 객관적으로 증명해야 할 책임이 있습니다.<br> <br>
									＊서비스 사용 미숙에 따른 조작실수임이 명백한 경우<br> ＊명백히 택배사의 책임 있는 사유로 인하여
									페널티 발생한 경우<br> ＊고의성이 없이 가품 및 손상/오염/사용감 있는 제품을 판매한 것이 명백한
									경우 <br>(단, 페널티 감경이 이루어지더라도 가품 및 손상/오염/사용감 있는 제품 판매로<br>
									인한 이용정지 등의 절차는 진행될 수 있음)
								</p>
							</div>


							<!-- 1번, 2번, 3번 글 사이에 구분선 및 "v" 모양의 표시 추가 -->
							<div class="separator">
								<div class="separator-line"></div>
							</div>

							<p>
								<a href="#" onclick="toggleContent('content2', 'arrow2')"> <br>가품
									· 손상/오염/사용감 있는 상품 판매에 대한 제재 <i id="arrow2"
									class="bi bi-chevron-down"></i>
								</a>
							</p>
							<div id="content2" style="display: none;" class="hidden">
								<!-- 이용정책 내용 2를 여기에 추가 -->
								<p>
									최종 수정일 2023년 5월 25일 <br> <br> 가품 ・ 손상/오염/사용감 있는 상품
									판매를 시도하여 적발된 경우 판매금액의<br> 15.0% 페널티가 부과되며 판매자는 적발 즉시 이용정지
									처리됩니다.<br> 가품 판매의 경우 상표법 108조에 의거 민사상 손해배상 책임 및 형사상 7년 이하의<br>
									징역 또는 1억원 이하의 벌금 처벌을 받을 수 있습니다. 또한 이용약관 제 27조(검수<br> 등)
									6항에 따라 가품 판매자는 상표법 등 관계 법령 위반 혐의로 수사기관에 신고될<br> 수 있으며, 가품
									판정 상품은 수사기관 제출, 압수 등으로 인하여 판매자에게 반환되<br> 지 않을 수 있습니다.<br>
								</p>
								<br> <br>
								<h4>
									<strong>소명자료 접수</strong>
								</h4>
								<p>
									KREAM에서는 가품, 손상/오염/사용감 있는 상품으로부터 구매자를 안전하게 보호<br> 하고자 해당
									제재를 실행하며, 이에 따라 선의의 피해자가 발생하지 않도록 소명서<br> 및 관련 자료를 고객센터로
									전달해주시면 내부 검토를 진행하고 있습니다.
								</p>
								<br>

								<h5>
									<strong>국내/해외 온라인결제 구매</strong>
								</h5>
								<p>
									① 상세 주문 내역<br> • 상품명, 구매가, 결제일, 배송처 등 포함<br> ② 신용카드
									명세서 또는 계좌이체 확인서<br> • 신용카드 명세서: 결제일시, 가맹점 포함<br> •
									계좌이체 확인서: 이체일시, 수신 계좌번호, 수신 계좌주명 포함

								</p>
								<br>
								<h5>
									<strong>직거래/지인거래</strong>
								</h5>
								<p>
									① 판매자와의 대화 내용 전문<br> • 거래일시, 대화 시작 일시, 계좌번호, 발송한 운송장번호 등
									포함<br> ② 계좌이체내역서(이체확인증) 또는 송금확인서<br> • 이체일시, 예금주명,
									계좌번호, 금액 등 포함<br>
								</p>
								<br>
							</div>

							<!-- 2번, 3번 글 사이에 구분선 및 "v" 모양의 표시 추가 -->
							<div class="separator">
								<div class="separator-line"></div>
							</div>

							<p>
								<a href="#" onclick="toggleContent('content3', 'arrow3')"> <br>
									검수 기준 악용에 대한 제재<i id="arrow3" class="bi bi-chevron-down"></i>
								</a>
							</p>
							<div id="content3" style="display: none;" class="hidden">
								<!-- 이용정책 내용 3을 여기에 추가 -->
								<p>
									최종 수정일 2021년 12월 10일<br> <br> 아래 기준에 해당하는 경우 미입고 처리되며
									판매금액의 10% 페널티가 부과됩니다.<br> ＊상품/패키지 공통 적용됩니다.
								</p>
								<h5>
									<strong>신발</strong>
								</h5>
								<table>
									<tr>
										<td>상품 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>사이즈 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>기본 구성품 누락</td>
										<td>10.0%</td>
									</tr>

								</table>
								<br> <br>
								<h5>
									<strong>의류</strong>
								</h5>
								<table>
									<tr>
										<td>상품 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>사이즈 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>기본 구성품 누락</td>
										<td>10.0%</td>
									</tr>

								</table>
								<br> <br>
								<h5>
									<strong>패션잡화</strong>
								</h5>
								<table>
									<tr>
										<td>상품 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>사이즈 불일치</td>
										<td>10.0%</td>
									</tr>
									<tr>
										<td>기본 구성품 누락</td>
										<td>10.0%</td>
									</tr>

								</table>
								<br> <br>
								<h5>
									<strong>테크/라이프</strong>
								</h5>
								<table>
									<tr>
										<td>상품 불일치</td>
										<td>10.0%</td>
									</tr>

									<tr>
										<td>기본 구성품 누락</td>
										<td>10.0%</td>
									</tr>

								</table>
								<br> <br>
							</div>
							<!-- 패널티 정책 항목 4 -->
							<div class="separator">
								<div class="separator-line"></div>
							</div>
							<p>
								<a href="#" onclick="toggleContent('content4', 'arrow4')"> <br>거래
									실패 시 반송 운임 기준 <i id="arrow2" class="bi bi-chevron-down"></i>
								</a>
							</p>
							<div id="content4" style="display: none;" class="hidden">
								<!-- 패널티 정책 내용 2을 여기에 추가 -->
								<p>
									최종 수정일 2021년 10월 8일<br> 거래 실패로 인한 상품 반송 시, 택배 운임의 선불/착불
									기준은 아래와 같습니다.
								</p>
								<h4>
									<strong>검수 불합격</strong>
								</h4>
								<table>
									<tr>
										<td>착불</td>
										<td>검수 기준상 '불합격' 에 해당하는 반송건</td>
									</tr>
									<tr>
										<td>선불</td>
										<td>'구매의사 확인' 이후 발생하는 반송건</td>
									</tr>
								</table>
								<br> <br>
								<h4>
									<strong>발송지연 ・ 미입고</strong>
								</h4>
								<table>
									<tr>
										<td rowspan="3">착불</td>
										<td>발송정보 입력없이 검수센터 도착</td>
									</tr>
									<tr>
										<td>입고 마감 기한 이후 검수센터 도착</td>
									</tr>
									<tr>
										<td>거래 체결 전 상품 발송</td>
									</tr>


								</table>
								<br> <br>
							</div>


							<!-- 패널티 정책 항목 5 -->
							<div class="separator">
								<div class="separator-line"></div>
							</div>
							<p>
								<a href="#" onclick="toggleContent('content5', 'arrow5')"> <br>부적절행위
									금지 <i id="arrow2" class="bi bi-chevron-down"></i>
								</a>
							</p>
							<div id="content5" style="display: none;" class="hidden">
								<!-- 패널티 정책 내용 2을 여기에 추가 -->
								<p>
									최종 수정일 2022년 8월 29일<br> <br> 아래에 해당하는 경우, 이용약관 제
									7조(이용제한 등), 21조(부적절 행위)에 따라 일<br>시정지나 영구이용정지 조치됩니다. 허위사실
									유포 관련 고의성이 확인될 시, 유관<br>부서로 이관되어 처리될 수 있습니다.<br> <br>
									＊가품 거래 시도<br> ＊손상/오염/사용감 있는 상품 거래 시도<br> ＊여러 개의 계정을
									생성하여 자전거래<br> ＊결제 혜택 및 포인트 획득, 시세 조작 등의 목적으로 지인과 공모한 허위 거래<br>
									＊신용카드 불법 현금 유통 (소위 카드깡)<br> ＊개인 정보를 타인에게 유출하거나 결제 카드를 대여하여
									거래(가족, 친지 포함)<br> ＊부당한 목적으로 협의하여 계정이나 명의를 도용하여 부정거래(온라인,
									오프라인 포함)<br> ＊커뮤니티 내 허위사실 유포 등 서비스 운영을 방해하는 각종 부정행위<br>

								</p>
							</div>


							<!-- 패널티 정책 항목 6 -->
							<div class="separator">
								<div class="separator-line"></div>
							</div>
							<p>
								<a href="#" onclick="toggleContent('content6', 'arrow6')"> <br>이상시세
									입찰/거래 취소 정책 <i id="arrow2" class="bi bi-chevron-down"></i>
								</a>
							</p>
							<div id="content6" style="display: none;" class="hidden">
								<!-- 패널티 정책 내용 2을 여기에 추가 -->
								<p>
									최종 수정일 2022년 3월 21일<br> <br> KREAM은 <a
										href="/shop/TermsOfService">이용약관</a> 제21조 제3항부터 제6항까지의 규정에 따라
									회원의 조작 실<br> 수, 착오로 인한 사고 발생을 예방하고, 회원의 조작 실수를 유도하거나 상품
									시세를<br> 조작하여 건전한 거래 질서를 어지럽히려는 시도 등 각종 거래 사고와 부정거래 등<br>
									을 방지하기 위하여 다음과 같이 이상시세 입찰 또는 거래 취소 정책을 실시하고 있습니다.
								</p>
								<br> <br>
								<h4>
									<strong>입찰 또는 체결 시도의 삭제・취소</strong>
								</h4>
								<br>
								<p>
									KREAM은 보관판매 서비스 등 거래 형태를 불문하고 하기 “이상 고가 거래” 또는<br> “이상 저가
									거래”와 같은 거래 시도 또는 거래 체결에 대하여 회원에 대한 사전 통보<br> 없이 거래 체결 이전인
									경우 해당 회원이 등록한 내용, 입찰 또는 체결 시도를 삭<br> 제・취소 또는 거래 제한 조치하고,
									거래 체결 이후인 경우 거래 상대방인 회원(“이<br> 상 고가 거래” 시 구매자, “이상 저가 거래”
									시 판매자를 의미함)의 의사를 확인한 후<br> 기 체결된 거래를 취소할 수 있습니다.
								</p>
								<br> <br>
								<p>
									＊ KREAM은 해당 입찰/거래에서의 상품 입찰/체결 가격, 해당 상품의 과거 거래 체<br>
									&nbsp;&nbsp;&nbsp;결가, 제조사 또는 주요 대형 유통사에서 책정한 해당 상품의 판매가 등을 기준으<br>
									&nbsp;&nbsp;&nbsp;로 “이상 고가 거래” 또는 “이상 저가 거래” 해당 여부를 판단합니다.<br>
									＊본 정책에 따른 입찰/거래 체결 삭제∙취소, 거래 <br>&nbsp;&nbsp;&nbsp; 제한 등의
									조치는 회원에게 거래 오류, 입찰 만료 등으로 표시될 수 있습니다.<br> ＊ KREAM 및 거래
									상대방인 회원(“이상 고가 거래” 시 구매자, “이상 저가 거래”<br>
									&nbsp;&nbsp;&nbsp;시 판매자를 의미함)은 본 정책에 따라 이루어진 회원의 등록 내용, 입찰 또는 체<br>
									&nbsp;&nbsp;&nbsp;결 시도에 대한 삭제∙취소∙거래 제한 조치 또는 거래 체결 건 취소 조치 등과
									관련<br> &nbsp;&nbsp;&nbsp;하여 거래 재체결, 재진행, 재입찰, 상품 매입/판매 또는
									손해배상(시세 등락에 관<br> &nbsp;&nbsp;&nbsp;한 사항 포함) 등 어떠한 의무나 책임도
									부담하지 아니합니다.<br>


								</p>

							</div>


						</div>
					</div>
					<!-- 페널티 정책 모달 -->
					<div id="modalPenaltyPolicy" class="modal">
						<div class="modal-content">
							<span class="close" id="closePenaltyPolicy">&times;</span>
							<!-- 모달 내용을 추가하세요 -->
							<h2>페널티 정책</h2>
							<p>
								최종 수정일 2023년 6월 7일<br> <br> 판매자와 구매자의 건전한 거래를 위하여 아래
								사유에 따라 페널티가 부과됩니다<br> 결제정보 오류로 페널티 결제 실패 시, <a
									href="/shop/TermsOfService"
									style="color: blue; text-decoration: underline;">이용약관</a>
								제24조("서비스수수료")에 따라 별도의 고지<br> 없이 재결제를 시도합니다.<br>
							</p>
							<br>
							<h4>
								<strong>판매거부</strong>
							</h4>
							<table>
								<tr>
									<td>판매 거래 대기 이후, 1시간 이내 판매 거부</td>
									<td>5.0%</td>
								</tr>
								<tr>
									<td>판매 거래 대기 이후, 1시간 이후 판매 거부</td>
									<td>10.0%</td>
								</tr>

							</table>
							<br><br>
							<h4>
								<strong>발송지연</strong>
							</h4>
							<table>
								<tr>
									<td>판매 거래 체결 후, <br>48시간(일요일・공휴일 제외) 이내 <br>발송
										정보 미입력<br>
									<td>10.0%</td>
								</tr>
							</table>
							<br><br>
							<h4>
								<strong>미입고</strong>
							</h4>
							<table>
								<tr>
									<td>발송 정보 입력 후,<br>5일(일요일・공휴일 제외) 이내<br>검수센터에
										미도착
									<td>10.0%</td>
								</tr>
								<tr>
									<td>가송장 등 허위 정보 입력</td>
									<td>10.0%</td>
								</tr>
								<tr>
									<td>거래 체결 전 상품 발송</td>
									<td>10.0%</td>
								</tr>
							</table><br>
							<p>* 발송 정보 입력 시 지원하지 않는 배송 수단의 경우, 운송장 추적 불가, 도착 상품의 식별 곤란<br>
							등의 사유로 인해 입고가 불가하며 이에 해당하는 상품은 반송 처리됩니다.<br>
							* 반송 처리 등 정상적이지 않은 배송 방법을 통해 상품을 검수센터로 전달할 경우 상품 입고가 불가능합니다.<br>
							* 단, 부득이한 경우 발송 정보 입력 기한 이내에 고객센터를 통한 협의 및 KREAM의 사전 승인<br>
							하에 상품 동일성 식별이 가능하도록 조치한 경우에 한하여 상품 입고가 가능한 점 참고 부탁드립니다.</p>
				<h4><strong>검수기준 악용</strong></h4>
				<p>아래 검수기준 위반시에는 페널티를 부과합니다. (패키지와 상품 공통 적용)	</p><br><br>
				<h5><strong>신발/의류/패션잡화</strong></h5>
				<table>
				<tr>
				<td>상품 불일치	
				</td>
				<td>10.0%</td>
				</tr>
				<tr>
				<td>사이즈 불일치</td>
				<td>10.0%</td>
				</tr>
				<tr>
				<td>기본 구성품 누락</td>
				<td>10.0%</td>
				</tr>
				
				</table>
				<br><br>
 			<h5><strong>테크/라이프</strong></h5>
 			<table>
 			<tr>
 			<td>테크/라이프
 			</td>
 			<td>10.0%</td>
 			</tr>
 			</table>
 			<br><br>
 			<h4><strong>가품, 손상/오염/사용감</strong></h4>
 			<p>일반 거래는 판매가 기준이며, 보관 판매는 판매 상품 모든 사이즈의 전월 평균 거래가 기준입니다. 

 			</p>
 			<table>
 			<tr>
 			<td>가품</td>
 			<td>15.0%</td>
 			</tr>
 			<tr>
 			<td>손상/오염/사용감	
 			</td>
 			<td>15.0%</td>
 			</tr>
 			</table>
 			<br><br>
 			<h4><strong>페널티 감면 기준</strong></h4>
 			<br><br>
 			<p>KREAM은 이용약관 제 24조 ("서비스 수수료") 다. 항에 따라 회원이 아래와 같은 특별한 사유에 해당하는 것으로 객관적으로 소명할<br> 경우 기 부과된 페널티를 감경 또는 면제할 수 있습니다.
			KREAM은 해당 사안의 사실관계, 이전 사용이력, 거래행태 등을 종합적으로 분석하여 아래 <br>사유에 해당하는지 여부를 최종 판단합니다.<br><br>
			페널티 감경 또는 면제는 해당 회원의 부주의에도 불구하고 KREAM이 회원의 특별한 사정을<br>
			고려하여 예외적으로 실시하는 조치이므로 하기 특별 사유의 존재 여부는 해당 "회원"이 객관적<br>
			으로 증명해야 할 책임이 있습니다.<br>
			
		<br>
			서비스 사용 미숙에 따른 조작실수임이 명백한 경우<br>
			명백히 택배사의 책임 있는 사유로 인하여 페널티 발생한 경우<br>
			고의성이 없이 가품 및 손상/오염/사용감 있는 제품을 판매한 것이 명백한 경우 (단, 페널티<br>
			감경이 이루어지더라도 가품 및 손상/오염/사용감 있는 제품 판매로 인한 이용정지 등의 절차는 진행될 수 있음)	</p>
 
						</div>
					</div>

					<!-- 커뮤니티 가이드라인 모달 -->
					<div id="modalCommunityGuidelines" class="modal">
						<div class="modal-content">
							<span class="close" id="closeCommunityGuidelines">&times;</span>
							<!-- 모달 내용을 추가하세요 -->
							<h2>커뮤니티 가이드라인</h2>
							<p>최종 수정일  2021년 12월 3일<br>
							KREAM 내 STYLE 서비스는 회원들의 일상 속 스니커즈, 의류 등의 패션 스타일을 공유하여<br>
							서로 영감을 얻을 수 있는 공간입니다. 모두가 건강하고 즐겁게 사용할 수 있는 공간을 만들기 위해 함께 노력해주세요.<br><br>
							
							커뮤니티 가이드라인은 서비스를 안전하게 유지하고 보호하기 위해 만들어진 정책입니다.<br>
							KREAM을 사용하면 이 가이드라인과 이용약관에 동의하게 됩니다. 이 가이드라인을 위반하는<br>
							경우 콘텐츠가 삭제되거나, 계정이 비활성화되는 등의 제재를 받을 수 있습니다.<br><br>
							</p>
							
						</div>
					</div>




					<div class="menu_box">
						<strong class="menu_title">고객지원</strong>
						<ul class="menu_list">
							<li class="menu_item"><a href="/shop/notice" class="menu_link">공지사항</a></li>
							<li class="menu_item"><a href="#" target="_blank"
								class="menu_link">서비스 소개</a></li>
							<li class="menu_item"><a href="/shop/shopmap" target="_self"
								class="menu_link">스토어 안내</a></li>
							<li class="menu_item"><a href="#" target="_blank"
								class="menu_link">판매자 방문접수</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="corporation_area">
				<ul class="term_list">
					<li class="term_item"><a href="/shop/introduce"
						target="_blank" rel="noopener noreferrer" class="term_link">회사소개</a></li>
					<li class="term_item"><a href="#" target="_blank"
						rel="noopener noreferrer" class="term_link">인재채용</a></li>
					<li class="term_item" style="display: none;"><a href="#"
						target="_blank" rel="noopener noreferrer" class="term_link">제휴제안</a></li>
					<li class="term_item"><a href="/shop/TermsOfService"
						class="term_link">이용약관</a></li>
					<li class="term_item privacy"><a href="/shop/PrivacyPolicy"
						class="term_link">개인정보처리방침</a></li>
				</ul>
				<br>
				<div class="footer_sns">
					<div class="sns_box">
						<a href="#" aria-label="인스타그램" class="sns"
							style="font-size: 21px;"><i class="bi bi-instagram"></i></a> <a
							href="#" aria-label="페이스북" class="sns" style="font-size: 21px;"><i
							class="bi bi-facebook"></i></a> <a href="#" aria-label="깃허브"
							class="sns" style="font-size: 21px;"><i class="bi bi-github"></i></a>
					</div>
				</div>
				<br>
				<div class="business_info">
					<div class="info_list">
						<dl class="info_item">
							<dt class="business_title">
								NUBE 주식회사 · 대표 김김김<br>사업자등록번호 : 000-00-00000 <a href="#">사업자정보확인</a><br>통신판매업
								: 제 0000-서울종로A-0000호<br>사업장소재지 : 서울시 종로구 돈화문로 26 단성 골드 빌딩
								4층<br>호스팅 서비스 : 네이버 클라우드 ㈜
							</dt>
						</dl>
					</div>
				</div>
			</div>
			<div class="notice_area">
				<p class="notice">NUBE(주)는 통신판매 중개자로서 통신판매의 당사자가 아닙니다. 본 상품은
					개별판매자가 등록한 상품으로 상품, 상품정보, 거래에 관한 의무와 책임은 각 판매자에게 있습니다. 단, 이용약관 및
					정책, 기타 거래 체결 과정에서 고지하는 내용 등에 따라 검수하고 보증하는 내용에 대한 책임은 NUBE(주)에 있습니다.</p>
				<p class="copyright">© NUBE Corp.</p>
			</div>
		</div>
	</div>
	<script>
		// 모달 열기 함수
		function openModal(modalId) {
			document.getElementById(modalId).style.display = "block";
		}

		// 모달 닫기 함수
		function closeModal(modalId) {
			document.getElementById(modalId).style.display = "none";
		}

		// 각 메뉴 항목과 모달 창 연결
		document.getElementById("openInspectionCriteria").addEventListener(
				"click", function() {
					openModal("modalInspectionCriteria");
				});
		document.getElementById("closeInspectionCriteria").addEventListener(
				"click", function() {
					closeModal("modalInspectionCriteria");
				});

		document.getElementById("openUsagePolicy").addEventListener("click",
				function() {
					openModal("modalUsagePolicy");
				});
		document.getElementById("closeUsagePolicy").addEventListener("click",
				function() {
					closeModal("modalUsagePolicy");
				});

		document.getElementById("openPenaltyPolicy").addEventListener("click",
				function() {
					openModal("modalPenaltyPolicy");
				});
		document.getElementById("closePenaltyPolicy").addEventListener("click",
				function() {
					closeModal("modalPenaltyPolicy");
				});

		document.getElementById("openCommunityGuidelines").addEventListener(
				"click", function() {
					openModal("modalCommunityGuidelines");
				});
		document.getElementById("closeCommunityGuidelines").addEventListener(
				"click", function() {
					closeModal("modalCommunityGuidelines");
				});
		// 내용 보기/숨기기 함수
		function toggleContent(contentId, arrowId) {
			var content = document.getElementById(contentId);
			var arrow = document.getElementById(arrowId);

			if (content.style.display === "none"
					|| content.style.display === "") {
				content.style.display = "block";
				// 화살표 아이콘을 "위로" 화살표로 변경
				arrow.classList.remove("bi-chevron-down");
				arrow.classList.add("bi-chevron-up");
			} else {
				content.style.display = "none";
				// 화살표 아이콘을 "아래로" 화살표로 변경
				arrow.classList.remove("bi-chevron-up");
				arrow.classList.add("bi-chevron-down");
			}
		}
	</script>
	<script>
		document.querySelectorAll('.category-link').forEach(function(link) {
			link.addEventListener('click', function(event) {
				event.preventDefault(); // 기본 링크 이벤트를 취소

				// 클릭한 항목의 data-category 속성 값을 가져옴
				var category = link.getAttribute('data-category');

				// 해당 항목의 상세 내용을 표시
				displayCategoryDetails(category);
			});
		});

		// 해당 항목의 상세 내용을 표시하는 함수
		function displayCategoryDetails(category) {
			// 여기에서 각 항목에 대한 상세 내용을 설정합니다.
			var detailText = '';

			switch (category) {
			case '신발':
				detailText = '<strong>[업데이트] 2021/11/29 월 <br></strong><strong>[적용일시] 2021/12/03 금 00:00 체결 건 부터</strong>  <br><br> KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br> <span style="color:red;">※ 신발 거래 관련 주의사항 KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다</span>.<br><br><span style="color:red;">제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다. 단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)</span><br><br>KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>＊  제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br>＊  도장, 마킹 등의 제조사 또는 판매처에서 진행되는 사항 <br><br> ＊  검수 중 발생할 수 있는 사항 (속지, 슈트리 손상 등) <br><br>＊ 택택배 개봉 또는 적재 및 상품 이동 중 발생할 수 있는 사항 (칼자국, 박스 눌림, 이염 등) <br><br> ＊  상품택, 구성품 등의 고리 누락/이탈 <br><br>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다. <br>  <br>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.<br><br>';
				break;
			case '아우터상의하의':
				detailText = '<strong>[업데이트] 2021/12/06 월<br> </strong><strong>[적용일시] 2021/12/10 금 00:00 체결 건 부터</strong><br><br>   KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br> 회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br><span style="color:red;">※ 아우터 · 상의 · 하의 거래 주의사항 KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다<br><br>  제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)<br><br> KREAM에서 검수를 진행하는 모든 제품은 검수 과정 중 밀봉 및 실링된 포장을 개봉합니다.<br><br>판매자 - 판매하신 제품의 검수를 위해 제품의 밀봉 및 실링은 모두 개봉되며 검수 탈락되어 상품이 반송될 경우 포장이 개봉된 상태로 배송됩니다.<br><br> 구매자 - 검수 진행 중 밀봉 및 실링은 모두 개봉되며, KREAM 패키지로 포장되어 발송해 드립니다.<br><br> * 기존 제품의 오리지널 폴리백의 경우 포함되지 않을 수 있습니다.</span><br><br> KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>상품택, 구성품 등의 고리 누락/이탈<br><br>제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br><br>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.<br><br>';

				break;
			case '가방시계지갑패션잡화':
				detailText = '<strong>[업데이트] 2022/08/12 금<br></strong><strong>[적용일시] 2022/08/19 금 00:00 체결 건 부터</strong><br><br> KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br>  회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br>  <span style="color:red;">※ 가방 · 시계 · 지갑 · 패션잡화 거래 주의사항  KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br><br> 제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다. 단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)<br><br></span> KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>  ＊  상품택, 구성품 등의 고리 이탈<br><br> ＊  제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br> 고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br><br> KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.<br><br>   <table> <tr><th>구분</th><th>불합격</th><th>구매자의사 확인</th><th>합격</th></tr><tr><td>모조품/가품 상품, 박스, 구성품 등</td><td>○</td><td>-</td><td>-</td></tr><br><br><tr> <td>손상/오염/사용감</td><td>○</td><td>-</td><td>-</td> </tr><tr><td>상품 불일치</td><td>○</td><td>-</td><td>-</td></tr><tr><td>사이즈 불일치 (제품라벨 기재 사이즈 기준)</td><td>○</td><td>-</td><td>-</td></tr><tr><td>기본 구성품 누락 (스트랩, 세컨백, 브로치 등)</td><td>○</td><td>-</td><td>-</td></tr> <table><br><br>※ 손상/오염/사용감 판정의 경우 사용으로 인한 소재 변형, 오염, 주름, 스크래치 등의 기준을 종합하여 검수원과 검수센터 책임자의 최종 판단하에 결정하게 됩니다.';

				break;
			case '테크':
				detailText = '<strong>[업데이트] 2023/02/21 화<br></strong><strong>[적용일시] 2023/02/28 화 00:00 체결 건 부터</strong><br><br>KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br><span style="color:red;">※ 전자기기 상품 거래 관련 주의사항KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br><br>제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)<br><br>실링/밀봉 패키지 개봉 시 가치가 하락할 수 있는 상품의 경우 내용물은 검수하지 않습니다.상품 정보 확인, 박스 상태 점검 및 재포장 흔적 유무에 대한 다방면 검수가 진행됩니다.<br><br>미사용 상태 유지를 위해 정상작동 여부는 확인이 불가합니다.</span><br><br>KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며, 이로 인한 구매취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>유통 및 보관과정에서 발생할 수 있는 실링의 변형 혹은 교체<br><br>제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br><br>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.<br><br>';
				break;
			case '뷰티컬렉터블캠핑가구리빙':
				detailText = '<strong>[업데이트] 2022/06/24 금<br></strong><strong>[적용일시] 2022/07/01 금 00:00 체결 건 부터</strong><br><br> KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br><span style="color:red;">※ 뷰티 · 컬렉터블 · 캠핑 · 가구/리빙 거래 주의사항 KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다. 단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)<br><br>실링/밀봉 패키지 개봉 시 가치가 하락할 수 있는 상품의 경우 내용물은 검수하지 않습니다.</span><br><br>KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>유통 및 보관과정에서 발생할 수 있는 실링의 변형 혹은 교체<br><br>제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br><br>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.<br><br>';
				break;
			case '프리미엄시계':
				detailText = '<strong>[업데이트] 2021/12/06 월<br></strong><strong>[적용일시] 2021/12/10 금 00:00 체결 건 부터</strong><br><br>KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br>* 구매처에서 수령한 뒤 바로 판매하신 새상품이더라도 당사 검수 기준에 따라 구매자의 의사를 확인할 수 있습니다.<br><br><span style="color:red;">※ 시계 거래 관련 주의사항KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br><br>제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)</span><br><br>KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br><br>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.';
				break;
			case '프리미엄가방':
				detailText = '<strong>[업데이트] 2022/06/24 금<br></strong><strong>[적용일시] 2022/07/01 금 00:00 체결 건 부터</strong><br><br>KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.<br><br>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.<br><br>	* 구매처에서 수령한 뒤 바로 판매하신 새상품이더라도 당사 검수 기준에 따라 구매자의 의사를 확인할 수 있습니다.<br><br>	<span style="color:red;">※ 가방 거래 관련 주의사항KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.<br><br>제품 기능에 관한 사항이나 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.단, 제조업체의 A/S 여부는 보장하지 않습니다. (이용약관 제22조 3항 참고)</span><br><br>KREAM의 검수기준으로 고지된 사항 이외 아래와 같이 제조사에서 불량으로 인정하지 않는 기준, 또는 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며,이로 인한 구매 취소는 불가하므로 신중한 거래 부탁드립니다.<br><br>제조공정, 유통과정 또는 소재 특성 상 발생할 수 있는 사항<br><br>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 검수센터 책임자의 최종 판단 하에 결정하게 됩니다.<br><br>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.<br><br> ';
				break;
			// 추가적인 카테고리에 대한 내용을 여기에 추가
			default:
				detailText = '해당 카테고리의 상세 내용이 준비되지 않았습니다.';
			}

			// 상세 내용을 모달 창에 표시
			var detailElement = document.getElementById(
					'modalInspectionCriteria').querySelector(
					'.category-content');
			detailElement.innerHTML = '<p>' + detailText + '</p>';
		}
	</script>
	<script>
		// 이용정책 모달 열기
		function openUsagePolicyModal() {
			var modal = document.getElementById("usagePolicyModal");
			modal.style.display = "block";
		}

		// 이용정책 모달 닫기
		function closeUsagePolicyModal() {
			var modal = document.getElementById("usagePolicyModal");
			modal.style.display = "none";
		}

		// 패널티 정책 보기/숨기기
		function togglePenaltyPolicy() {
			var policy = document.getElementById("penaltyPolicy");
			if (policy.style.display === "none" || policy.style.display === "") {
				policy.style.display = "block";
			} else {
				policy.style.display = "none";
			}
		}
	</script>



</body>
</html>
