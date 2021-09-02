<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
					<li><a href="../main">Home</a></li>
					<li><a href="../emp/empList">직원정보 리스트</a></li>
					<li><a href="../member/memList">회원 정보리스트</a></li>
					<li><a href="../prod/prodList">상품 정보 리스트</a></li>
					<li><a href="../sales/salesList">판매 현황</a></li>
					<li><a href="../notice/noticeList">공지사항 리스트</a></li>
				</ul>
			</nav>

		<!-- Heading -->
			<div id="heading" >
				<h1>상품 수정</h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<header>
							<h2>상품 수정</h2>
						</header>
						<p>
						<form action="prodModifyOk" method="post" >
							<input type="hidden" name="prodNo" value="${dto.prodNo }" />
							<table border = 1>
								<tr><th>상품번호</th>
									<td>${dto.prodNo }</td></tr>
								<tr><th>이름</th>
									<td><input type="text" name="prodName" value="${dto.prodName }"/></td></tr>
								<tr><th>가격</th>
									<td><input type="number" name="prodPrice" value="${dto.prodPrice }"
										 min=0 , step="1" value="0"/></td></tr>
								<tr><th>설명</th>
									<td><textarea rows="6" cols="30" name="prodInfo">${dto.prodInfo }</textarea></td></tr>
								<tr><td colspan="2" align="center">
									<input type="submit" value="상품 수정"/>
									<input type="button" value="상품 삭제" 
										onclick="javascript:location.href='prodDel?prodNo=${dto.prodNo }'"/>
									<input type="button" onclick="javascript:history.back();" 
										value="리스트"/>
									</td></tr> 
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