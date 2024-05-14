<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<title>FlexStart Bootstrap Template - Index</title>
	<meta content="" name="description">

	<meta content="" name="keywords">

	<!-- Favicons -->
	<link href="/assets/img/favicon.png" rel="icon">
	<link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="/assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
	<link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	<!-- Template Main CSS File -->
	<link href="/assets/css/style.css" rel="stylesheet">
	<script src="/assets/js/jquery-3.6.0.min.js"></script>
	<script src="/assets/js/webgazer.js"></script>

	<!-- =======================================================
    * Template Name: FlexStart - v1.9.0
    * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
	<style>
		.services{
			height: 55%;
			margin: 0px;
			padding: 0px;
		}

		img{
			display: block;
			margin: auto;
			margin-top: 10px;
			margin-bottom: 20px;
		}


	</style>

	<script type="text/javascript">
		window.onload = webgazer.setGazeListener(function (data, elapsedTime) {

			if (data == null) {
				return;
			}

			var xprediction = parseInt(data.x); //these x coordinates are relative to the viewport

			var yprediction = parseInt(data.y); //these y coordinates are relative to the viewport

			var LBlink = String(data.eyeFeatures.left.blink);
			var RBlink = String(data.eyeFeatures.right.blink);

			var blink = "false";
			if (LBlink === "true" && RBlink === "true") {
				blink = "true";
			}

			const box01 = document.getElementById("box01");
			let box01_top = parseInt(box01.getBoundingClientRect().top);
			let box01_bottom = parseInt(box01.getBoundingClientRect().bottom);
			let box01_left = parseInt(box01.getBoundingClientRect().left);
			let box01_right = parseInt(box01.getBoundingClientRect().right);

			const box02 = document.getElementById("box02");
			let box02_top = parseInt(box02.getBoundingClientRect().top);
			let box02_bottom = parseInt(box02.getBoundingClientRect().bottom);
			let box02_left = parseInt(box02.getBoundingClientRect().left);
			let box02_right = parseInt(box02.getBoundingClientRect().right);

			const box03 = document.getElementById("box03");
			let box03_top = parseInt(box03.getBoundingClientRect().top);
			let box03_bottom = parseInt(box03.getBoundingClientRect().bottom);
			let box03_left = parseInt(box03.getBoundingClientRect().left);
			let box03_right = parseInt(box03.getBoundingClientRect().right);

			const box04 = document.getElementById("box04");
			let box04_top = parseInt(box04.getBoundingClientRect().top);
			let box04_bottom = parseInt(box04.getBoundingClientRect().bottom);
			let box04_left = parseInt(box04.getBoundingClientRect().left);
			let box04_right = parseInt(box04.getBoundingClientRect().right);

			const box05 = document.getElementById("box05");
			let box05_top = parseInt(box05.getBoundingClientRect().top);
			let box05_bottom = parseInt(box05.getBoundingClientRect().bottom);
			let box05_left = parseInt(box05.getBoundingClientRect().left);
			let box05_right = parseInt(box05.getBoundingClientRect().right);

			const box06 = document.getElementById("box06");
			let box06_top = parseInt(box06.getBoundingClientRect().top);
			let box06_bottom = parseInt(box06.getBoundingClientRect().bottom);
			let box06_left = parseInt(box06.getBoundingClientRect().left);
			let box06_right = parseInt(box06.getBoundingClientRect().right);


			if (box01_left <= xprediction && xprediction <= box01_right && box01_top <= yprediction && yprediction <= box01_bottom && blink === "true") {
				location.href = "https://webchat.shop";
			}

			if (box02_left <= xprediction && xprediction <= box02_right && box02_top <= yprediction && yprediction <= box02_bottom && blink === "true") {
				location.href = "/mypage/profiles";
			}

			if (box03_left <= xprediction && xprediction <= box03_right && box03_top <= yprediction && yprediction <= box03_bottom && blink === "true") {
				location.href = "/sentence/text";
			}

			if (box04_left <= xprediction && xprediction <= box04_right && box04_top <= yprediction && yprediction <= box04_bottom && blink === "true") {
				location.href = "/diary/diaryCheck";
			}

			if (box05_left <= xprediction && xprediction <= box05_right && box05_top <= yprediction && yprediction <= box05_bottom && blink === "true") {
				location.href = "/sentence/painting";
			}

			if (box06_left <= xprediction && xprediction <= box06_right && box06_top <= yprediction && yprediction <= box06_bottom && blink === "true") {
				let audio = new Audio("/assets/mp3/ball.mp3");
				audio.play();
				 location.href = "/user/sendMessage";
			}


			//console.log(elapsedTime); //elapsed time is based on time since begin was called
		}).begin();
	</script>

</head>
<body>


<div id="home" style="height: 80px; padding-bottom: 108px;"><img src="/assets/img/main.jpg"></div>
<main id="main">

	<!-- ======= Services Section ======= -->
	<section id="services" class="services">

		<div class="container aos-init aos-animate" data-aos="fade-up">



			<div class="row gy-3">

				<div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
					<div id="box01" class="service-box blue">
						<div><img src="/assets/img/video.png"></div>
						<p><br><br></p>
						<a href="https://webchat.shop" class="read-more"><h3>화상채팅</h3></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
					<div id="box02" class="service-box blue">
						<div><img src="/assets/img/user.png"></div>
						<p><br><br></p>
						<a href="/mypage/profiles" class="read-more"><h3>마이페이지</h3></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
					<div id="box03" class="service-box blue">
						<div><img src="/assets/img/write.png"></div>
						<p><br><br></p>
						<a href="/sentence/text" class="read-more"><h3>사용자문장</h3></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
					<div id="box04" class="service-box blue">
						<div><img src="/assets/img/diary.png"></div>
						<p><br><br></p>
						<a href="/diary/diaryCheck" class="read-more"><h3>일기</h3></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
					<div id="box05" class="service-box blue">
						<div><img src="/assets/img/picture.png"></div>
						<p><br><br></p>
						<a href="/sentence/painting" class="read-more"><h3>그림문장</h3></a>
					</div>
				</div>

				<div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
					<div id="box06" class="service-box blue">
						<div><img src="/assets/img/bell.png"></div>
						<p><br><br></p>
						<a href="#" class="read-more"><h3>긴급벨</h3></a>
					</div>
				</div>
			</div>
		</div>


	</section><!-- End Services Section -->

</main>


</body>
</html>