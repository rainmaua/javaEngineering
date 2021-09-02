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
<script>
	function prodChk(){
		var chk = document.getElementsByName("prodCk");
		var hddchk = document.getElementsByName("cartPrice");
		var cnt = 0;
		var totalPrice = 0;
		for(var i = 0; i < chk.length ; i++){
			if(chk[i].checked == true){
				cnt++;
				totalPrice += Number(hddchk[i].value);
			}
		}
		document.getElementById("prodCnt").innerHTML= cnt ;
		document.getElementById("totalPrice").innerHTML = totalPrice;
	} 
	function checkQty(cartQty,prodNo,prodPrice){
		if(cartQty > 1){
			location.href="goodsCartQtyDown?prodNo="+prodNo+"&prodPrice="+prodPrice;
		}else{
			alert("최소구매 수량은 1이어야 합니다.");
		}
	}
</script>
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
				<h1>장바구니 리스트 </h1>
			</div>

		<!-- Main -->
			<section id="main" class="wrapper">
				<div class="inner">
					<div class="content">
						<header>
							<h2>장바구니 리스트</h2>
						</header>
						<p>
						<form action="prodBuy" method="get" >
							<table width = "800" border="1">
								<c:set var="total" value="0"/>
							    <tr><td>이미지</td><td>상품명</td><td>수량</td><td>단가</td><td>적용금액</td></tr>
							<c:forEach items="${list }" var="productCartDTO" >
								<tr><td>
										<input type="checkbox" value="${productCartDTO.cartDTO.prodNo }" 
											name="prodCk"  onchange ="prodChk();" checked />
										<input type="hidden" value="${productCartDTO.cartDTO.cartPrice }" 
											name="cartPrice" />
										<img src="../product/upload/${productCartDTO.productDTO.prodImage.split(',')[0] }" />
									</td>
									<td>${productCartDTO.productDTO.prodName }</td>
									<td align ="center"><a href="javascript:checkQty('${productCartDTO.cartDTO.cartQty }',
																					'${productCartDTO.cartDTO.prodNo }',
																					'${productCartDTO.productDTO.prodPrice }');">-</a>&nbsp;&nbsp;&nbsp; ${productCartDTO.cartDTO.cartQty }
										&nbsp;&nbsp;&nbsp; <a href="cartAdd?prodNo=${productCartDTO.cartDTO.prodNo }
															&cartQty=1&prodPrice=${productCartDTO.productDTO.prodPrice }
															&catNum=0">+</a></td>
									<td>${productCartDTO.productDTO.prodPrice }</td>
									<td>${productCartDTO.cartDTO.cartPrice }</td>
								</tr>
								<c:set var="total" value="${total + productCartDTO.cartDTO.cartPrice }"/>
							</c:forEach>
								<tr><td colspan="5" align = "right">
										상품수 : <span id="prodCnt">${list.size() }</span><br />
										전체 금액 : <span id="totalPrice">${total }</span><br />
									</td></tr>
								<tr><td colspan="5" align = "center">
										<input type="submit" value="구매하기"	/>
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