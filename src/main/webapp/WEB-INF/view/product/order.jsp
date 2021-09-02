<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>Generic Page - Industrious by TEMPLATED</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../assets/css/agree.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="../main">Sunrise Jewelry</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<c:if test="${!empty authInfo }">
						<!-- 사용자 페이지 -->
						<c:if test="${authInfo.grade == 1 }">
						<li><a href="../member/memMyPage">마이페이지</a></li>
						<li><a href="../prod/cartList">장바구니</a></li>
						<li><a href="../prod/purchCon">주문확인</a></li>
						</c:if>
						<li><a href="../logout">로그아웃</a></li>
					</c:if>
				</ul>
			</nav>

		<!-- Heading -->
			<div id="heading" >
				<h1>주문서</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<header>
							<h2>주문서</h2>
						</header>
						<p>
						<h3>1. 주문상품 할인적용</h3>
						<table width="800" border="1">
							<tr><th colspan="2">상품정보</th><th>적용금액</th></tr>
						<c:set var="totalPrice" value="0" />
						<c:set var="proNums" value="" />
						<c:forEach items="${list }" var="productCartDTO">
							<tr><td><img src="../product/upload/${productCartDTO.productDTO.prodImage.split(',')[0] }" /></td>
								<td>${productCartDTO.productDTO.prodName }<br />
									단가 : ${productCartDTO.productDTO.prodPrice }원 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									${productCartDTO.cartDTO.cartQty }개
								</td>
								<td align="right">${productCartDTO.cartDTO.cartPrice }원</td></tr>
						<c:set var="totalPrice" value="${totalPrice + productCartDTO.cartDTO.cartPrice }" />
						<c:set var="proNums" value="${proNums += productCartDTO.cartDTO.prodNo += ','}" />
						</c:forEach>
							<tr><td colspan="3" align="right">최종 결제 금액<br />${totalPrice }원</td></tr>
						</table>
						</p>
						<hr />
						<h3>2. 배송지 정보 입력(＊필수입력)</h3>
						<p>
						<form action="goodsOrder"  method="post" >
						<input type="hidden" name="purchTotal" value="${totalPrice }" />
						<input type="hidden" name="prodNums" value="${proNums }" />
						<table width = "800">
							<tr><th>배송지 주소</th>
								<td><input type="text" name="purchAddr" /></td></tr>
							<tr><th>받는 사람</th>
								<td><input type="text" name="purchReceiver" /></td></tr>
							<tr><th>연락처</th>
								<td><input type="text" name="purchPhoneNumber" /></td></tr>
							<tr><th>주문 문자</th>
								<td><input type="text" name="purchMsg" /></td></tr>
							<tr><th colspan="2"><input type="submit" value="주문하기" /></th></tr>
						</table>
						</form>
						</p>
					</div>
				</div>
			</section>

		<!-- Footer -->
			<footer id="footer">
				<div class="inner">
					<div class="content">
						<section>
							<h3>INFORMATION</h3>
							<p> COMPANY . 주식회사 골드 | OWNER . 김이령 | CPO . 김미정 <br>BUSINESS LICENSE . 193-81-001x[사업자정보확인]<br>ORDER LICENSE . 제2015-서울종로-067x호 <br>ADDRESS . 서울특별시 종로구 가보자 빌딩 x층 <br>507호 썬라이즈 쥬얼리 <br>EMAIL . sunrisejewelry@gmail.com<br>COPYRIGHT ⓒ SUNRISE JEWELRY. ALL RIGHT RESERVED </p> 
							
						</section>
						<section>
							<h4>CUSTOMER CENTER</h4>
							<ul class="alt">
								<li><a href="#">TEL: 1800-9000</a></li>
								<li><a href="#">상담시간: AM 10:00 ~ PM 05:00</a></li>
								<li><a href="#">점심시간: PM 12:30 ~ PM 01:30</a></li>
								<li><a href="#">(토/일/공휴일 휴무)</a></li>
							</ul>
						</section>
						<section>
							<h4>SNS</h4>
							<ul class="plain">
								<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
								<li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
								<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
								<li><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
							</ul>
						</section>
					</div>
					<div class="copyright">
						&copy; Sunrise Jewelry. Photos <a href="https://www.davidyurman.com">DavidYurman</a>.
					</div>
				</div>
			</footer>
			
		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>

	</body>
</html>