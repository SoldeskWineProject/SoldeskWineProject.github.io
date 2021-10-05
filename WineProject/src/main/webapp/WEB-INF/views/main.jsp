<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML>
<!--
	Big Picture by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>WINE EASY</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="assets/css/scroll.css" />
	</head>
	<body class="is-preload">

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
			
			<div class="wrap">
        <div id="subNav">
            <ul>
                <li><a href="#intro">처음</a></li>
                <li><a href="#one">소개</a></li>
                <li><a href="#two">구독서비스</a></li>
                <li><a href="#work">와인판매</a></li>
                <li><a href="#contact">QnA</a></li>
            </ul>
        </div><!-- #subNav end-->
        </div>
      
       
    

		<!-- Intro -->
			<section id="intro" class="main style1 dark fullscreen">
				<div class="content">
					<header>
						<h2>WINE EASY</h2>
					</header>
					<h4>Welcome to WINE EASY</h4><br />
					<h5>소물리에가 당신의 와인을 찾아드립니다</h5>
					<footer>
						<a href="#one" class="button style2 down">More</a>
					</footer>
				</div>
			</section>

		<!-- One -->
			<section id="one" class="main style2 right dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>소개</h2>
					</header>
					<h3>구독을 하시면 실력있는 소물리에가 당신의<br />
					 와인을 감별해드립니다 해주세요.</h3>
				</div>
				<a href="#two" class="button style2 down anchored">Next</a>
			</section>

		<!-- Two -->
			<section id="two" class="main style2 left dark fullscreen">
				<div class="content box style2">
					<header>
						<h2>구독서비스</h2>
					</header>
					
					<h3>
					당신만의 구독서비스
					정기적으로 집에 찾아오는 와인
					당신도 모르는 당신의 취향을 찾아드립니다
					</h3>
<!-- 					<p>초급 월 2회 99,000원</p><br />
					<p>중급 월 2회 + 와인시음회 199,000원</p><br />
					<p>고급 월 2회 + 와인시음회 499,000원</p><br />
					<p>1회상담 39,800원</p><br />
					<p>시음회 참여권 30,000원</p><br /> -->
				</div>
				<a href="#work" class="button style2 down anchored">Next</a>
			</section>

		<!-- Work -->
			<section id="work" class="main style3 primary">
				<div class="content">
					<header>
						<h2>와인판매</h2>
						<h3>마음에 드는 와인을 최고의 가격에 가져가세요</h3>
					</header>

					<!-- Gallery  -->
						<!-- 이달의 와인 -->
						<div class="gallery">
							<article class="from-left">
								<a href="images/fulls/01.jpg" class="image fit"><img src="images/thumbs/01.jpg" title="The Anonymous Red" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/02.jpg" class="image fit"><img src="images/thumbs/02.jpg" title="Airchitecture II" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/03.jpg" class="image fit"><img src="images/thumbs/03.jpg" title="Air Lounge" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/04.jpg" class="image fit"><img src="images/thumbs/04.jpg" title="Carry on" alt="" /></a>
							</article>
							<article class="from-left">
								<a href="images/fulls/05.jpg" class="image fit"><img src="images/thumbs/05.jpg" title="The sparkling shell" alt="" /></a>
							</article>
							<article class="from-right">
								<a href="images/fulls/06.jpg" class="image fit"><img src="images/thumbs/06.jpg" title="Bent IX" alt="" /></a>
							</article>
						</div>

				</div>
			</section>

		<!-- Contact -->
			<section id="contact" class="main style3 secondary">
				<div class="content">
					<header>
						<h2>무엇이든물어보세요</h2>
						<!-- 관리자한테 질문 관리자는 관리자페이지에서 그거에 대한 답변 주기 -->
					</header>
					<div class="box">
						<form method="post" action="#">
							<div class="fields">
								<div class="field half"><input type="text" name="name" placeholder="Name" /></div>
								<div class="field half"><input type="email" name="email" placeholder="Email" /></div>
								<div class="field"><textarea name="message" placeholder="Message" rows="6"></textarea></div>
							</div>
							<ul class="actions special">
								<li><input type="submit" value="Send Message" /></li>
							</ul>
						</form>
					</div>
				</div>
			</section>

		<!-- Footer -->
		<c:import url="/WEB-INF/views/include/bottom_info.jsp" />

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.poptrox.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/scroll.js"></script>
			
			
			

	</body>
</html>