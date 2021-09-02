<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% 	pageContext.setAttribute("br", "\n"); %>
<!DOCTYPE HTML>
<!--
	Industrious by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title>SUNRISE JEWELRY</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/agree.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="main">SUNRISE JEWELRY</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="main">Home</a></li>
					<li><a href="signin">Sign in</a></li>
					<li><a href="productGo">Product</a></li> 
					<c:if test="${!empty authInfo }">
						<!-- 관리자 -->
						<c:if test="${authInfo.grade != 1 }">
						<li><a href="emp/empList">직원정보 리스트</a></li>
						<li><a href="member/memList">회원 정보리스트</a></li>
						<li><a href="emp/empMyPage">직원마이페이지</a></li>
						<li><a href="prod/prodList">상품 정보 리스트</a></li>
						<li><a href="sales/salesList">판매 현황</a></li>
						<li><a href="notice/noticeList">공지사항 리스트</a></li>
						</c:if>
						<!-- 사용자 페이지 -->
						<c:if test="${authInfo.grade == 1 }">
						<li><a href="member/myInfo">마이페이지</a></li>
						<li><a href="prod/cartList">장바구니</a></li>
						<li><a href="prod/purchCon">주문확인</a></li>
						</c:if>
						<li><a href="logout">로그아웃</a></li>
					</c:if>
				</ul>
			</nav>

		<!-- Banner -->
			<section id="banner1">
				<div class="inner">
					</br>
					<h1 face="Optima" color="black"><center><font size="5">Sunrise Jewelry</font></center></h1>
				</div>
				<input type="image" src="images/banner1.jpg" width="100%" />
			</section>

		<!-- Highlights -->
			<section class="wrapper">
				<div class="inner">
					<div class="highlights">
					<c:forEach items="${prodList }" var="dto" varStatus="cnt">
						<section>
							<div class="content">
								<a href="prod/prodInfo?prodNo=${dto.prodNo }" >
									<span class="label">
									<img  width="200" alt="" src="product/upload/${dto.prodImage.split(',')[0] }" />
									</span>
									<h3>${dto.prodName }</h3>
									<p>${dto.prodPrice }원</p>
								</a>
							</div>
						</section>
					</c:forEach>
					</div>
				</div>
			</section>

		<!-- CTA -->
			<section id="cta" class="wrapper">
				<div class="inner">
					<h2 style="color:black">ABOUT</h2>
					<p style="color:black">Sunrise Jewelry is a fashion house based in Seoul, South Korea. Our mission is to design jewelries that would make you shine.  We believe customers associate our brands with high quality jewelry and an outstanding customer experience. Starting from jewelry items, Sunrise Jewelry aims to present READY TO WEAR items as our next project.</p>
				</div>
			</section>

		<!-- Testimonials -->
			<section class="wrapper">
				<div class="inner">
					<header class="special">
						<h2>공지사항</h2>
						<p></p>
					</header>
					<div class="testimonials">
					<c:forEach items="${nlist }" var="notice">
						<section>
							<div class="content">
								<blockquote>
									<p>${fn:replace(notice.noticeContent,br,"<br />") }</p>
								</blockquote>
								<div class="author">
									<div class="image">
										
									</div>
									<p class="credit">- <span><strong><a href="#">${notice.noticeTitle }</a></strong></span></p>
								</div>
							</div>
						</section>
					</c:forEach>
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
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>