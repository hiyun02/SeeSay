<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/arrow.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: FlexStart - v1.9.0
    * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
    <style>
        .services {
            height: 55%;
            margin: 0px;
            padding: 0px;
        }

        img {
            display: block;
            margin: auto;
            margin-top: 10px;
            margin-bottom: 20px;
        }


    </style>

    <script src="/assets/js/jquery-3.6.0.min.js"></script>
    <script src="/assets/js/webgazer.js"></script>
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



            if (box01_left <= xprediction && xprediction <= box01_right && box01_top <= yprediction && yprediction <= box01_bottom && blink === "true") {
                location.href = "/diary/diaryWrite";
            }

            if (box02_left <= xprediction && xprediction <= box02_right && box02_top <= yprediction && yprediction <= box02_bottom && blink === "true") {
                location.href = "/diary/diaryList";
            }


            const ring = document.getElementById("ring");
            let ring_top = parseInt(ring.getBoundingClientRect().top);
            let ring_bottom = parseInt(ring.getBoundingClientRect().bottom);
            let ring_left = parseInt(ring.getBoundingClientRect().left);
            let ring_right = parseInt(ring.getBoundingClientRect().right);

            if (ring_left <= xprediction && xprediction <= ring_right && ring_top <= yprediction && yprediction <= ring_bottom && blink === "true") {
                let audio = new Audio("/assets/mp3/ball.mp3");
                audio.play();
                location.href = "/user/sendMessage";
            }

            const home = document.getElementById("home");
            let home_top = parseInt(ring.getBoundingClientRect().top);
            let home_bottom = parseInt(ring.getBoundingClientRect().bottom);
            let home_left = parseInt(ring.getBoundingClientRect().left);
            let home_right = parseInt(ring.getBoundingClientRect().right);

            if (home_left <= xprediction && xprediction <= home_right && home_top <= yprediction && yprediction <= home_bottom && blink === "true") {
                console.log("home clicked");
                location.href="/main/patient";
            }


            //console.log(elapsedTime); //elapsed time is based on time since begin was called
        }).begin();
    </script>

</head>

<body>

<div id="home" onclick="location.href='/main/patient';" style="height: 80px; padding-bottom: 300px;"><img src="/assets/img/main.jpg">
    <div class="thin-ui-arrow-left-button" style="float: right; padding-bottom: 5px">
        <span class="thin-ui-arrow-left-button-content">BACK</span>
    </div>
</div>
<main id="main">

    <!-- ======= Services Section ======= -->
    <section id="services" class="services" style="padding-left: 25%">

        <div class="container aos-init aos-animate" data-aos="fade-up">


            <div class="row gy-2">

                <div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                    <div id="box01" class="service-box blue">
                        <div><img src="/assets/img/write.png"></div>
                        <p><br><br></p>
                        <a href="/diary/diaryWrite" class="read-more"><h3>일기 작성</h3></a>
                    </div>
                </div>

                <div class="col-lg-4 col-md-5 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                    <div id="box02" class="service-box blue">
                        <div><img src="/assets/img/diary.png"></div>
                        <p><br><br></p>
                        <a href="/diary/diaryList" class="read-more"><h3>일기 확인</h3></a>
                    </div>
                </div>
            </div>

        </div>

    </section><!-- End Services Section -->


</main>

</body>
<footer>
    <div class="" id="ring" style="float: right; "><img src="/assets/img/ringbell.png"></div>

</footer>
</html>