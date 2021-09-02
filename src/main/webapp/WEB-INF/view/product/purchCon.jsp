<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<h1>주문 확인</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<header>
							<h2>주문 확인</h2>
						</header>
						<p>
							<table width = "800" border ="1">
								<tr><th>주문일자/결제번호</th><th colspan="2">상품명/주문번호</th>
								    <th>주문상태</th></tr>
							<c:forEach items="${list }" var="dto">	
								<tr><td>${dto.purchDate } / ${dto.payNo }</td>
									<td rowspan="2">
									<img width="100" src="../product/upload/${dto.prodImage.split(',')[0] }" />
									</td>
									<td rowspan="2">
										<a href="prodInfo?prodNo=${dto.prodNo}">${dto.prodName }</a> / ${dto.purchNo }</td>
									<td rowspan="2">
										<c:if test="${dto.payNo == null }">
											<a href="paymentOk?purchNo=${dto.purchNo}&payPrice=${dto.purchTotal}">주문하기</a></c:if>
										<c:if test="${dto.payNo != null }">주문완료<br />
											<c:if test="${dto.reviewContent == null}">
												<a href="goodsReview?purchNo=${dto.purchNo }
																	&prodNo=${dto.prodNo}
																	&prodName=${dto.prodName }">리뷰쓰기</a></c:if>
											<c:if test="${dto.reviewContent != null}">
												<a href="goodsReviewUpdate?purchNo=${dto.purchNo }
																	&prodNo=${dto.prodNo}
																	&prodName=${dto.prodName }">리뷰수정</a></c:if>
										</c:if>	
									</td></tr>
								<tr><td>결제금액 : ${dto.purchTotal }</td></tr>
							</c:forEach>
							</table>					
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